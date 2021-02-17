# ScriptWINg

A few Windows 10 batch scripts I created & use [after every update]. Made with love.

## Scripts

### AdGuard DoH

This script maps AdGuard's DNS-over-HTTPS (DoH) servers their respective IP adresses for Winfows 10 which allows you to utilise DoH on AdGuard servers.

### Clean Desktop

Ever noticed those extremely ugly icons for your GPU's settings utility on the Desktop? This script nukes them from existence to keep you sane.

### Expanded Power Options

Every thought Windows' Power Options utility was useless? Well, not anymore. This script makes a lot of hidden functionality in the utility visable, allowing you to tweak your power usage to your heart's desire.

### Faster Animations

I'm sure we can all agree that Windows 10 could be much more responsive. Maybe a reduction in animation times, for example? This script does just that by reducing Windows 10's animation time window to 100ms.

### Hidden Features

Installed the latest Windows 10 build but not seeing those hot new features on Twitter? This script triggers Windows' A/B testing mechanism to enable them for you. You can thank me later.

### JoyPixels Systemwide

Paid for that expensive JoyPixels SVG-in-OT font and tired of seeing Microsoft's bold circles on your device? Well, even if you didn't, feel free to chuck that TTF over in lib/ (as JoyPixels-SVG.ttf) and run this script to have a nicer set of emoji on Windows.

### Kernel Tune

Windows may not have as many command-line options as Linux does, but there are a few useful ones out there. This script switches the clocksource to TSC, enables large pages for Hyper-V, enforces entropy collection from the TPM, and more.

### Return Recents

Tuned down Office 365's tracking but noticed Recent Documents are no longer appearing? Yeah, we got you there mate. This script reverses any changes to recent documents feature in order to make use of that massive empty space Microsoft added to the new Office apps' "homepage".

### Tracker Killer

We all know Microsoft likes to track how many times you wiped your butt in the toilet. Unfortunately for them, we don't. This script is one of many to reduce Windows 10's tracking to sea-level while also being careful to avoid tripping any "dIsAbLeD tElEmEtrY" blockages across the OS. It's like walking over a minefield, but safer.

### VPN Fixes

Sometimes you'll feel like a maniac and use Windows 10 while needing to protect your privacy but your VPN just won't work. This script allows extra ciphers and the ability to connect to VPNs behind a NAT, if that's your cup of tea.

## License

All ScriptWINg code is licensed under tha AGPLv3, with the exception of ViVeTool (`bin/Albacore.ViVe.dll` and `bin/ViVeTool.exe`) which is licensed under the GPLv3.

## Credits

Thanks to Federico Dossena for his [Windows 10 Privacy Guide](https://github.com/adolfintel/Windows10-Privacy), which was inspiration for [Tracker Killer](#trackerkiller).

Thanks to [Lacia](https://github.com/Lyceris-chan) for their work on ~~forcing~~ helping me to rewrite ScriptWINg.

Thanks to [Lucas](https://github.com/thebookisclosed) for [ViVeTool](https://github.com/thebookisclosed/ViVe).

~~Thanks to Twitter for spamming me with feature configs.~~

Thanks to [WinAero](https://winaero.com) for their [Windows Defender Firewall rules](https://winaero.com/blog/stop-windows-10-spying-on-you-using-just-windows-firewall) which is used in [Tracker Killer](#trackerkiller).

Thanks to [Brad Erickson](https://github.com/13rac1) for their work on [twemoji-color-font](https://github.com/eosrei/twemoji-color-font) which helped write the base of [JoyPixels Systemwide](#joyPixelssystemwide).
