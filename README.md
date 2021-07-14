# Overview

Basic Makefile for generating exectuable kotlin programs without external dependencies. It wraps the generated jar file in a shebang'ed bash script which allows to execute the file like a shell script, i.e. without involving the kotlin command manually.

There are also a couple of different solutions which compile your code every time you run it, i.e. `#!/usr/bin/env kotlinc -script` or cache it internally, i.e. [kscript](https://github.com/holgerbrandl/kscript).

## Usage

1. Write your code in a set of *.kt files
2. Execute `make package`
3. To run your programm, call `build/build`

## Example

    > make package
    > build/build
