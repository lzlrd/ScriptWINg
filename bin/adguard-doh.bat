@echo off
title "ScriptWINg: AdGuard DoH"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Adding DoH entries for AdGuard"
1>NUL netsh dns add encryption server=94.140.14.14 dohtemplate=https://dns.adguard.com/dns-query
1>NUL netsh dns add encryption server=94.140.15.15 dohtemplate=https://dns.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::ad1:ff dohtemplate=https://dns.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::ad2:ff dohtemplate=https://dns.adguard.com/dns-query

1>NUL netsh dns add encryption server=94.140.14.15 dohtemplate=https://dns-family.adguard.com/dns-query
1>NUL netsh dns add encryption server=94.140.15.16 dohtemplate=https://dns-family.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::bad1:ff dohtemplate=https://dns-family.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::bad2:ff dohtemplate=https://dns-family.adguard.com/dns-query

1>NUL netsh dns add encryption server=94.140.14.140 dohtemplate=https://dns-unfiltered.adguard.com/dns-query
1>NUL netsh dns add encryption server=94.140.14.141 dohtemplate=https://dns-unfiltered.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::1:ff dohtemplate=https://dns-unfiltered.adguard.com/dns-query
1>NUL netsh dns add encryption server=2a10:50c0::2:ff dohtemplate=https://dns-unfiltered.adguard.com/dns-query

cls
exit /b 0
