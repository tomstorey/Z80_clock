# Z80 based, triple time zone clock
<img align="right" src="photo.jpg">
This repository contains design files and source code for a clock project which uses a Z80 processor, and can display upto three different time zones at once.

All code is written in Z80 assembly, and can be assembled with the zasm assembler available at:

https://k1.spdns.de/Develop/Projects/zasm/Distributions/

Other assemblers may work, perhaps with minor modification to the code.

The display is made up of three rows of eight 16-segment displays, and is driven by a shift register of 136 bits (128 for display segments plus 8 for the dot points of the displays) so that an entire row is driven all at once.

Within the clock is a [Texas Instruments BQ4845 Real Time Clock](http://www.ti.com/product/BQ4845). A backup battery maintains the time while the power is off. The RTC time and date is configured to represent UTC, and each time zone is then calculated as an offset from UTC, either positive or negative.

Three ROMs provide all of the non-volatile storage needs:

 1. App ROM contains the application code
 2. TZ ROM contains time zone information
 3. Char ROM contains data for displaying characters

The following table describes the address ranges covered by each of the memories:

|              | Start  | End    | Size |
| ------------ | ------:| ------:| ----:|
| **App ROM**  | 0x0000 | 0x5FFF |  24K |
| **RAM**      | 0x6000 | 0x9FFF |  16K |
| **TZ ROM**   | 0xC000 | 0xDFFF |   8K |
| **Char ROM** | 0xE000 | 0xFFFF |   8K |

DIP switches allow each row of the display to be configured to any time or date according to entries stored within the TZ ROM.


## Source code structure/explanation
Assembly source files end with the `.s` extension. `.inc` files provide defines/equates and macros.

`clock.s` is the top source file, which includes a variety of `.inc` and other `.s` files to build up the entire application.

Other files in no particular order:

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
Hardware designs are functional and complete. There are no PCB designs as the prototype hardware was built as rats nest on proto boards.

At time of writing, the following TODO list remains:

 - Determine best way to drive the speaker - there is a free CTC channel which could be used for this?

Otherwise, here are some lightweight descriptions of the schematic files:

`CPU board *.sch` contains the processor and all memories (RAM/ROMs), reset circuitry, oscillator, and power input.

`timer rtc io.sch` is a module which contains the RTC, a Z80 CTC peripheral, and user interface inputs such as buttons and DIP switches. It also has the speaker. The RTC also includes a watchdog reset function.

`display driver rev X.sch` contains all of the shift registers to drive all display segments on one row. Rev A implemented a discrete parallel-load to serial-output peripheral with 74HC595 shift registers for the drivers. Rev B changed the shift registers to TLC5916's (proper LED drivers) and also uses an ATF1502AS CPLD to implement the shift register logic. Both boards are functionally equivalent in that the CPU can simply OUT a byte and the shifter will automatically shift the byte out. Char ROM data may need to be inverted depending on which revision is in use - something I should probably make consistent, but notes are included in the char_rom.s file to help you figure that out in the mean time.

`uart board.sch` contains a Z80 SIO peripheral which was used for serial loading of code for execution from RAM. In a future revision I'll likely repurpose this to interface with a GPS module to perform time synchronisation to compensate for drift in the RTC.

There is currently no real schematic for the display board itself, this is a work in progress. I'll get around to it some day. :-)

## z80clock on MAME

A [MAME driver](https://github.com/mamedev/mame/blob/master/src/mame/drivers/z80clock.cpp)
to emulate for this project was added by
[Phill (@smf)](https://github.com/smf-) for his
[Using MAME as a development tool](https://www.meetup.com/london-retro-computing/events/282682483/)
presentation to the
[London Retro Computing Meetup](https://www.meetup.com/london-retro-computing/)

If you don't already have MAME get it from
[MAMEdev.org](https://www.mamedev.org/). The z80clock driver has been present
since MAME 0.239.

To run the driver:

```
mame z80clock -cart1 clock.rom -cart2 tz_rom.rom -cart3 char_rom.rom
```

Assuming the roms (in the `source` directory) are in the current directory
and `mame` is on the path.