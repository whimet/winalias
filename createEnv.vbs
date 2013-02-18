if not WScript.Arguments.length = 2 then
	WScript.Echo "Two parameters required: key value"
else
	Set WshShell = CreateObject("WScript.Shell")

	' makes environment settings permanent
	Set WshSystemEnv = WshShell.Environment("SYSTEM")

	' Set environment variable
	WshSystemEnv(WScript.Arguments(0)) = WScript.Arguments(1)
end if