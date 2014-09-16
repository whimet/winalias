@echo off
if A%1A == AA goto error

if A%aliases_dir%A == AA set aliases_dir = C:\WINDOWS

if %1 == /l (
	echo All batch files under %aliases_dir%:
	dir /b "%aliases_dir%\*.bat"
	goto end
)

if A%2A == AA goto error2

if %1 == /d (
	del "%aliases_dir%\%2.bat"
	echo %aliases_dir%\%2.bat deleted.
	goto end
)

if %1 == /v (
	type "%aliases_dir%\%2.bat"
	goto end
)


if %1 == /e (
	notepad "%aliases_dir%\%2.bat"
	goto end
)

set alias=%1
set cmdstr=%2 %3 %4 %5 %6 %7 %8 %9

REM escape the & character
set cmdstr=%cmdstr:&=^&%

echo %cmdstr:"=% %%1 %%2 %%3 %%4 %%5 %%6 %%7 %%8 %%9  > %aliases_dir%\%alias%.bat

echo %aliases_dir%\%alias%.bat : %cmdstr:"=% %%1 %%2 %%3 %%4 %%5 %%6 %%7 %%8 %%9
goto end

:error
echo No arguments specified!
goto end

:error2
echo At lease two arguments!

:end