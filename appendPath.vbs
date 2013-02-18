if not WScript.Arguments.length = 1 then
	WScript.Echo "Parameter required: directory"
else
	Set WshShell = CreateObject("WScript.Shell")

	' makes environment settings permanent
	Set WshSystemEnv = WshShell.Environment("SYSTEM")

	' Set environment variable
	WshSystemEnv("Path") = WshSystemEnv("Path") & ";" & WScript.Arguments(0)
end if