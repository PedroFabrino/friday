:while
:: Set volume to maximum
nircmd.exe setsysvolume 65535
:: Speak to the user
PowerShell -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak(‘Vampetização rolando!’);"

:: Download picture
PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://i.pinimg.com/originals/38/0d/75/380d75bf5f3b84a9112eff7360c9a61a.jpg', ‘C:/users/public/vampeta.jpg’)"

:: Set picture as desktop
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:/Users/Public/vampeta.jpg /f 
UpdatePerUserSystemParameters

:: Set volume to maximum
nircmd.exe setsysvolume 65535
:: Speak to the user
PowerShell -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak(‘Vampetização finalizada, volte sempre’);"

:: Wait 30 seconds
timeout 30

:: Do it all over again :D
goto :while
