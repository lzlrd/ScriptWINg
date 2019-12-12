title "ScriptWINg: Faster Animations"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning registry changes"
1>NUL reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "MenuShowDelay" /t REG_DWORD /d 100 /f

echo "    - Beginning hidden config changes"
1>NUL "%~dp0ViVeTool.exe" addconfig 28556341 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28556372 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28554502 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27074523 2
1>NUL "%~dp0ViVeTool.exe" addconfig 24106681 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28362217 2
1>NUL "%~dp0ViVeTool.exe" addconfig 9073709 2
1>NUL "%~dp0ViVeTool.exe" addconfig 23755289 2
1>NUL "%~dp0ViVeTool.exe" addconfig 16281572 2

cls
exit /b 0
