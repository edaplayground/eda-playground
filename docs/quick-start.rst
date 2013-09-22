###########
Quick Start
###########

This Quick Start is intended for users of http://www.edaplayground.com.

#. In a separate web browser window, log in to **EDA Playground** at: http://www.edaplayground.com

#. In either the *Design* or *Testbench* window pane, type in the following code:

   .. code-block:: verilog
   
      module test;
        initial
          $display("Hello World!");
      endmodule
   
   (Note: The code in the right *Design* pane is compiled first, followed by code in the left *Testbench* pane.)

#. Click

   .. image:: https://imageshack.com/scaled/large/842/qxbd.jpg
      :alt: Run

   Yes, running a sim is as simple as that!

#. In the bottom pane, you should see real-time results as your code is being compiled and then run.
   A run typically takes 1-5 seconds, depending on network traffic and simulator. Near the bottom of result output, you should see:

   ::
   
      Hello World!

#. Now, let's save our good work. Type in a descriptive name in the *Details* area on the left.

   .. image:: https://imageshack.com/scaled/large/707/e9zb.jpg
      :alt: Details-Name

   and click

   .. image:: https://imageshack.com/scaled/large/534/ohfu.jpg
      :alt: Save

#. The browser page will reload and the browser address bar will change. This is a persistent link to your saved code.
   You can send the link by email, post it on a web page, post it on `Stack Overflow <http://stackoverflow.com/>`_ forums, etc.
   Here is what the link looks like for one user's *Hello World!* playground: http://www.edaplayground.com/s/3/12

#. Now, let's try modifying existing code. Load the following example: `RAM <http://www.edaplayground.com/s/example/9>`_

#. On the left editor pane, before the **end** of **initial** block, add the following:

   .. code-block:: verilog
   
       write_enable = 1;
       data_write = 8'h2C;
       toggle_clk_write;
       toggle_clk_read;
       $display("data[%0h]: %0h",
         address_read, data_read);

   The above code will write new data and read it out again. ( *address_read* and *address_write* should be the same).

#. Run the sim. In the results you should see this new message:

   ::
   
      data[1b]: 2c

#. Optional. Click *Copy* to save a personal version of the modified *RAM* code, including the simulation results.