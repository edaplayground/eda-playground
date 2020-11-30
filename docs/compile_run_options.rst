#######################
Compile and Run Options
#######################

*****************
Aldec Riviera-Pro
*****************

===============
Compile Options
===============

----
VHDL
----

.. list-table::
  :widths: 5, 20
  :header-rows: 1

  * - Option
    - Description
  * - -2002
    - Forces the compiler to conform to VHDL 2002 (IEEE Std 1076™-2002). This is the default mode of operation.
  * - -2008
    - Forces the compiler to conform to VHDL 2008 (IEEE Std 1076™-2008).
  * - -2019
    - Forces the compiler to conform to VHDL 2019 (IEEE Std 1076™-2019) standard.
  * - -93
    - Forces the compiler to conform to VHDL 93 (IEEE Std 1076-1993).
  * - -dbg
    - Generates debugging information. Required for generation of code coverage data and assertion debug. Forces -O0.
  * - -f <file>
    - Searches in the specified file for compile options
  * - -o | -reorder
    - Enables automatic file ordering.
  * - -psl <file>
    - Specifies the name of a PSL file

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 10, 20
  :header-rows: 1

  * - Option
    - Description
  * - -allow duplicated_units
    - ignores units already visible in the compilation-unit scope
  * - -dbg
    - Generates debugging information
  * - +define+{<macro_name>[=<macro_text>]}
    - Equivalent to the compiler directive `define <macro_name> or `define <macro_name> <macro_text>.
  * - -dpiheader <filename>
    - Specifies the name of the DPI header file.
  * - -f <file>
    - Searches in the specified file for arguments
  * - -incdir <path>
    - Specifies the directory to be searched for files included with the `include directive.
  * - +incdir<+path>[<+path> ...]
    - Specifies directories to be searched for files included with the `include directive
  * - -j
    - Forces the strict LRM mode. Informal extensions to the LRM syntax are not allowed.
  * - -psl <psl_file>
    - Specifies the name of a PSL file
  * - -sv2k5
    - Forces the compiler to conform to SystemVerilog IEEE 1800™-2005.
  * - -sv2k9
    - Forces the compiler to conform to SystemVerilog IEEE 1800™-2009.
  * - -sv2k12
    - Forces the compiler to conform to SystemVerilog IEEE 1800™-2012.
  * - -v95
    - Disables LRM 1364-2001 and SystemVerilog extensions. Only Verilog'95 constructs are allowed.
  * - -v2k
    - Disables SystemVerilog extensions. Only Verilog 2001 constructs are allowed.
  * - -v2k5 | -v2005
    - Forces the compiler to conform to IEEE Std 1364™-2005. SystemVerilog extensions are not allowed.

===========
Run Options
===========

--------------------
Language-independent
--------------------

.. list-table::
  :widths: 5, 20
  :header-rows: 1

  * - Option
    - Description
  * - +access+r
    - Enables read access to design objects (eg for waveform dumping)
  * - -acdb
    - Enables collecting of Code Coverage data into the ACDB database
  * - -f <file>
    - Specifies the name of the additional text file containing run time options
  * - -srandomforrandom
    - Allows setting seed for the $random function by using the srandom() method in SystemVerilog code.
  * - [<library>].<unit>
    - Specifies the name of the simulation top-level unit. It can be a VHDL configuration or an entity, a Verilog module or configuration, a SystemVerilog program, a SystemC module, or an EDIF cell. A VHDL entity can be followed by the name of an architecture. If only the entity name is specified then the last architecture compiled for the specified entity is simulated. If no top-level unit is specified then all Verilog top-level modules are simulated. Multiple units specified as simulation top-level can reside in the same or separate libraries.

----
VHDL
----

.. list-table::
  :widths: 14,20
  :header-rows: 1

  * - Option
    - Description
  * - -foreign "<foreign_function> <library_name>"
    - Loads a foreign function from a shared library
  * - -loadvhpi "<library_name>:<execf_name>"
    - Dynamically loads the VHPI library specified with the <library_name> argument and executes the function specified with the <execf_name> argument.

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 12, 20
  :header-rows: 1

  * - Option
    - Description

  * - -random_seed <seed_value> | random
    - Sets the seed for the random number generator for the SystemVerilog $random function
  * - -sv_seed {<seed_value>|random}
    - Sets the seed for the SystemVerilog random number generator

***************
Cadence Xcelium
***************

The Xcelium xrun command is used, so all of these options can be either Compile or Run Options.

.. list-table::
  :widths: 6, 20
  :header-rows: 1

  * - Option
    - Description
  * - -abvcoveron
    - Enable cover directives
  * - -abvevalnochange
    - Revert back expression change optimization
  * - -abvrecordcoverall
    - Record all finishes for cover directives
  * - -access <+/-rwc>
    - Turn on read, write and/or connectivity access
  * - -allowredefinition
    - Allow multiple files to define the same object
  * - -assert
    - Enable PSL language features
  * - -assert_vhdl
    - Enable PSL language features
  * - -coverage all
    - Enable coverage instrumentation
  * - -covoverwrite
    - Enable overwrite of coverage output files
  * - -debug
    - Equivalent to -access +rw, Specman debug
  * - -f <filename>
    - Scan file for args relative to xrun invocation
  * - -helpall
    - Display all supported option
  * - -ieee1364
    - Report errors according to IEEE 1364 standards
  * - -propfile_vhdl <file>
    - File containing PSL/Covergroup verification code
  * - -sysv
    - Enables the support for SystemVerilog Data Types
  * - -top <lib.cell:view>
    - Specify the top-level unit
  * - -v1995
    - Turn off new Verilog-2001 keywords
  * - -v2001
    - Turn off new Verilog-2005 keywords
  * - -v200x
    - Enable VHDL200X and VHDL93 features
  * - -v93
    - Enable VHDL93 features
  * - -vhdltop <lib.cell:view>
    - Specify the top-level VHDL unit to be bound to

****************
Mentor QuestaSim
****************

===============
Compile Options
===============

----
VHDL
----

.. list-table::
  :widths: 7, 20
  :header-rows: 1

  * - Option
    - Description
  * - -87
    - Enables support for VHDL 1076-1987.
  * - -93
    - Enables support for VHDL 1076-1993.
  * - -2002
    - Enables support for VHDL 1076-2002. (default)
  * - -2008
    - Enables support for VHDL 1076-2008.
  * - +acc
    - enable access for all objects.
  * - -assertdebug
    - Allows you to debug SVA/PSL objects when used with vsim -assertdebug
  * - -autoorder
    - determines the proper order of VHDL design units
  * - (-F | -file | -f) <filename>
    - -f, -file and -F each specifies an argument file with more command-line arguments
  * - -pslfile <filename>
    - Compiles an external PSL assertion file together with the VHDL source files

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 14, 20
  :header-rows: 1

  * - Option
    - Description
  * - -assertdebug
    - Enables you to debug SVA/PSL objects when used with vsim -assertdebug
  * - +define+<macro_name>[=<macro_text>]
    - Allows you to define a macro from the command line
  * - (-F | -file | -f) <filename>
    - -f, -file and -F: each specifies an argument file with more command-line arguments
  * - +incdir+<directory>
    - Specifies directories to search for files included with `include compiler directives
  * - -pslfile <filename>
    - Identifies an external PSL assertion file to compile along with the Verilog source files.
  * - -sv
    - Enables SystemVerilog features and keywords
  * - -sv05compat
    - Used in conjunction with the -sv switch to ensure compatibility with the reserved keyword set of IEEE Std 1800-2005.
  * - -sv09compat
    - Used in conjunction with the -sv switch to ensure compatibility with the reserved keyword set of IEEE Std 1800-2009.
  * - -sv12compat
    - Used in conjunction with the -sv switch to ensure compatibility with the reserved keyword set of IEEE Std 1800-2012.
  * - -timescale[=]|[ ]<time_units>/<time_precision>
    - Specifies the default timescale for all design unit types
  * - -vlog01compat
    - Ensures compatibility with rules of IEEE Std 1364-2001.
  * - vlog95compat
    - Disables Verilog 2001 keywords
  * - -writetoplevels <fileName>
    - Records the names of all top level module names in a specified file

===========
Run Options
===========

--------------------
Language-independent
--------------------

.. list-table::
  :widths: 13, 20
  :header-rows: 1

  * - Option
    - Description

  * - -assertcounts
    - Enables extended count information
  * - -assertcounts
    - seems to display assertion coverage for PSL, but not for SVA/PSL
  * - -do “<command_string>” | <do_file_name>
    - Instructs vsim to use the command(s) specified by <command_string> or the DO file named by <do_file_name>
  * - -f <filename>
    - Specifies a file with more vsim command arguments
  * - -help
    - Sends the arguments and syntax for vsim to the transcript

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 9, 20
  :header-rows: 1

  * - Option
    - Description
  * - -onfinish stop
Stops simulation and leaves the simulation kernel running.

************
Synopsys VCS
************

===============
Compile Options
===============

----
VHDL
----

.. list-table::
  :widths: 5, 20
  :header-rows: 1

  * - Option
    - Description
  * - -h or -help
    - Lists descriptions of the most commonly used compile-time and runtime options.
  * - -vhdl87
    - Enable backward compatibility for VHDL-87 syntax rules. (VHDL-93 syntax rules are the default.)
  * - -xlrm
    - Enable vhdl features beyond those described in lrm.
  * - -f[ile] optionsfile
    - Expand command line options from file optionsfile.
  * - -psl
    - Enable psl assertions
  * - -pslfile pslfile
    - specify psl assertion file pslfile
  * - -vhdl08
    - Enable support for VHDL 2008 constructs.

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 12, 20
  :header-rows: 1

  * - Option
    - Description
  * - -debug_access+all
    - enable all debug capability.
  * - -f <filename>
    - Specifies a file that contains a list of pathnames to source files and compile-time options.
  * - -h or -help
    - Lists descriptions of the most commonly used compile-time and runtime options.
  * - -timescale=<time_unit>/<time_precision>
    - If only some source files contain the `timescale compiler directive and the ones that don't appear first on the vcs command line, use this option to specify the time scale for these source files.

===========
Run Options
===========

--------------------
Language-independent
--------------------

.. list-table::
  :widths: 5, 20
  :header-rows: 1

  * - Option
    - Description
  * - -h or -help
    - Lists descriptions of the most commonly used compile-time and runtime options.

-------------
SystemVerilog
-------------

.. list-table::
  :widths: 8, 20
  :header-rows: 1

  * - Option
    - Description

  * - +ntb_random_seed=<value>
    - Sets the seed value used by the top level random number generator at the  start of simulation. The random(seed) system function call overrides this  setting. The value can be any integer number.
