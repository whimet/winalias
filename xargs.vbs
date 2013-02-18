arguments = ""
for i = 1 to WScript.Arguments.length
	arguments = arguments + " " + WScript.Arguments(i-1)
next

input = WScript.StdIn.ReadLine()

Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd /c " + arguments + " " + input
