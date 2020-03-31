# Z80 based, tripple timezone clock
This repository contains design files and source code for a clock project which uses a Z80 processor, and can display upto three different timezones at once.

All code is written in Z80 assembly, and can be assembled with the zasm assembler available at: https://k1.spdns.de/Develop/Projects/zasm/Distributions/. Other assemblers may work, perhaps with minor modification to the code.

The display is made up of three rows of eight 16-segment displays, and is driven by a shift register of 136 bits (128 for display segments plus 8 for the dot points of the displays.)

Within the clock is a [Texas Instruments BQ4845 Real Time Clock](http://www.ti.com/product/BQ4845). A backup battery maintains the time while the power is off. The RTC time and date is configured to represent UTC, and each timezone is then calculated as an offset from UTC, either positive or negative.

DIP switches allow the display to be configured to any combination of times and dates.

Three ROMs provide all of the non-volatile storage needs:

 1. App ROM contains the application code
 2. TZ ROM contains timezone information
 3. Char ROM contains data for displaying characters


## Source code structure/explanation
Assembly source files end with the `.s` extension. `.inc` files provide defines/equates and macros.

`clock.s` is the top source file, which includes a variety of `.inc` and other `.s` files to build up the entire application.

In no particular order:

`configr_app.s` implements an "application" of sorts which allows the user to configure the time and date of the RTC.

`clock_app.s` implements the clock functionality itself.

`c_lib.s` is an implementation of a couple of C style functions to copy blocks of memory and null terminated strings.

`ctc_isr.s` is where all of the Interrupt Service Routines for different CTC timer/counter channels lives.

`platform.inc` provides information about the memory locations and sizes - this was particularly important during development as I was using a custom serial loader (`serial_mon.s`) to transfer and execute code from RAM, and needed to define different memory locations and sizes based on whether the code was assembled for serial loading or not.

`clock.inc` provides a lot of detail about the clock hardware, such as the addresses of various I/O peripherals. Included are also a variety of macros that provide basic mutex and sempahore functionality, among others.

Other `.inc` files define setting for control registers of various peripherals.


## Hardware designs/schematics
Hardware is still a small work in progress, but is largely complete, correct, and at the very least is functional.

At time of writing, the following TODO list remains:

 - Modifications/corrections to RAM decoding logic and address lines to allow RAM to span the entire address range 0x6000-0x9FFF
 - Implementing a 555 timer based oscillator to drive the piezo speaker which could be used for alarms, beeps when pressing buttons, etc (currently it is hooked up to a pin of an output register, but this requires driving in software to perform the oscillation which is very intensive depending on the frequency)
 - Note 1 below

Otherwise, here are some lightweight descriptions of the schematic files:

`CPU board *.sch` contains the processor and all memories (RAM/ROMs), reset circuitry, oscillator, and power input.

`timer rtc io.sch` is a module which contains the RTC, CTC, and user interface inputs such as buttons and DIP switches. It also has the speaker. Please see note 1 below.

`display driver shift reg.sch` contains all of the shift registers to drive all display segments. In the current revision it implements a discrete parallel-load to serial output peripheral that allows the Z80 to write a byte and have it shifted out serially into the shift registers that drive the displays. I am intending to replace this with a CPLD based solution (probably an ATF150x device), and also replace the 74x595 shift registers with something more appropriate to drive LED segments.

`uard board.sch` contains an SIO peripheral which was used for serial loading of code and execution of RAM. Please see note 1 below.

There is currently no schematic for the display board itself, this is a work in progress.

Notes:
 1. There is currently a hardware conflict between the `timer rtc io` (CTC) and `uart board` (SIO) modules. The CTC was originally intended to be the only Z80 family peripheral in the clock, and the hardware was designed to set the bus direction to output when the Z80 attempts to read an interrupt vector. The SIO was added later, and was configured as the start of the interrupt daisy chain. Consequently, when the SIO generates an interrupt and the Z80 attempts to read the interrupt vector, the CTC will also attempt to output its vector at the same time. This resulted in some very eratic behaviour, so the SIO must be used in polled mode at present. A fix for this is on the cards, most likely beginning with a reversal of the interrupt daisy chain so that the CTC is the start of the interrupt daisy chain.
