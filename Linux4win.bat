@echo off
goto start

:donesetup
echo What is [33mLinux[0m4[34mwin[0m?
echo.
echo [33mLinux[0m4[34mwin[0m is a port of the Linux operating system that runs natively on Windows in the cmd.
echo It allows users to execute Linux commands directly from the Windows command prompt.
echo This environment is designed to provide a familiar Linux-like experience for users who are accustomed to working with Linux systems.
echo.
echo list of commands:
echo.
echo cd - changes directory
echo ls - list directorys/files
echo clear - clears the screen
echo mkdir - makes a directory
echo rm - removes a directory
echo cat - displays the contents of a file
echo nano - opens the built in text editor
echo touch - creates a new file
echo echo - prints text to the screen
echo find - finds files in the current directory and subdirectories
echo grep - searches for text in files in the current directory and subdirectories
echo sort - sorts the contents of a file
echo gzip - compresses a file into a .zip file
echo gunzip - decompresses a .zip file
echo date - displays the current date and time
echo df - displays disk space usage
echo ps - displays a list of running processes
echo kill - terminates a running process
echo cmd - opens a windows cmd shell
echo ./ - runs a program in the current directory
echo sudo apt install steam - downloads and installs steam
echo sudo apt install firefox - downloads and installs firefox
echo sudo apt install vlc - downloads and installs vlc media player
echo sudo apt install roblox - downloads and installs roblox
echo sudo apt install spotify - downloads and installs spotify
echo sudo apt install office365 - downloads and installs microsoft office 365
echo sudo apt update - updates operating system and drivers
echo cmd - opens a windows cmd shell
echo sudo reboot - reboots the computer
echo sudo shutdown - shuts down the computer
echo sudo logout - logs out the current user
echo read -p "prompt" varname - displays a prompt and waits for user input to store in variable
echo read -p - creates a pause until user presses any key
echo read -p -n - creates a pause until user presses any key without displaying "Press any key to continue..."
echo.
echo remember to run the batch file as administrator for full functionality for commands like sudo apt update
echo.
echo this Linux Shell was created with love from Australia by [95mCryptoCat[0m
echo.
goto startagain

:Start
title Linux4win
setlocal enabledelayedexpansion
set "FUNC_DIR=%TEMP%\linux4win_funcs"
mkdir "%FUNC_DIR%" 2>nul
cls
echo Welcome to [33mLinux[0m4[34mwin[0m. This environment was created by [95mCryptoCat[0m, Enjoy.
echo.
echo Find Me On
echo.
echo itch.io: https://cryptocode.itch.io
echo GitHub: https://github.com/CryptoCat3650

echo.
FOR /F "tokens=*" %%i IN ('hostname') DO SET hostname=%%i
set /p commandinterperter="[32m%username%@%hostname%[0m:[34m%CD%[0m$ "
goto commandforfirst

:startagain

title Linux4win
set "commandinterperter="
FOR /F "tokens=*" %%i IN ('hostname') DO SET hostname=%%i
set /p commandinterperter="[32m%username%@%hostname%[0m:[34m%CD%[0m$ "
if "!commandinterperter!"=="" (
    goto startagain
)

:commandforfirst

if /i "!commandinterperter:~0,2!"=="cd" (
    title Linux4win - ls
    call !commandinterperter!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,2!"=="ls" (
    title Linux4win - ls
    dir !commandinterperter:~2!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="clear" (
    title Linux4win - clear
    cls
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,5!"=="mkdir" (
    title Linux4win - mkdir
    call !commandinterperter!
    if not defined IN_SCRIPT goto startagain
exit /b
)


if /i "!commandinterperter:~0,5!"=="rmdir" (
    title Linux4win - rmdir
    rd /s /q !commandinterperter:~5!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,2!"=="rm" (
    title Linux4win - rm
    del /f /q !commandinterperter:~2!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,3!"=="cat" (
    title Linux4win - cat
    type !commandinterperter:~3!
    echo.
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="nano" (
    title Linux4win - nano
    edit !commandinterperter:~4!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,5!"=="touch" (
    title Linux4win - touch
    echo 1 > !commandinterperter:~5!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="echo" (
    title Linux4win - echo
    call !commandinterperter!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="find" (
    title Linux4win - find
    dir /s /b !commandinterperter:~4!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="grep" (
    title Linux4win - grep
    findstr /S !commandinterperter:~4!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="sort" (
    title Linux4win - sort
    call !commandinterperter!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="gzip" (
    title Linux4win - gzip
    for /f "tokens=2*" %%A in ("!commandinterperter!") do (
        powershell -command "Compress-Archive -Path '%%A' -DestinationPath '%%A.zip'"
    )
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,6!"=="gunzip" (
    title Linux4win - gunzip
    for /f "tokens=2*" %%A in ("!commandinterperter!") do (
        powershell -command "Expand-Archive -Path '%%A' -DestinationPath ."
    )
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="date" (
    title Linux4win - date
    date
    time
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,2!"=="df" (
    title Linux4win - df
    fsutil volume diskfree !commandinterperter:~4!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,2!"=="ps" (
    title Linux4win - ps
    tasklist
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,4!"=="kill" (
    title Linux4win - kill
    taskkill /f /im !commandinterperter:~4!
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,3!"=="cmd" (
    title Linux4win - cmd
    echo entering cmd shell, type exit to return to linux4win
    echo -----------------------------------------------------
    cmd.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if "!commandinterperter:~0,2!"=="./" (
    set "runscript=!commandinterperter:~2!"

    if /i "!runscript:~-3!"==".sh" (
        call :runsh "!runscript!"
    ) else (
        "%CD%\!runscript!"
    )
    if not defined IN_SCRIPT goto startagain
exit /b
)


if /i "!commandinterperter:~0,22!"=="sudo apt install steam" (
    title Linux4win - sudo
    curl https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe -o SteamSetup.exe
    "steamsetup.exe"
    del SteamSetup.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,24!"=="sudo apt install firefox" (
    title Linux4win - sudo
    powershell curl https://tinyurl.com/3f7fhnnx -o firefox.exe
    "firefox.exe"
    del firefox.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,24!"=="sudo apt install vlc" (
    title Linux4win - sudo
    curl https://mirror.aarnet.edu.au/pub/videolan/vlc/3.0.21/win32/vlc-3.0.21-win32.exe -o vlc.exe
    "vlc.exe"
    del vlc.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,24!"=="sudo apt install roblox" (
    title Linux4win - sudo
    powershell curl https://www.roblox.com/download/client?os=win -o roblox.exe
    "roblox.exe"
    del roblox.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,24!"=="sudo apt install spotify" (
    title Linux4win - sudo
    curl https://download.scdn.co/SpotifySetup.exe -o spotify.exe
    "spotify.exe"
    del spotify.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,26!"=="sudo apt install office365" (
    title Linux4win - sudo
    powershell curl https://tinyurl.com/6nzdkhr4 -o office.exe
    "office.exe"
    del office.exe
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter:~0,15!"=="sudo apt update" (
    title Linux4win - sudo apt update
    echo Starting system update... before proceeding, ensure you have saved all your work. and ran this batch file as administrator. if not, the update may fail.
    timeout 5 > nul
    powershell -command "Install-Module PSWindowsUpdate; Get-WindowsUpdate; Install-WindowsUpdate -AcceptAll -AutoReboot"
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="help" (
    goto donesetup
)

if /i "!commandinterperter!"=="exit" (
    echo exiting shell...
    timeout 2 > nul
    exit
)

if /i "!commandinterperter!"=="sudo reboot" (
    echo linux4win - sudo reboot
    echo rebooting system...
    timeout 3 > nul
    taskkill /f /im explorer.exe
    shutdown /r /t 0
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="sudo shutdown" (
    title Linux4win - sudo shutdown
    echo shutting down system...
    timeout 3 > nul
    taskkill /f /im explorer.exe
    shutdown /s /t 0
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="sudo logout" (
    echo Linux4win - sudo logout
    echo logging out user...
    timeout 3 > nul
    logout
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="read" (
    echo The syntax of the command is incorrect.
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="read -p" (
    title Linux4win - read
    pause
    if not defined IN_SCRIPT goto startagain
exit /b
)

if /i "!commandinterperter!"=="read -p -n" (
    title Linux4win - read
    pause>nul
    if not defined IN_SCRIPT goto startagain
exit /b
)

echo !commandinterperter! | findstr "=" >nul
if not errorlevel 1 (
    for /f "tokens=1,2 delims==" %%A in ("!commandinterperter!") do (
        set "%%A=%%B"
    )
    if not defined IN_SCRIPT goto startagain
    exit /b
)

for /f "tokens=1,2,* delims= " %%A in ("!commandinterperter!") do (
    if /i "%%A %%B"=="read -p" (
        set "rest=%%C"

        rem --- extract prompt and variable name
        for /f "tokens=1*" %%P in ("!rest!") do (
            set "prompt=%%~P"
            set "realvar=%%Q"
        )

        title Linux4win - read

        rem --- read input
        set /p "input=!prompt!"

        rem --- store into the real variable
        set "!realvar!=!input!"

        rem --- **also update the command line in the script** so echo works
        set "line=!line:!realvar!=!input!!"

        rem --- clear helpers
        set "input="
        set "prompt="
        set "realvar="

        if not defined IN_SCRIPT goto startagain
        exit /b
    )
)



if /i "!commandinterperter!"=="read -p -n" (
    title Linux4win - read
    pause>nul
    if not defined IN_SCRIPT goto startagain
exit /b
)
echo !commandinterperter! | findstr /i "^if \[" >nul
if not errorlevel 1 (
    call :if
    goto :eof
)


if /i "!commandinterperter:~-3!"==".sh" (
    call :runsh "!commandinterperter!"
    if not defined IN_SCRIPT goto startagain
exit /b
)

where "!commandinterperter!" >nul 2>nul
if errorlevel 1 (
    echo !commandinterperter!: Command not found
) else (
    call cmd /c "!commandinterperter!"
)
if not defined IN_SCRIPT goto startagain
exit /b

call !commandinterperter!
if "!commandinterperter!"=="" if not defined IN_SCRIPT goto startagain
exit /b
goto startagain

:runsh
set "IN_SCRIPT=1"
set "SCRIPT_ECHO=1"
set "shfile=%~1"

if not exist "%shfile%" (
    echo %shfile%: No such file
    set "IN_SCRIPT="
    exit /b
)

for /f "usebackq delims=" %%L in ("%shfile%") do (
    call :execshline "%%L"
)


set "IN_SCRIPT="
set "SCRIPT_ECHO="
exit /b

:execshline
set "line=%~1"
for /f "tokens=* delims= " %%A in ("!line!") do set "line=%%A"
if "!line!"=="" exit /b
if "!line:~0,1!"=="#" exit /b
if /i "!line!"=="stty -echo" (set "SCRIPT_ECHO=" & exit /b)
if /i "!line!"=="stty echo" (set "SCRIPT_ECHO=1" & exit /b)
echo !line! | findstr /r "^[a-zA-Z0-9_]*() " >nul
if not errorlevel 1 (
    for /f "tokens=1,* delims= " %%A in ("!line!") do (
        set "fname=%%A"
        set "fbody=%%B"
    )
    set "fname=!fname:()=!"
    > "%FUNC_DIR%\!fname!.cmd" echo !fbody!
    exit /b
)
if exist "%FUNC_DIR%\!line!.cmd" (
    call "%FUNC_DIR%\!line!.cmd"
    exit /b
)
set "commandinterperter=!line!"
call :dispatch
exit /b


:dispatch
if /i "!commandinterperter!"=="echo" (
    echo.
    exit /b
)

call :commandforfirst
exit /b


:if
for /f "tokens=4 delims= " %%A in ("!commandinterperter!") do set "filevar=%%A"
set "filevar=!filevar:"=!"
set "filevar=!filevar:]=!"
set "after_then=!commandinterperter:*then =!"
for /f "tokens=1* delims=~" %%X in ("!after_then: else=~!") do (
    set "then_cmd=%%X"
    set "else_cmd=%%Y"
)
call set "filevar_expanded=!filevar!"
if exist "!filevar_expanded!" (
    cmd /c "!then_cmd!"
) else (
    cmd /c "!else_cmd!"
)
set "commandinterperter="
if not defined IN_SCRIPT goto startagain
exit /b
