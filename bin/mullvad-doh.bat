@echo off
title "ScriptWINg: Mullvad DoH"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Adding DoH entries for Mullvad"
1>NUL netsh dns add encryption server=194.242.2.2 dohtemplate=https://doh.mullvad.net/dns-query
1>NUL netsh dns add encryption server=193.19.108.2 dohtemplate=https://doh.mullvad.net/dns-query
1>NUL netsh dns add encryption server=2a07:e340::2 dohtemplate=https://doh.mullvad.net/dns-query

1>NUL netsh dns add encryption server=194.242.2.3 dohtemplate=https://adblock.doh.mullvad.net/dns-query
1>NUL netsh dns add encryption server=193.19.108.3 dohtemplate=https://adblock.doh.mullvad.net/dns-query
1>NUL netsh dns add encryption server=2a07:e340::3 dohtemplate=https://adblock.doh.mullvad.net/dns-query

cls
exit /b 0
