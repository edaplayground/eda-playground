#####################
Doulos Exercise Links
#####################

`Essential Digital Design Techniques [EDDT] <https://eda-playground.readthedocs.io/en/latest/EDDT_v3.1.1.html>`_ 

`Expert VHDL <https://eda-playground.readthedocs.io/en/latest/Expert_VHDL_exercise_links.html>`_ 

`Comprehensive SystemVerilog [CSV] <https://eda-playground.readthedocs.io/en/latest/systemverilog_exercises_v4.2.html>`_ 

`Comprehensive Verilog [CV] <https://eda-playground.readthedocs.io/en/latest/Comprehensive_Verilog_verilog75.html>`_ 

`Comprehensive VHDL <https://eda-playground.readthedocs.io/en/latest/Comprehensive_VHDL_exercise_links.html>`_ 

`SystemC Fundamentals [SCF] <https://eda-playground.readthedocs.io/en/latest/SystemC_fundamentals_v5.0.html>`_ 

`SystemC Modeling with TLM-2.0 [SCTLM] <https://eda-playground.readthedocs.io/en/latest/TLM-EDAplayground_v17.html>`_

`SystemVerilog for New Designers [SVND] <https://eda-playground.readthedocs.io/en/latest/systemverilog_for_new_designers_v15.html>`_

`UVM Adopter [UA] <https://eda-playground.readthedocs.io/en/latest/UVM_Adopter_svuvm_2.4.html>`_

**Note**: more complex courses (Expert VHDL Verification, Comprehensive SystemVerilog and UVM Adopter) rely on many files stored in a common directory. Rather than clutter up the display with zillions of tabs (and rather than take ages loading them up into each exercise playground), all these common files are stored within the docker container. These files are referred to in the _files.f_ tab.

**Note**: for VHDL compile order (as you know) is critical. The tabs are compiled design first, then testbench. In each section, the tabs are compiled left to right. It is not possible to interleave the compiling of code stored within the docker container with code in the tabs. Therefore, for Expert VHDL Verification, all the files are specified in order in the _files.f_ tab. This means that any code in a named tab will be compiled twice, but (i) that's no biggy and (ii) I can't think of any other way of doing it.
