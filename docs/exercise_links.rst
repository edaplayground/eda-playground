#####################
Doulos Exercise Links
#####################

`Advanced UVM v3.0.1 <https://eda-playground.readthedocs.io/en/latest/Advanced_UVM_svuvm_3.0.1.html>`_

`Comprehensive Verilog [CV] <https://eda-playground.readthedocs.io/en/latest/Comprehensive_Verilog_verilog75.html>`_

`Comprehensive SystemVerilog [CSV] <https://eda-playground.readthedocs.io/en/latest/systemverilog_exercises_v4.2.html>`_

`Comprehensive VHDL <https://eda-playground.readthedocs.io/en/latest/Comprehensive_VHDL_exercise_links.html>`_

`Essential Digital Design Techniques [EDDT] <https://eda-playground.readthedocs.io/en/latest/EDDT_v3.1.1.html>`_

`Expert VHDL v4.3 (released 2018 - old OSVVM solution) <https://eda-playground.readthedocs.io/en/latest/Expert_VHDL_exercise_links.html>`_

`Expert VHDL v4.4 (released 2025 - new OSVVM solution) <https://eda-playground.readthedocs.io/en/latest/Expert_VHDL_exercise_links_v4.4.html>`_

`Fast Track Verilog (2 days) [FTV] <https://eda-playground.readthedocs.io/en/latest/Fast_Track_Verilog_ft-verilog15.html>`_

`Introduction to UVM v3.0.1 <https://eda-playground.readthedocs.io/en/latest/Introduction_to_UVM_svuvm_3.0.1.html>`_

`PSL for VHDL [PSLVHDL] <https://eda-playground.readthedocs.io/en/latest/PSLVHDL_nosolutions.html>`_

`SystemC Fundamentals [SCF] <https://eda-playground.readthedocs.io/en/latest/systemc_fundamentals_v6.0.html>`_

`SystemC Modeling using TLM-2.0 [TLM] <https://eda-playground.readthedocs.io/en/latest/systemc_tlm_v3.0.html>`_

`SystemVerilog for New Designers [SVND] <https://eda-playground.readthedocs.io/en/latest/SystemVerilog_for_New_Designers_v15.html>`_

`SystemVerilog for Analog Designers [SVAD] <https://eda-playground.readthedocs.io/en/latest/SystemVerilog_for_Analog_Designers_v10.html>`_

`SVA Supplement [SS] <https://eda-playground.readthedocs.io/en/latest/sva_supplement.html>`_

`Verilog Primer for SystemVerilog (1 day) [VP4SV] <https://eda-playground.readthedocs.io/en/latest/SystemVerilog_Verilog_Primer_v2.0.html>`_

`UVM Adopter v2.4 [UA] <https://eda-playground.readthedocs.io/en/latest/UVM_Adopter_svuvm_2.4.html>`_

`UVM Adopter v3.0 [UVM] <https://eda-playground.readthedocs.io/en/latest/UVM_Adopter_svuvm_3.0.html>`_

`UVM Adopter v3.1 [UVM] <https://eda-playground.readthedocs.io/en/latest/UVM_Adopter_svuvm_3.1.html>`_

**Note**: more complex courses (Expert VHDL Verification, Comprehensive SystemVerilog and UVM Adopter) rely on many files stored in a common directory. Rather than clutter up the display with zillions of tabs (and rather than take ages loading them up into each exercise playground), all these common files are stored within the docker container. These files are referred to in the _files.f_ tab.

**Note**: for VHDL compile order (as you know) is critical. The tabs are compiled design first, then testbench. In each section, the tabs are compiled left to right. It is not possible to interleave the compiling of code stored within the docker container with code in the tabs. Therefore, for Expert VHDL Verification, all the files are specified in order in the _files.f_ tab. This means that any code in a named tab will be compiled twice, but (i) that's no biggy and (ii) I can't think of any other way of doing it.
