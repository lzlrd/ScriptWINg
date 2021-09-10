@echo off
title "ScriptWINg: CleanBrowsing DoH"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Adding DoH entries for CleanBrowsing"
1>NUL netsh dns add encryption server=185.228.168.10 dohtemplate=https://doh.cleanbrowsing.org/doh/adult-filter/
1>NUL netsh dns add encryption server=185.228.169.11 dohtemplate=https://doh.cleanbrowsing.org/doh/adult-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:1::1 dohtemplate=https://doh.cleanbrowsing.org/doh/adult-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:2::1 dohtemplate=https://doh.cleanbrowsing.org/doh/adult-filter/

1>NUL netsh dns add encryption server=185.228.168.168 dohtemplate=https://doh.cleanbrowsing.org/doh/family-filter/
1>NUL netsh dns add encryption server=185.228.169.168 dohtemplate=https://doh.cleanbrowsing.org/doh/family-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:1:: dohtemplate=https://doh.cleanbrowsing.org/doh/family-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:2:: dohtemplate=https://doh.cleanbrowsing.org/doh/family-filter/

1>NUL netsh dns add encryption server=185.228.168.9 dohtemplate=https://doh.cleanbrowsing.org/doh/security-filter/
1>NUL netsh dns add encryption server=185.228.169.9 dohtemplate=https://doh.cleanbrowsing.org/doh/security-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:1::2 dohtemplate=https://doh.cleanbrowsing.org/doh/security-filter/
1>NUL netsh dns add encryption server=2a0d:2a00:2::2 dohtemplate=https://doh.cleanbrowsing.org/doh/security-filter/

cls
exit /b 0
