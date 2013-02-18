set script_dir=%~dp0
set install_dir=C:\wintoolkit
xcopy /s /i /y %script_dir%* %install_dir%
call cscript //b %script_dir%\appendPath.vbs %install_dir%

set aliases_dir=C:\mybin
mkdir %aliases_dir%
call cscript //b %script_dir%\createEnv.vbs aliases_dir %aliases_dir%
call cscript //b %script_dir%\appendPath.vbs %aliases_dir%

REM calling notepad to pause the installation process to debug
REM notepad