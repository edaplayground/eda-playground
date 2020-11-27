#######################
Compile and Run Options
#######################

*****************
Aldec Riviera-Pro
*****************
`Aldec Riviera-Pro <https://www.aldec.com/en/products/functional_verification/riviera-pro>`_

You can view the Riviera-Pro manual `here <https://www.aldec.com/en/support/resources/documentation/manuals>`_ (registration required).

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
  * - -auts
    - Allows evaluation of asynchronous PSL assertions.
  * - -coverage {s\|b\|e\|c\|p\|a\|m}
    - Enables coverage analysis. The argument allows specifying the following coverage types: \
      s - Statement Coverage, \
      b - Branch Coverage, \
      e - Expression Coverage, \
      c - Conditional Coverage, \
      p - Path Coverage, \
      a - Assertion Coverage, \
      m - FSM Coverage
  * - -dbg
    - Generates debugging information. Required for generation of code coverage data and assertion debug. Forces -O0.
  * - -f <file>
    - Searches in the specified file for compile options
  * - -o | -reorder
    - Enables automatic file ordering.
  * - -O0 | -O1 | -O2 | -O3
    - Specifies the optimization level. The -O0 argument lowers the optimization to the minimum. Maximum optimization is enabled with -O3. If omitted, the compiler assumes -O3 if it is invoked without the -dbg argument or -O0 if invoked with the -dbg argument.
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
  * - -auts
    - allows evaluation of asynchronous PSL/OVA assertions
  * - -coverage {s\|b\|e\|c\|a\|m}
    - Enables coverage analysis. The argument allows specifying the following coverage types:
              s - Statement Coverage,
              b - Branch Coverage,
              e - Expression Coverage,
              c - Condition Coverage,
              a - Assertion Coverage,
              m - FSM Coverage
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
  * - -msg <level>
    - Sets message printing level. Typical values are: 0 (quiet), 5 (warnings only; warnings are printed in blue) and 9 (all messages).
  * - -O0 | -O1 | -O2 | -O3
    - Specifies the optimization level. -O3 will generate the fastest code. -O0 offers maximum debugging visibility. The default setting is -O2.
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
  * - -work <lib_name>
    - Sets the working library name to <lib_name>.

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
  * - -acdb_cov {s|b|f|e|c|t|a|p|m}
    - Defines the type of coverage data to be collected. The following types can be specified: s - Statement Coverage, b - Branch Coverage, f - Functional Coverage, e - Expression Coverage, c - Condition Coverage, t - Toggle Coverage, a - Assertion Coverage, p - Path Coverage, and m - FSM Coverage
  * - -f <file>
    - Specifies the name of the additional text file containing run time options
  * - -G<name>=<value>
    - Assigns values to VHDL generics, Verilog and SystemVerilog parameters, and SystemC generics
  * - -srandomforrandom
    - Allows setting seed for the $random function by using the srandom() method in SystemVerilog code.
  * - [<library>].<unit>
    - Specifies the name of the simulation top-level unit. It can be a VHDL configuration or an entity, a Verilog module or configuration, a SystemVerilog program, a SystemC module, or an EDIF cell. A VHDL entity can be followed by the name of an architecture. If only the entity name is specified then the last architecture compiled for the specified entity is simulated. If no top-level unit is specified then all Verilog top-level modules are simulated. Multiple units specified as simulation top-level can reside in the same or separate libraries.

----
VHDL
----

.. list-table::
  :widths: 11, 20
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
  :widths: 9, 20
  :header-rows: 1

  * - Option
    - Description
  * - -pli <library_name>
    -     Loads a PLI library with user-defined tasks and functions
  * - -random_seed <seed_value> | random
    - Sets the seed for the random number generator for the SystemVerilog $random function
  * - -sv_lib <library>
    - Specifies a DPI library to be searched for symbols imported with the SystemVerilog import declarations (import "DPI-C")
  * - -sv_liblist <library_list>
    - Specifies a file containing a list of DPI libraries to be loaded by the simulator
  * - -sv_seed {<seed_value>|random}
    - Sets the seed for the SystemVerilog random number generator
