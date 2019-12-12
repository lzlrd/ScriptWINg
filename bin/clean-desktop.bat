title "ScriptWINg: Clean Desktop"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning registry changes"
1>NUL reg delete "HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\ACE" /f
1>NUL reg delete "HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\igfxcui" /f
1>NUL reg delete "HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\igfxDTCM" /f
1>NUL reg delete "HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\NvCplDesktopContext" /f

cls
exit /b 0
