Function Set-WallPaper($Value)
{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True

}

:while
REM :: Speak to the user
PowerShell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('Vampetiza‡?o rolando!');"

REM :: Download picture
PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/PedroFabrino/friday/blob/master/vampeta.jpg?raw=true', 'C:/users/public/vampeta.jpg')"

REM :: Set picture as desktop
REM reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d C:/Users/Public/vampeta.jpg /f 
REM timeout 2
REM UpdatePerUserSystemParameters
Set-WallPaper -value "C:/Users/Public/vampeta.jpg"

REM :: Speak to the user
PowerShell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('Vampetiza‡?o finalizada, volte sempre');"

REM :: Wait 30 seconds
timeout 30

REM :: Do it all over again :D
goto :while
