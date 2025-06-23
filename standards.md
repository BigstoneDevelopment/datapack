---
title: Standards
layout: default
---
# Standards

**This file contains all the standards for components required to get it accepted into the datapack.**



# SECTION 1: PORTS
# Port Format
All ports will be named in this format:

`[DIR][TYPE]-[#PORTS][ROLE]`

### How the format works:

- **[DIR]** > Can be either an Input, Output, or Bidirectional port (Labelled I, O or B) Bidirectional port holes don't exist yet.
- **[TYPE]** > BIN (Binary) / HEX (Hexadecimal)
- **[#PORTS]** > The number of ports it has, as a number. If it only has 1 port, you don't have to include this tag! _(e.g. Just BIN instead of BIN-1)_
- **[ROLE]** > Most ports will be SD (Standard), but ports with specific roles will have different colors and have a different named tag. For example, HEX-STATE. If the port is SD you don't have to include this tag! _(e.g. just HEX instead of HEX-SD)_

# Port Types

- Each port would have a corresponding colored concrete block under it. 
- Locations of the port holes are in (X, Y), in which (1, 1) is the bottom left block on a 16x16 face looking from the side of a chunk. _(Clarification: Port HOLES, not the concrete position)_


### BIN
- **Color:** 🟥 Red Concrete
- **Location:** IBIN at (7, 2) – OBIN at (9, 2) 
- The default port. Used to connect redblocks together, and is the simplest port (as it does not preserve signal strength). These are made for speed.

### HEX
- **Color:** 🟦 Light Blue Concrete
- **Location:** IHEX at (5, 2) – OHEX at (11, 2)
- A more advanced port. They preserve the signal strength from the output of the previous block. Useful for HEX calculations.
- Recommended to have IHEX next to an IBIN to ensure compatibility with other redblocks (IBIN would set the input on that side to 15 or 0 to convert it to HEX)

### HEX-STATE
- **Color:** 🟩 Green Concrete
- **Location:** IHEX-STATE at (5, 4) – OHEX-STATE at (11, 4)
- (Under development) Used to check the state of a redblock which is currently doing an operation. The component can decide what signal strength each state is. If a component decides multiple states counts as the same value it should pulse when changing between them to indicate the state has changed (But try avoid having multiple states output the same thing). (Examples: A comparator could return the value of the state; an observer can "observe" the state to know if it has changed). You could use this output to make your bigstone circuit do certain things!

### ITEM PORTS COMING SOON
I need to check it out first to make sure this wiki is accurate ;) 
Please wait.

![Locations of each of the ports](https://raw.githubusercontent.com/CrazyH2/Bigstone/main/assets/port_locations.png)

# SECTION 2: NAMING SCHEME
When sharing a redblock, try to stick to this format:

`[Redblock name]
[Description here]

North: OHEX
South: IBIN, IHEX
East: IBIN
West: IHEX`

You could also represent this with a diagram, with colored arrows. Input arrows would point towards the block, output would point away from it. Here's the above example, this time as a diagram:
![Redblock diagram example](https://raw.githubusercontent.com/CrazyH2/Bigstone/main/assets/diagram_example.png)

_Last updated: 2025-06-23T12:23:30Z_
