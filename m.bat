sh n.sh
mv image.jpg %TEMP%
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  %TEMP%\image.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters