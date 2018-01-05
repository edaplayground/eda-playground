########################
Hands-on SVUnit Tutorial
########################

Time to learn the basics of unit testing with SVUnit!

Edit the code and run it here: `Hands-on SVUnit Tutorial on EDA Playground <http://www.edaplayground.com/s/example/563>`_

Here's a simple set of unit tests for an interface called
``svunitOnSwitch``. The purpose of the design is to offer a few
utility functions as well as to operate an on/off output.

The API of the svunitOnSwitch is as follows:

.. code-block:: verilog

   output logic on;
   function logic true();
   function logic false();
   function int return43();
   turn_on();
   turn_off();

The ``svunitOnSwitch`` is defined as:

.. code-block:: verilog

   interface svunitOnSwitch (
     output logic on
   );
     initial on = 'hx;

     function logic true();
       // no implementation yet
     endfunction

     function logic false();
       // no implementation yet
     endfunction

     function int return43();
       // no implementation yet
     endfunction

     function void turn_on();
       // no implementation yet
     endfunction

     function void turn_off();
       // no implementation yet
     endfunction
   endinterface

The SVTESTs below are the acceptance unit tests that verify
the functionality of the ``svunitOnSwitch``. If you run the tests
on EDA Playground you'll see all the tests fail because none
of the ``svunitOnSwitch`` functionality is implemented. Your
job is to build a complete ``svunitOnSwitch``, one requirement at
a time, by:

* | examining the requirement defined in the unit test
  | (HINT: a unit test is marked by the ```SVTEST`` macro)
* | implementng the corresponding code in the ``svunitOnSwitch``
  | (HINT: watch for the "no implementation yet" comment)
* running the test suite to make sure your implementation
  satisfies the unit test

When you've gone through all the tests and your entire test
suite passes, you're done! You've verified the
``svunitOnSwitch`` and learned the basics of SVUnit!

Ready... set... go!

Edit the code and run it here: `Hands-on SVUnit Tutorial on EDA Playground <http://www.edaplayground.com/s/example/563>`_

.. code-block:: verilog

   `include "svunit_defines.svh"
   import svunit_pkg::*;

   module svunitDemo_unit_test;
     `SVUNIT_TESTS_BEGIN

     //------------------------------
     // test: true_test
     //   the true() function should
     //   return 1
     //------------------------------
     `SVTEST(true_returns_1)
       `FAIL_UNLESS(uut.true() === 1);
     `SVTEST_END


     //------------------------------
     // test: false_test
     //   the false() function should
     //   return 0
     //------------------------------
     `SVTEST(false_returns_0)
       `FAIL_UNLESS(uut.false() === 0);
     `SVTEST_END


     //-----------------------------------
     // test: return43
     //   The function return43() returns
     //   a value. this test should fail
     //   if that doesn't happen.
     //-----------------------------------
     `SVTEST(return43)
       `FAIL_UNLESS(uut.return43() === 43);
     `SVTEST_END


     //---------------------------------
     // test: turn_on
     //   our uut has an output pin
     //   called 'on' that we can
     //   assert via turn_on()
     //---------------------------------
     `SVTEST(turn_on)
       uut.turn_on();
       `FAIL_UNLESS(uut.on === 1);
     `SVTEST_END


     //---------------------------------
     // test: turn_off
     //   we can turn 'on' off using
     //   turn_off() method
     //---------------------------------
     `SVTEST(turn_off)
       uut.turn_off();
       `FAIL_UNLESS(uut.on === 0);
     `SVTEST_END

   /*
     ----------------------------------------
     ----------------------------------------

       For more SVUnit, Remember to visit:

            www.AgileSoC.com/svunit


       And try the other SVUnit examples at:

             www.edaplayground.com

     ----------------------------------------
     ----------------------------------------
   */

     `SVUNIT_TESTS_END


     string name = "svunitDemo_ut";
     svunit_testcase svunit_ut;


     //===================================
     // This is the UUT that we're
     // running the Unit Tests on
     //===================================
     svunitOnSwitch uut();


     //===================================
     // Build. Runs once
     //===================================
     function void build();
       svunit_ut = new(name);
     endfunction


     //===================================
     // Setup for running the Unit Tests
     // Runs before every SVTEST.
     //===================================
     task setup();
       svunit_ut.setup();
       /* Place Setup Code Here */
     endtask


     //===================================
     // Here we deconstruct anything we
     // need after running the Unit Tests
     // Runs after every SVTEST.
     //===================================
     task teardown();
       svunit_ut.teardown();
       /* Place Teardown Code Here */
     endtask


   endmodule

You can do a lot more than test a simple ``svunitOnSwith`` with
SVUnit. When you're ready to test your own design and
testbench IP visit: http://www.AgileSoC.com/svunit
