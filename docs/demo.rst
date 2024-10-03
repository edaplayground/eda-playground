######
Blumph
######

#. In a separate web browser window, log in to **EDA Playground** at: http://courses.edaplayground.com

#. `Log in <http://eda-playground.readthedocs.io/en/latest/login.html>`_. Click the **Log in** button (top right) Then either

* click on Google or Facebook or 
* register by clicking on 'Register for a full account' (which enables all the simulators on EDA Playground)

#. Select 'Aldec Riviera Pro' from the **Tools & Simulators** menu. This selects the Aldec Riviera Pro simulator, which can be used however you logged in. Using certain other simulators will require you to have registered for a full account.

#. In either the *Design* or *Testbench* window pane, type in the following code:

   .. code-block:: verilog

      module test;
        initial
          $display("Hello World!");
      endmodule

   (Note: The code in the right *Design* pane is compiled first, followed by code in the left *Testbench* pane.)

#. Click **Run** (top left)

   Yes, running a simulation is as simple as that!

#. In the bottom pane, you should see real-time results as your code is being compiled and then run.
   A run typically takes 1-5 seconds, depending on network traffic and simulator. Near the bottom of result output, you should see:

   ::

      Hello World!

#. Now, let's save our good work. Click the **Share** tab near in the bottom pane and then type in a name and description. Then click **Save**.

#. The browser page will reload and the browser address bar will change. This is a persistent link to your saved code.
   You can send the link by email, post it on a web page, post it on `Stack Overflow <http://stackoverflow.com/>`_ forums, etc.
   Here is what the link looks like for one user's *Hello World!* playground: http://courses.edaplayground.com/s/3/12

#. Now, let's try modifying existing code. Load the following example: `RAM <http://courses.edaplayground.com/s/example/9>`_

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

.. _loading-waves-from-playground:

*********************************
Loading Waves from EDA Playground
*********************************

You can run a simulation on EDA Playground and load the resulting waves in EPWave.

Loading Waves for SystemVerilog and Verilog Simulations
-------------------------------------------------------

* Go to your code on EDA Playground. For example: `RAM Design and Test <http://courses.edaplayground.com/s/example/9>`_
* Make sure your code contains appropriate function calls to create a \*.vcd file. For example:

  .. code-block:: verilog

     initial begin
       $dumpfile("dump.vcd");
       $dumpvars(1);
     end

* Select a simulator and check the **Open EPWave after run** checkbox. (Not all simulators may have this run option.)

  .. image:: _static/openEpwaveCheckbox.png

* Click **Run**. After the run completes, the resulting waves will load in a new EPWave window. (Pop-ups must be enabled.)

Loading Waves for VHDL Simulations
----------------------------------

* Check the **Open EPWave after run** checkbox.
* Specify the **Top entity** to simulate.
* Click **Run**. After the run completes, the resulting waves will load in a new EPWave window. (Pop-ups must be enabled.)

  * The waves for all signals in the specified **Top entity** and any of its components will be dumped.
  * In EPWave window, click **Get Signals** to select the signals to view.

********
Harrumph
********

.. raw:: html

  <iframe width="1280" height="720" src="//www.youtube.com/embed/GpNf6dIx-Kw?list=SPScWdLzHpkAeTnJGDXHupc5WC-8Kjt5Ue&vq=hd720" frameborder="0" allowfullscreen></iframe>https://rust.godbolt.org/z/88hYc4xeE
  
    <iframe width="1280" height="720" src="//rust.godbolt.org/z/88hYc4xeE" frameborder="0" allowfullscreen></iframe>
  
  <iframe width="1280" height="700" src="//haproxy4-nyc1.edaplayground.com/embed/x/9?from=https://eda-playground.readthedocs.io&button=run&panes=1" frameborder="0" allowfullscreen"></iframe>
  
  <iframe width="1280" height="700" src="//haproxy4-nyc1.edaplayground.com/embed/x/9?from=https://haproxy4-nyc1.edaplayground.com&button=run&panes=1" frameborder="0" allowfullscreen"></iframe>
  
  <iframe name="EDAPlayground" width="1280" height="700" frameborder="0"></iframe>
  <script>window.frames.EDAPlayground.location='//test202-nyc1.edaplayground.com/embed/x/9?from=https  <iframe width="1280" height="700" src="//haproxy4-nyc1.edaplayground.com/embed/x/9?from=https://eda-playground.readthedocs.io&button=run&panes=1" frameborder="0" allowfullscreen"></iframe>
  
://eda-playground.readthedocs.io&button=run&panes=1';</script>
