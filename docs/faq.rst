###
FAQ
###

*********************************
Account Validation and Logging In
*********************************

How do I validate my account?
=============================
You can reach the validation page by clicking run whilst having selected either Synopsys VCS or Cadence Incisive from the **Tools & Simulators** menu or by visiting: `https://www.edaplayground.com/login <https://www.edaplayground.com/login>`_ and clicking on 'Register for a full account'. You will need to supply some additional identification information, including a company, organisational or institutional email address. 

Enter your details in the form; read the terms and conditions carefully and, if you agree, click **I Agree**. An email will then be sent to the email address you entered. Open that email and click on the link it contains and your account will be validated.

I don't have a company or institutional email address. How can I validate my account?
=====================================================================================
Are you sure? Are you perhaps a member of a professional institution that gives you an email address? 

Are you sure you need to? Using Aldec Riviera Pro does not require account validation: this is a commercial simulator, which supports VHDL, Verilog, System-Verilog and UVM. 

Which simulators require account validation?
============================================
* Synopsys VCS
* Cadence Incisive

What can I do without account validation?
=========================================
Pretty much everything. Using Aldec Riviera Pro does not require account validation: this is a commercial simulator, which supports VHDL, Verilog, System-Verilog and UVM. Using Cadence Specman does not require account validation, either.

I didn't receive your email, what can I do?
===========================================
So, first check you spam folder to make sure our email is not stuck there. If not, check the email address you entered was correct (for example, people often seem to add '.com' instead of '.edu'; people often seem to be combining gmail addresses with work, for example people often seem to type something like 'myname1982@somerealcompany.com').

If all that fails, get in touch with me (Matthew) at getedaplayground@gmail.com. 

Why is account validation necessary?
====================================
Unfortunately, following some abuse of this privilige on EDA Playground, we have had to restrict access to some of the simulators. EDA Playground enables you to use some commercial, professional simulators, completely free of charge. In order to use some simulators, asking for some identification information and the agreement not to abuse this privilige doesn't seem much to ask.

How do I log in if I don't have a Google or Facebook account?
=============================================================
If you have an organisational/company/institutional email address then you can register from the  `login page <https://www.edaplayground.com/login>`_. Click on `Register for a full account <https://www.edaplayground.com/register>`_ or  `No Google or Facebook account? <https://www.edaplayground.com/register>`_.

*************
Running Tools
*************

How can I change the language used by my playground?
====================================================
You can select the testbench and design languages in the 'Testbench + Design' drop-down menu. 

Can I simulate VHDL and Verilog together?
=========================================
Unfortunately not. It's on the ToDo list.

How can I select OVM or UVM?
============================
You can choose OVM (2.1.2) or UVM (1.1d or 1.2) from the 'UVM/OVM' drop-down menu (in the left pane).

How can I select other libraries?
=================================
You can do select other libraries by highlighting the library in the 'Other Libraries' drop-down menu (in the left pane). You can highlight more than one library - they are all compatible with each other.

I forgot to highlight my library but it made no difference?
===========================================================
Yes. Some libraries are available with some tools whether you highlight them or not. It is still a good idea to highlight any library you use though, because then you playground can be more easily found by the search. (Basically, if it is not necessary to highlight a library, highlighting it is acting like a 'tag' to help the search.)

How do I use TL-Verilog?
========================
You use TL-Verilog by checking the 'Enable TL-Verilog' checkbox. This switches the file extension to .tlv and reveals an extra option: 'Show HTML after run'. Checking that opens the HTML output from TV-Verilog in a new browser tab.

How do I use EasierUVM?
=======================
You use EasierUVM by checking the 'Enable EasierUVM' checkbox. This switches the testbench file extension to .txt. 

What are the resource limits for running my code?
=================================================
Each run is limited to 60 seconds runtime and 100MB of memory. Each playground can have a maximum of 1 000 000 characters.

**************
Managing Files
**************

How can I add more files?
=========================
You can add more files by clicking on the **+** symbol next to the rightmost tab in either the testbench or design panes. You can 

* create a new blank file by typing its name in the 'Filename' field and clicking on 'Create file'
* upload files by clicking on 'Upload files...'
* drag files from a desktop environment onto either the testbench or design panes

How can I remove files?
=======================
You can remove files by clicking on the **X** symbol on each tab.

How can I rename files?
=======================
You can rename files by double clicking 

Can I read a file from my code?
===============================
Yes. All the tabs appear to the tool as files (with the same name as each tab) in a single directory. So, if you have a tab called (say) example.txt a file called example.txt is available to be read.

Can I download output files?
============================
Yes. Check the 'Download files after run' checkbox and a zipped copy of all the files and directories will appear. 

Can I upload files from multiple directories?
=============================================
It would be nice, wouldn't it? But unfortunately not. It's on the ToDO list.

********************
Managing Playgrounds
********************

How do I start a blank playground design?
=========================================
When working on code at https://www.edaplayground.com, you can start a blank design by clicking the EDA Playground logo in the top left.
(Before doing that, please ensure that your existing code edits are saved.)

How can I save a playground?
============================
Click on one of the Save buttons - there's one top left and another in the Share tab of the bottom pane.

How do I modify one of the examples? How do I modify someone else's playground?
===============================================================================
After making code edits, you can save your own version by clicking **Copy**.

How Can I search for a Playground?
===========================================
Select either 'Your Playgrounds' or 'Published Playgrounds' from the 'Playgrounds' drop-down menu (top-right). You can see your playgrounds listed and can change the listing order by clicking on one of the headings. 

You can also search for one of your playgrounds by entering search terms in the search box and clicking "Search your playgrounds". The search terms search the Name and Descriptions of each playground. You can narrow down your search by selecting the various menus underneath the search box.

How can I publish one of my Playgrounds?
========================================
Select "Published (will appear in search results)" from the drop-down menu bottom-right of the share tab and then save your playground.

What if I accidentally delete a playground? Can I get it back?
====================================================++========
Playgrounds are never actually deleted from the database. So, if you have linked to one of your playgrounds from some other page you don't need to worry about accidentally deleting it - the URL will be preserved. (Deleting a playground simply removes it from your list.)

You can find your deleted playgrounds by adding the search term 'deleted:true' to the search box. Your deleted playgrounds will then be listed and you can undelete any one of them by clicking on the arrow to the right of each one.

*****************
Viewing Waveforms
*****************

What is EPWave?
===============
EPWave (EDA Playground Wave) is the first web browser-based wave viewer. It is part of EDA Playground.

Can I view the waves from my EDA Playground sim using EPWaves?
==============================================================
Yes, waves are supported for all languages, frameworks, and libraries. See :ref:`loading-waves-from-playground`

.. _social-media-label:

************************
EDA Playground Community
************************

How do I get updates about new EDA Playground features?
=======================================================
New features are frequently being added to EDA Playground. Follow the updates on your favorite social media site:

* `EDA Playground Forum <https://groups.google.com/forum/#!forum/eda-playground>`_
* `@EDAPlayground on Twitter <https://twitter.com/edaplayground>`_
* `EDA Playground on Facebook <https://facebook.com/edaplayground>`_

Which web browsers are supported?
=================================
To be honest, I wish I could say I support any browser. To me it goes against the fundamental brilliance of Sir Tim's marvellous invention, to then make a website that is only compatible with such-and-such a version of such-and-such a browser. Unfortunately, it's quite a complicated site and testing resources are limited. So, as far as I know these are supported:
 
* Firefox
* Chrome
* Safari
* Internet Explorer 9 or higher

I'd certainly be interested in hearing about any browser-compatibility issues you come across. 

I have more questions. How do I get support?
============================================
**EDA Playground** is actively being improved. If you need help or have suggestions, support is available on
`EDA Playground forum <httpss://groups.google.com/forum/#!forum/eda-playground>`_

If you see a bug, however minor, please post on the forum or
file a new issue at httpss://github.com/edaplayground/eda-playground/issues (requires GitHub account)

For simulator support, please contact the appropriate simulator vendor.
