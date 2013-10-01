############
Introduction
############
| EDA Playground web application located at http://www.edaplayground.com/
| Documentation located at http://eda-playground.readthedocs.org
  
********
Overview
********

**EDA Playground** gives engineers immediate hands-on exposure to simulating Verilog/SystemVerilog/VHDL.
All you need is a web browser. The goal is to accelerate learning of design/testbench development with 
easier code sharing, and with simpler access to simulators and libraries. EDA Playground is specifically 
designed for small prototypes and examples.

* With a simple click, run your code and see console output in real time. Pick another simulator version and run it again.
* Save your code snippets. Share your code and simulation results with a web link. Perfect for web forum discussions or emails.
  Great for asking questions or sharing your knowledge.
* Quickly try something out

  * Try out a SystemVerilog feature before using it on your project.
  * Try out a library that you're thinking of using.
  * Modify another engineer's shared code and re-run it.

* Eliminate environment differences. Since the code always executes in the same environment, everyone will see the same result 
  on a subsequent re-run.
* Browse and use a large repository of working code examples and templates.

.. image:: https://imageshack.com/a/img841/6759/80m6.jpg
   :alt: Playground
   :width: 100%

****************
Example Usecases
****************
* **Quick prototyping** -- try out syntax or a library/language feature before using it in a large code base.
* When **asking questions on** `Stack Overflow <http://stackoverflow.com/>`_ or other online forums, attach a link to the 
  code and simulation results. Results from a private EDA Playground deployment can also be posted on
  `www.edaplayground.com <http://www.edaplayground.com>`_
* Use during **technical interviews** to test candidates' Verilog/SystemVerilog coding skills.
* **Run anywhere**. When away from your work machine, you can still try a quick prototype on EDA Playground.
* Try verifying using **different verification frameworks**: UVM, plain Verilog, or Python.
* Create a **Verilog lab** for young engineers, with the Verilog code hosted on EDA Playground.
  Students can work from home at their own pace, and run the lab samples on EDA Playground.
* Quickly check whether your code is **synthesizable** or emulator-friendly. (Private deployment only.)

*********************
What Users are Saying
*********************

   "This is a really useful web-based utility for anyone who is discussing/sharing/debugging a code segment with a
   colleague or a support person. Also, a very useful follow-up tool for post-training help among students or between
   instructor and students. Simple, easy, useful."

   -- Hemendra Talesara, Verification Technologist at Synapse Design Automation Inc. 

   "EDA Playground is sooo useful for interviews. I got a lot more feedback from being able to watch
   someone compile and debug errors. I would highly recommend others to use it if they are asking SV
   related questions."

   -- Ricardo Goto, MTS Design Engineer at AMD (using private deployment)

   "I work in a large environment where compiles and sims take a considerable amount of time. When I'm
   developing/debugging, sometimes I want to use Verilog/SystemVerilog syntax that I have not used before.
   (Examples: wild equality, binding to the same port multiple times.) I don't want to stick my code into
   the environment and hope that the the feature works like I think it does.
   Instead, I first do a quick prototype on EDA Playground."

   -- Design Verification Engineer (using private deployment)

   "I’ve used it a few times now to just check out some issues related to SV syntax and it’s been a big timesaver!"

   -- Eric White, MTS Design Engineer at AMD (using private deployment)

******************
Tools & Simulators
******************

:ref:`Tools & Simulators Options <tools-simulators-options-label>`

Available tools and simulators:

On public `EDA Playground -- The FREE Verilog IDE <http://www.edaplayground.com>`_
==================================================================================

* `Icarus Verilog <http://iverilog.icarus.com/>`_

  * Version 0.10.0 (devel) supports several SystemVerilog features.

* `GPL Cver <http://sourceforge.net/projects/gplcver/>`_
* `VeriWell <http://sourceforge.net/projects/veriwell/>`_
* `Questa SIM <http://www.mentor.com/products/fv/questa/>`_ (compile only)

On private **EDA Playground**
=============================

* All simulators available on public version.
* Any additional simulators/tools that your company/university has licenses for or developed in-house.

*************************
Libraries & Methodologies
*************************

:ref:`Languages & Libraries Options <languages-libraries-options-label>`

Available libraries and methodologies:

* `UVM <http://www.accellera.org/downloads/standards/uvm>`_

  * `UVM 1.1d Class Reference <https://verificationacademy.com/verification-methodology-reference/uvm/docs_1.1d/html/>`_

* `cocotb <http://cocotb.readthedocs.org/en/latest/index.html>`_ - a coroutine based cosimulation library for writing
  VHDL and Verilog testbenches in Python

  * `cocotb on GitHub <https://github.com/potentialventures/cocotb>`_

* `SVUnit <http://www.agilesoc.com/open-source-projects/svunit/>`_ - unit testing framework for Verilog/SystemVerilog
  modules, classes, etc.

  * `SVUnit on SourceForge <http://sourceforge.net/projects/svunit/>`_

******************************
Feature Requests and Bug Fixes
******************************

| Request new features and bug fixes here: https://github.com/getvictor/eda-playground/issues (requires GitHub account).
| Or `Tweet to @EDAPlayground <https://twitter.com/intent/tweet?screen_name=EDAPlayground>`_

*******
Credits
*******

| **EDA Playground** was created in May 2013 by Victor Lyuboslavsky.
| `EDA Playground on Twitter <https://twitter.com/edaplayground>`_
| `Victor EDA on LinkedIn <http://www.linkedin.com/company/victor-eda>`_
