#################
D Flip-Flop (DFF)
#################

Code located at: `Verilog D Flip-Flop <http://www.edaplayground.com/s/example/8>`_

This example demonstrates the design and verification of a simple D flip-flop
(`Wikipedia link <https://en.wikipedia.org/wiki/D_flip_flop#D_flip-flop>`_).

******
Design
******
The DFF module has the following pins:

=====  ======  =======
Name   Type    Description
=====  ======  =======
clk    input   the clock; rising edge of the clock captures the value
reset  input   asynchronous reset; when reset is high, the DFF output **q** is 0
d      input   the main input
q      output  the **d** value captured at the last rising clock edge
qb     output  inverted version of **q**
=====  ======  =======

*********
Testbench
*********

The testbench is a simple directed test which toggles the DFF inputs and displays the outputs to the console.

The *reg* signals are used to drive inputs, and *wire* signals are used to observe outputs:

.. code-block:: verilog

   reg clk;
   reg reset;
   reg d;
   wire q;
   wire qb;

The DFF design is instantiated:

.. code-block:: verilog

   dff DFF(.clk(clk), .reset(reset),
           .d(d), .q(q), .qb(qb));
           
The *initial* block contains the actual test. First, **reset** is driven to 1 to reset the flop, while **d** is driven with an X:

.. code-block:: verilog

   clk = 0;
   reset = 1;
   d = 1'bx;
    
From the console display, we see that the flop has been properly reset with **q** == 0

::

   Reset flop.
   d:x, q:0, qb:1
   
Next, **reset** is released, while input **d** is driven to 1:

.. code-block:: verilog

   d = 1;
   reset = 0;

The output **q** remains at 0 because the design did not see a rising edge of **clk** and did not capture the **d** input:

::

   Release reset.
   d:1, q:0, qb:1
   
Finally, we drive **clk** to 1 to create a rising edge:

.. code-block:: verilog

   clk = 1;
   
Now we see **q** output change to match the **d** input:

::

   Toggle clk.
   d:1, q:1, qb:0

Note: Before calling the ``$display`` task, we always tell simulation to proceed for 1 time unit ``#1`` to allow the output signals to propagate.
