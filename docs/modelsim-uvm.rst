.. _modelsim-uvm:

#######################
Using UVM with ModelSim
#######################

ModelSim 10.1d supports all SystemVerilog/Verilog features except SystemVerilog assertions, SystemVerilog coverage, and the
``randomize`` method.

UVM can be used with ModelSim 10.1d as long as the following coding style adjustments are followed:

* When creating a ``uvm_sequence``, put the following in the constructor: ``do_not_randomize = 1'b1;``

  .. code-block:: verilog

     class my_sequence extends uvm_sequence #(my_transaction);

     function new();
       // MUST BE SET when using ModelSim
       do_not_randomize = 1'b1;
     endfunction

* Then, before sending the request in your sequence, if you need randomization, use ``$urandom`` or other
  classic ways to achieve randomization for your request
* Do NOT use ```uvm_do*with`` macros

Examples on EDA Playground that you can edit and simulate:

* `Simple UVM Testbench <http://www.edaplayground.com/s/example/546>`_
* `UVM Sequence-Driver <http://www.edaplayground.com/s/example/564>`_

.. .. raw:: html

..  <iframe width="1280" height="720" src="//www.youtube.com/embed/8s-NfzfJ__w?vq=hd720" frameborder="0" allowfullscreen></iframe>
