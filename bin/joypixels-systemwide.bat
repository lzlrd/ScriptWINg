title "ScriptWINg: JoyPixels Systemwide"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

set MS_EMOJI_FONT_PATH_NO_QUOTES=%SystemRoot%\Fonts\seguiemj.ttf
set MS_EMOJI_FONT_PATH="%MS_EMOJI_FONT_PATH_NO_QUOTES%"
set MS_FONT_PATH_NO_QUOTES=%SystemRoot%\Fonts\seguisym.ttf
set MS_FONT_PATH="%MS_FONT_PATH_NO_QUOTES%"

echo "    - Installation or Uninstallation"
echo "Please select whether you'd like to install/update or uninstall the JoyPixels font."
set /P c="Type 'I' to install, or 'U' to uninstall: "
if /I "%c%" EQU "I" goto Install
if /I "%c%" EQU "U" goto Uninstall
goto End

:Install
set EMOJI_FONT_PATH="%~dp0\..\lib\JoyPixels-SVG.ttf"
set FINAL_EMJ_FONT_PATH_NO_QUOTES=%~dp0\..\lib\Segoe UI Emoji with JoyPixels.ttf
set FINAL_EMJ_FONT_PATH="%FINAL_EMJ_FONT_PATH_NO_QUOTES%"
set FINAL_FONT_PATH_NO_QUOTES=%~dp0\..\lib\Segoe UI Symbol with JoyPixels.ttf
set FINAL_FONT_PATH="%FINAL_FONT_PATH_NO_QUOTES%"

where python /q || (
	echo "Python was not found, install or add it to PATH."
	exit /b 1
)

where pip /q || (
	echo "PIP was not found, install or add it to PATH."
	exit /b 1
)

echo "    - Updating FontTools"
pip install --upgrade fonttools

where ttx /q || (
	echo "ttx.exe was not found, please add Python's Scripts folder to PATH."
	exit /b 1
)

pushd %TEMP%
if exist %MS_EMOJI_FONT_PATH% (
	echo "    - Creating new Emoji font"
	ttx -t "name" -o "emjname.ttx" %MS_EMOJI_FONT_PATH% || exit /b 1
	ttx -o %FINAL_EMJ_FONT_PATH% -m %EMOJI_FONT_PATH% "emjname.ttx" || exit /b 1
	del "emjname.ttx"
)

echo "    - Merging Segoe UI Symbol into JoyPixels"
pyftmerge %EMOJI_FONT_PATH% %MS_FONT_PATH%
ttx -t "SVG " -o "svg.ttx" %EMOJI_FONT_PATH% || exit /b 1
ttx -t "name" -o "name.ttx" %MS_FONT_PATH% || exit /b 1
ttx -o "almost.ttf" -m "merged.ttf" "name.ttx" || exit /b 1
del "merged.ttf"
del "name.ttx"
ttx -o %FINAL_FONT_PATH% -m "almost.ttf" "svg.ttx" || exit /b 1
del "almost.ttf"
del "svg.ttx"
popd

echo "    - Opening new fonts for installation"
fontview %FINAL_FONT_PATH_NO_QUOTES%
fontview %FINAL_EMJ_FONT_PATH_NO_QUOTES%
goto End

:Uninstall
fontview %MS_EMOJI_FONT_PATH_NO_QUOTES%
fontview %MS_FONT_PATH_NO_QUOTES%

:End
cls
exit /b 0
