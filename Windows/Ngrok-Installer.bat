@echo off
setlocal enabledelayedexpansion

rem Specify the name of the executable files you're searching for
set "target_exe_winrar=winrar.exe"
set "target_exe_curl=curl.exe"

rem Specify the arguments to pass to the executables
set "arguments_curl=-L"

rem Specify the paths for downloading and extraction
set "downloaded_zip=C:\Users\%username%\Downloads\ngrok.zip"
set "extract_path=C:\ngrok\"

rem Flags to track if the executables were found and if script executed
set "exe_found_winrar=false"
set "exe_found_curl=false"
set "script_executed=false"

rem Loop through all drives (letters A to Z)
for %%d in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    rem Check if the drive exists
    if exist "%%d:\" (
        rem Search for winrar.exe and curl.exe respectively
        for /f "tokens=*" %%f in ('dir /s /b "%%d:\%target_exe_winrar%" 2^>nul ^| findstr /i /m /r "\\%target_exe_winrar%"') do (
            if not "!exe_found_winrar!"=="true" (
                set "exe_path_winrar=%%f"
                echo Found WinRAR: !exe_path_winrar!
                set "exe_found_winrar=true"
            )
        )
        
        for /f "tokens=*" %%f in ('dir /s /b "%%d:\%target_exe_curl%" 2^>nul ^| findstr /i /m /r "\\%target_exe_curl%"') do (
            if not "!exe_found_curl!"=="true" (
                set "exe_path_curl=%%f"
                echo Found curl: !exe_path_curl!
                set "exe_found_curl=true"
                
                rem Download ngrok.zip based on processor architecture
                if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
                    "!exe_path_curl!" !arguments_curl! https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip -o "!downloaded_zip!"
                ) else if "%PROCESSOR_ARCHITECTURE%"=="x86" (
                    "!exe_path_curl!" !arguments_curl! https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-386.zip -o "!downloaded_zip!"
                )
                
                rem Check if ngrok.zip was successfully downloaded
                if exist "!downloaded_zip!" (
                    rem Set script_executed flag to true
                    set "script_executed=true"
                    
                    rem Exit the script once ngrok.zip is downloaded
                    goto :after_download
                ) else (
                    echo Failed to download ngrok.zip.
                    goto :eof
                )
            )
        )
        
        rem Exit the loop if both executables are found and script has executed
        if "!exe_found_winrar!"=="true" if "!exe_found_curl!"=="true" if "!script_executed!"=="true" (
            goto :eof
        )
    )
)

:after_download
rem After download, check if WinRAR was found and execute if necessary
if "%script_executed%"=="true" if "%exe_found_winrar%"=="true" (
    rem Extract ngrok.zip using WinRAR
    "!exe_path_winrar!" x "!downloaded_zip!" "!extract_path!"
    
    rem Delete ngrok.zip after extraction
    if exist "!extract_path!" (
        del "!downloaded_zip!"
	echo Ngrok was installed successfully in "!extract_path!".
    ) else (
        echo Extraction failed. Keeping "!downloaded_zip!".
    )
) else (
    echo WinRAR not found or script not executed.
)

endlocal
