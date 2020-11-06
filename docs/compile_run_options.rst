#######################
Compile and Run Options
#######################

*****************
`Aldec Riviera-Pro <https://www.aldec.com/en/products/functional_verification/riviera-pro>`_
*****************

You can view the Riviera-Pro manual `here <https://www.aldec.com/en/support/resources/documentation/manuals>`_ (registration required).

.. csv-table:: Compile Options
  :header: "Option", "Description"
  :widths: 1, 10
   
  "-2002", "Forces the compiler to conform to VHDL 2002 (IEEE Std 1076™-2002). This is the default mode of operation. "
  "-2008", "Forces the compiler to conform to VHDL 2008 (IEEE Std 1076™-2008)."
  "-2019", "Forces the compiler to conform to VHDL 2019 (IEEE Std 1076™-2019) standard."
  "-93", "Forces the compiler to conform to VHDL 93 (IEEE Std 1076-1993)."
  "-auts", "Allows evaluation of asynchronous PSL assertions."
  "-coverage {s|b|e|c|p|a|m}", "Enables coverage analysis. The argument allows specifying the following coverage types: \
      s - enables Statement Coverage \
      b - enables Branch Coverage \
      e - enables Expression Coverage \
      c - enables Conditional Coverage \
      p - enables Path Coverage \
      a - enables Assertion Coverage \
      m - enables FSM Coverage "
  "-dbg", "Generates debugging information. Required for generation of code coverage data and assertion debug. Forces -O0."
  "+define+{<identifier>=<value>}", "Specifies the identifier used in the conditional analysis."
  "-f <file>", "Searches in the specified file for compile options"
  "-o | -reorder", "Enables automatic file ordering."
  "-O0 | -O1 | -O2 | -O3", "Specifies the optimization level. The -O0 argument lowers the optimization to the minimum. Maximum optimization is enabled with -O3. If omitted, the compiler assumes -O3 if it is invoked without the -dbg argument or -O0 if invoked with the -dbg argument."
  "-psl <file>", "Specifies the name of a PSL file"

