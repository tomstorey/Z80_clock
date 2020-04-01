
# Z80 based, tripple timezone clock
This repository contains design files and source code for a clock project which uses a Z80 processor, and can display upto three different timezones at once.

All code is written in Z80 assembly, and can be assembled with the zasm assembler available at:

https://k1.spdns.de/Develop/Projects/zasm/Distributions/

Other assemblers may work, perhaps with minor modification to the code.

The display is made up of three rows of eight 16-segment displays, and is driven by a shift register of 136 bits (128 for display segments plus 8 for the dot points of the displays.)

Within the clock is a [Texas Instruments BQ4845 Real Time Clock](http://www.ti.com/product/BQ4845). A backup battery maintains the time while the power is off. The RTC time and date is configured to represent UTC, and each timezone is then calculated as an offset from UTC, either positive or negative.

DIP switches allow the display to be configured to any combination of times and dates.

Three ROMs provide all of the non-volatile storage needs:

 1. App ROM contains the application code
 2. TZ ROM contains timezone information
 3. Char ROM contains data for displaying characters

The following table describes the address ranges covered by each of the memories:

|              | Start  | End    | Size |
| ------------ | ------:| ------:| ----:|
| **App ROM**  | 0x0000 | 0x5FFF |  24K |
| **RAM**      | 0x6000 | 0x9FFF |  16K |
| **TZ ROM**   | 0xC000 | 0xDFFF |   8K |
| **Char ROM** | 0xE000 | 0xFFFF |   8K |



## Source code structure/explanation
Assembly source files end with the `.s` extension. `.inc` files provide defines/equates and macros.

`clock.s` is the top source file, which includes a variety of `.inc` and other `.s` files to build up the entire application.

Other files on no particular order:

`configr_app.s` implements an "application" of sorts which allows the user to configure the time and date of the RTC.

`clock_app.s` also implements an "application" of sorts, the clock itself.

`c_lib.s` is an implementation of a couple of C-esque functions to copy blocks of memory and null terminated strings.

`ctc_isr.s` is where all of the Interrupt Service Routines for the CTC timer/counter channels live.

`platform.inc` provides information about the memory locations and sizes - this was particularly important during development as I was using a custom serial loader (`serial_mon.s`) to transfer and execute code from RAM, and needed to define different memory locations and sizes based on whether the code was assembled for serial loading or not.

`clock.inc` provides a lot of detail about the clock hardware, such as the addresses of various I/O peripherals. Included are also a variety of macros that provide basic mutex and sempahore functionality, among others.

Other `.inc` files define setting for control registers of various peripherals.

### Software architecture notes
The software implements some rudimentary "task" infrastructure intended to make it more modular and easily maintainable.

To achieve this, some macros are provided for scheduling and descheduling "tasks" and "applications". Although they are essentially the same thing, I have two basic rules to differentiate them:

 - Tasks are scheduled and descheduled to run only when required
 - Applications should be scheduled and never descheduled

For example, the configr and clock tasks are considered two applications because they are scheduled when the clock starts up, and never technically descheduled, however, only one of them will "run" at any one time, which brings me to the next topic...

Basic locking and signalling infrastructure is also provided through some semaphore and mutex macros.

Semaphores can be used to signal one piece of code from another piece of code. A specific example of the use of semaphores in this clock is between the clock application and the per-minute ISR from the RTC. The clock app signals to the ISR that it wants to know when the per-minute interrupt has occurred, and the ISR reciprocates by signalling to the application that it has occurred. This is achieved through two semaphores: 1. for the application to signal it wants to know when an interrupt has occurred, 2. for the ISR to signal the interrupt has occurred. Other uses of semaphores include signalling to various tasks when they should run.

Mutexes are used to lock resouces so that only one piece of code may use them at any one time. A particular use of mutexes in this clock is to determine which application "owns the foreground", or in other words, who can write to display buffers and read button states. The first application to acquire the foreground mutex can then hold onto it for as long as it wants (usually until the user presses the Esc button to switch between the clock and the configr apps).

### Utilities

There are a couple of small Python based utilities included as well, which were used during development, and in conjunction with `serial_mon.s`:

`loader.py` is used to load a `.rom` (i.e. binary) file into RAM and optionally execute it. This tool was used heavily and has had the most development. Each time I would build a new version of the clock software I would hit the reset button and use this tool to load the code into RAM and execute it.

`execer.py` is essentially the execute portion of the above, and simply tells the serial monitor to jump to a certain address. Could be used after a reset to simply re-execute the code without having to reload it.

`sender.py` is used to send bytes, and was used mostly during development of the serial monitor itself.

`reader.py` was intended to provide an ability to read back a portion of memory, but is in an unknown state at this time and the matching functionality is not implemented in the current serial loader.

## Hardware designs/schematics
Hardware is still a small work in progress, but is largely complete, correct, and at the very least is functional.

There are no PCB designs as the prototype hardware was built as rats nest on proto boards.

At time of writing, the following TODO list remains:

 - Modifications/corrections to RAM decoding logic and address lines to allow RAM to span the entire address range 0x6000-0x9FFF
 - Implementing a 555 timer based oscillator to drive the piezo speaker which could be used for alarms, beeps when pressing buttons, etc (currently it is hooked up to a pin of an output register, but this requires driving in software to perform the oscillation which is very intensive depending on the frequency)
 - Note 1 below

Otherwise, here are some lightweight descriptions of the schematic files:

`CPU board *.sch` contains the processor and all memories (RAM/ROMs), reset circuitry, oscillator, and power input.

`timer rtc io.sch` is a module which contains the RTC, a Z80 CTC peripheral, and user interface inputs such as buttons and DIP switches. It also has the speaker. The RTC also includes a watchdog reset function. See note 1 below.

`display driver shift reg.sch` contains all of the shift registers to drive all display segments on one row. In the current revision it implements a discrete parallel-load to serial-output peripheral that allows the Z80 to OUT a byte and have it shifted serially into the shift registers that drive the displays. See note 2 below.

`uard board.sch` contains a Z80 SIO peripheral which was used for serial loading of code for execution from RAM. See note 1 below.

There is currently no schematic for the display board itself, this is a work in progress.

Notes:
 1. There is currently a hardware conflict between the `timer rtc io` (CTC) and `uart board` (SIO) modules. The CTC was originally intended to be the only Z80 family peripheral in the clock, and the hardware was designed to set the bus direction to output when the Z80 attempts to read an interrupt vector. The SIO was added later, and was configured as the start of the interrupt daisy chain. Consequently, when the SIO generates an interrupt and the Z80 attempts to read the interrupt vector, the CTC will also attempt to output its vector at the same time. This resulted in some very eratic behaviour, so the SIO must be used in polled mode at present. A fix for this is on the cards, most likely beginning with a reversal of the interrupt daisy chain so that the CTC is the start of the interrupt daisy chain.
 2. I intend to replace the discrete parallel-load shift register with a CPLD implementation, perhaps on something like an Atmel ATF150x device. I also intend to replace all of the 74x595 shift registers with something more appropriate for driving LEDs (and to save a few resistors...!)
