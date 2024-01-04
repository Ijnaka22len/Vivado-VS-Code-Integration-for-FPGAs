# Vivado-VS-Code-Integration-for-FPGAs

Leverage the VS Code terminal and Makefile for automating Vivado operations, encompassing synthesis, implementation, and bitstream generation, aiming to optimize the development workflow.

## Overview

This repository contains resources and instructions for streamlining FPGA development using Vivado, VS Code, Makefile, and various extensions/plugins on windows 10+.

## Prerequisites

Before getting started, ensure you have the following installed:

- [Vivado](https://www.youtube.com/watch?v=Lc2EEbZmlz0&ab_channel=let%27): FPGA design tool
- [VS Code](https://code.visualstudio.com/download): Integrated Development Environment
- [Chocolatey](https://chocolatey.org/install): Package manager for Windows (if applicable)
- Install Make using Chocolatey in windows CLI: choco install make
- [TerosHDL](https://terostechnology.github.io/terosHDLdoc/about/requirements.html): Extension for Vivado projects. 
- [Icarus Verilog & GTKWave](https://www.youtube.com/watch?v=jUYkYoYr8hs): Verilog simulator & Waveform viewer respectively.
- In VS Code, add the following extensions for enhanced functionality:
  1. **VCDrom** by Aliaksei Chapyzhenka: Extension for waveform visualization
  2. **TerosHDL** by Teros Technology: Streamlines Vivado project visualization and documentation.
  3. **waveTrace** by wavetrace: Extension facilitating waveform tracing.
 

## Setup

1. **Installing Required Tools:**

   - Follow the provided links or refer to the installation instructions in the [Installing Chocolatey video](https://www.youtube.com/watch?v=5TavcolACQY).
   - Use Chocolatey (if on Windows) or other package managers to install necessary tools.
   - Install VS Code extensions: Makefile Tools, TerosHDL, VCDrom, waveTrace.

2. **Environment Configuration:**
   - Add paths to Icarus Verilog and GTKWave in environmental variables.

3. **Usage:**

   - **Case 1: Synthesizing Verilog Code in VS Code**
   
     - Place the Makefile & Preferences in the project directory.
     - Create your Verilog `.v` file and testbench `_tb.v` in the same directory.
     - Add commands to the testbench file for waveform dumping.
     - Open VS Code terminal and run synthesis: `make onlySynthesis`
     - Use `make clean` to clear previous runs if necessary.
     - Set `USE_GTKWAVE=YES` in the Preferences file for automatic waveform visualization.

   - **Case 2: Automating Vivado Tasks**
   
     - Download Makefile & Preferences files provided in this repository.
     - Clone your project's repository and copy the downloaded files.
     - Run `make getHelp` to view available commands.
     - Ensure Makefile & Preferences files are copied to respective project folders.
     - Utilize VS Code as a text editor for Vivado with error checker extensions.
     - Use GitLab for project sharing and version control.
     - Leverage TerosHDL extensions for visualization and faster documentation.

## Contribution

Feel free to contribute by opening issues or submitting pull requests.

## License

This project is licensed under the [License Name](link_to_license).

## Acknowledgements

- Mention any contributors or resources that were helpful.

---
