############
Introduction
############

| `EDA Playground on YouTube <https://www.youtube.com/channel/UCP1LfE6VR_YfrcFiYhG_imA>`_ - Tutorials for Verilog, SystemVerilog, UVM, and VHDL, interview questions, news and features, etc.

********
Overview
********

EDA Playground gives engineers immediate hands-on exposure to simulating SystemVerilog, Verilog, VHDL, C++/SystemC, and other HDLs.
All you need is a web browser. The goal is to accelerate learning of design/testbench development with
easier code sharing, and with simpler access to EDA tools and libraries. EDA Playground is specifically
designed for small prototypes and examples.

* With a simple click, run your code and see console output in real time. Pick another simulator version and run it again.
* View waves for your simulation using `EPWave <http://epwave.readthedocs.org>`_ browser-based wave viewer.
* Save your code snippets. Share your code and simulation results with a web link. Perfect for web forum discussions or emails.
  Great for asking questions or sharing your knowledge.
* Quickly try something out

  * Try out a SystemVerilog feature before using it on your project.
  * Try out a library that you're thinking of using.
  * Modify another engineer's shared code and re-run it.

* Eliminate environment differences. Since the code always executes in the same environment, everyone will see the same result
  on a subsequent re-run.
* Browse and use a large repository of working code examples and templates.

.. image:: _static/playground.png
   :alt: Playground
   :width: 100%

****************
Example Usecases
****************
* **Quick prototyping** -- try out syntax or a library/language feature before using it in a large code base.
* When **asking questions on** `Stack Overflow <http://stackoverflow.com/>`_ or other online forums, attach a link to the
  code and simulation results.
* Use during **technical interviews** to test candidates' SystemVerilog/Verilog coding and debug skills.
* **Run anywhere**. When away from your work machine, you can still try a quick prototype on EDA Playground.
* Try verifying using **different verification frameworks**: UVM, SVUnit, plain Verilog, or Python.
* Create an **HDL and Verification Lab** for young engineers, with the code hosted on EDA Playground.
  Students can work from home at their own pace, and run the lab samples on EDA Playground.
* Quickly check whether your code is **synthesizable** or emulator-friendly.

******************
Tools & Simulators
******************

For settings and options documentation, see :ref:`Tools & Simulators Options <tools-simulators-options-label>`

Available tools and simulators are below. EDA Playground can support many different tools.
`Contact us <http://www.victoreda.com>`_ to add your EDA tool to EDA Playground.

Simulators
==========

* `Riviera-PRO <https://www.aldec.com/en/products/functional_verification/riviera-pro>`_

  * Commercial simulator that supports ALL SystemVerilog and VHDL features. Supports PSL.
  * :ref:`riviera-pro`

* `ModelSim <http://www.mentor.com/products/fv/modelsim/>`_

  * ModelSim supports most of SystemVerilog (including UVM/OVM and SVUnit libraries), and VHDL.
  * :ref:`modelsim-uvm`
  * `SystemVerilog DPI (Direct Programming Interface) Tutorial <https://www.youtube.com/watch?v=HhSAnApHYkU&list=PLScWdLzHpkAeqA7BlGEDHooMeN10IW3_T>`_

* `Incisive Specman Elite <http://www.cadence.com/products/fv/enterprise_specman_elite/pages/default.aspx>`_

  * Commercial simulator that supports `e Verification Language, IEEE 1647 <http://www.cadence.com/products/fv/pages/e_overview.aspx>`_
  * Works with Icarus Verilog 0.10.0 (contact `Victor EDA <http://www.victoreda.com>`_ regarding EDA Playground support for other simulators)

* `Icarus Verilog <http://iverilog.icarus.com/>`_

  * Version 0.10.0 (devel) supports several SystemVerilog features.

* `GPL Cver <http://sourceforge.net/projects/gplcver/>`_
* `VeriWell <http://sourceforge.net/projects/veriwell/>`_

Compilers and Interpreters
==========================

* `C++ <http://gcc.gnu.org/>`_
* `Perl <http://www.perl.org/>`_
* `Python <http://www.python.org/>`_
* `Csh (C Shell) <http://en.wikipedia.org/wiki/C_shell>`_

Synthesis Tools
===============

NOTE: The synthesis tools will only process code in the right *Design* pane. The code in the left *Testbench* pane will be ignored.

* `Yosys <http://www.clifford.at/yosys/>`_

  * `Yosys on GitHub <https://github.com/cliffordwolf/yosys>`_

* `The Verilog-to-Routing (VTR) Project <http://code.google.com/p/vtr-verilog-to-routing/>`_

On private EDA Playground
=========================

EDA Playground may be deployed on a private company/university network. For such a private deployment, any additional simulators/tools
may be added. The company/university must have licenses for the commercial tools to be added.

*************************
Libraries & Methodologies
*************************

For settings and options documentation, see :ref:`Languages & Libraries Options <languages-libraries-options-label>`

Available libraries and methodologies:

SystemVerilog and Verilog
=========================

* `UVM - Universal Verification Methodology <http://www.accellera.org/downloads/standards/uvm>`_

  * `UVM 1.2 Class Reference <_static/uvm-1.2/index.html>`_

    * `What's New in UVM 1.2 <http://www.youtube.com/watch?v=V2l4lBlsh7k&list=SPScWdLzHpkAdYPk_jgxRgOPisTm3-7U6A>`_ on YouTube

  * `UVM 1.1d Class Reference <https://verificationacademy.com/verification-methodology-reference/uvm/docs_1.1d/html/>`_

* `OVM - Open Verification Methodology <https://verificationacademy.com/topics/verification-methodology>`_

  * `OVM 2.1.2 Class Reference <https://verificationacademy.com/verification-methodology-reference/ovmworld/docs_2.1.2/html/index.html>`_
  * `OVM 2.1.2 User Guide <http://www.specman-verification.com/source_bank/ovm-2.1.2/ovm-2.1.2/OVM_UserGuide.pdf>`_

* `SVUnit <http://www.agilesoc.com/open-source-projects/svunit/>`_ - unit testing framework for Verilog/SystemVerilog
  modules, classes, etc.

  * `SVUnit on SourceForge <http://sourceforge.net/projects/svunit/>`_

* OVL - Open Verification Library

  * :download:`OVL Library Reference Manual <_static/ovl_lrm.pdf>`
  * :download:`OVL Quick Reference <_static/ovl_quick_ref.pdf>`

* `ClueLib <https://github.com/cluelogic/cluelib>`_ - A generic class library in SystemVerilog

  * `ClueLib API Documentation <http://cluelogic.com/tools/cluelib/api/framed_html/index.html>`_

* `svlib <http://www.verilab.com/resources/svlib/>`_ - A Programmer's Utility Library for SystemVerilog

  * :download:`svlib User Guide <_static/svlib-userguide-0.3.pdf>`

VHDL
====

* OVL - Open Verification Library

  * :download:`OVL Library Reference Manual <_static/ovl_lrm.pdf>`
  * :download:`OVL Quick Reference <_static/ovl_quick_ref.pdf>`

* PSL - Property Specification Language

  * Natively supported by Riviera-PRO

* `OSVVM <http://osvvm.org/>`_ - Open Source VHDL Verification Methodology

C++
===

* `SystemC <http://www.accellera.org/downloads/standards/systemc>`_ - system level design and simulation in C++

  * `SystemC 2.3.1 Class Reference <_static/systemc-2.3.1/sysc/classes.html>`_
  * `TLM 2.0 Class Reference <_static/systemc-2.3.1/tlm/classes.html>`_

Python
======

* `MyHDL <http://www.myhdl.org>`_ - a Python based hardware description language (HDL)

  * `MyHDL Manual <http://www.myhdl.org/doc/current/>`_
  * `MyHDL on Bitbucket <https://bitbucket.org/jandecaluwe/myhdl>`_

* `Migen <https://migen.readthedocs.org/en/latest>`_ - a Python toolbox for building complex digital hardware

  * `Migen on GitHub <https://github.com/m-labs/migen>`_
  * `Migen from M-Labs <http://milkymist.org/3/migen.html>`_

* `cocotb <http://cocotb.readthedocs.org/en/latest/index.html>`_ - a coroutine based cosimulation library for writing
  VHDL and Verilog testbenches in Python

  * `cocotb on GitHub <https://github.com/potentialventures/cocotb>`_

*********************
What Users are Saying
*********************

   "This is a really useful web-based utility for anyone who is discussing/sharing/debugging a code segment with a
   colleague or a support person. Also, a very useful follow-up tool for post-training help among students or between
   instructor and students. Simple, easy, useful."

   -- Hemendra Talesara, Verification Technologist at Synapse Design Automation Inc.

   "I think EDA Playground is awesome! Great resource to learn without the hassle of setting up tools!"

   -- Alan Langman, Engineering Consultant

   "I’ve used it a few times now to just check out some issues related to SV syntax and it’s been a big timesaver!"

   -- Eric White, MTS Design Engineer at AMD

   "EDA Playground is sooo useful for interviews. I got a lot more feedback from being able to watch
   someone compile and debug errors. I would highly recommend others to use it if they are asking SV
   related questions."

   -- Ricardo Goto, Verification Engineer

   "I have recommended to use EDAPlayground.com to my team and am also trying to use it more for my debug.
   I find EDAPlayground.com is much easier than logging into my Unix machines."

   -- Subhash Bhogadi, Verification Consultant

   "I just wanted to thank you a lot for creating EDA Playground. I've been using it a lot lately together with
   StackOverflow and it makes asking and answering questions much easier."

   -- Tudor Timisescu, System Verification Engineer at Infineon Technologies

***************************************
Support, Feature Requests and Bug Fixes
***************************************

| Support available on `EDA Playground forum <https://groups.google.com/forum/#!forum/eda-playground>`_
| Or open a bug here: https://github.com/getvictor/eda-playground/issues (requires GitHub account).

*********************
News and Site Updates
*********************
New features are frequently being added to EDA Playground. Follow the updates on your favorite social media site:

* `@EDAPlayground on Twitter <https://twitter.com/edaplayground>`_
* `Victor EDA on LinkedIn <http://www.linkedin.com/company/victor-eda>`_
* `EDA Playground on Facebook <https://facebook.com/edaplayground>`_
* `EDA Playground on Google+ <https://plus.google.com/+Edaplayground_EPWave>`_

*******
Credits
*******

**EDA Playground** was created in May 2013 by Victor Lyuboslavsky.
