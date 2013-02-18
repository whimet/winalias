arguments = ""
for i = 1 to WScript.Arguments.length
	arguments = arguments + " " + WScript.Arguments(i-1)
next

WScript.Echo arguments