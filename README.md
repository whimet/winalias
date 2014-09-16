winalias
========

A command line alias utility for Windows implemented purely by Windows batch script.

Usage: alias [alias_name] [your_command_with_options_and_arguments]

Here is some examples:

* alias go @cd /d [Your_Project_Directory]

  Define "go.bat" under C:\mybin (which is created and added into PATH by the installer) which changes current folder to your project directory. The @ character is to suppress echo.
* alias inst mvn clean install -Dmaven.test.skip

  Define "inst.bat" which builds and installs your project using Maven without compiling and running tests
* alias run "go && inst && mvn jetty:run"

  "run.bat" will go to your project directory, package it and launch Jetty with it
* alias /v inst

  Print out the content of inst.bat
* alias /e inst

  Edit the "inst.bat" in Notepad
* alias /d inst

  Delete "inst.bat"
* alias /l

  List all batch files under C:\mybin

The purpose of this Windows alias utility is to speed up your frequently used operations using command line, such as everyday development activities.