winalias
========

A command line alias utility for Windows implemented purely by Windows batch script.

Usage: alias [alias_name] [your_command_with_options_and_arguments]

Here is some examples:

* alias go cd /d [Your_Project_Directory]
defined a go.bat under C:\mybin(which is created and put into PATH by the installer) which change directory to your project directory
* alias inst mvn clean install -Dmaven.test.skip
defined a inst.bat which build and install your Maven project without compiling and running tests
* alias run "go && inst && mvn jetty:run"
go to your project directory, package it and then launch Jetty
* alias /v inst
print out the content of inst.bat
* alias /d inst
delete the predefined inst.bat
* alias /l
list all batch files under C:\mybin

The purpose of this Windows alias utility is to speed up your daily operations using commands with options and arguments, such as commands used during development.
