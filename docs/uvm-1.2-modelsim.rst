.. _uvm-1.2-modelsim:

######################################################
Changes Made to UVM 1.2 RC1 to work with ModelSim 1.1d
######################################################

In **uvm_svcmd_dpi.c**:

.. code-block:: c

   const char *uvm_dpi_get_next_arg_c (int init) {

At the bottom of **uvm_pool.svh**:

.. code-block:: verilog

   class uvm_event_wrapper extends uvm_event#();
     function new (string name="");
       super.new(name);
     endfunction
   endclass
   typedef uvm_object_string_pool #(uvm_event_wrapper) uvm_event_pool;
