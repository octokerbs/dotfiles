@echo off
echo ==============================================
echo Chrome Security Configuration for School
echo Preventing data persistence on shared PCs
echo ==============================================

:: Create registry path if it doesn't exist
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /f

:: Disable password saving
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v PasswordManagerEnabled /t REG_DWORD /d 0 /f

:: Disable autofill for forms
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v AutofillAddressEnabled /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v AutofillCreditCardEnabled /t REG_DWORD /d 0 /f

:: Disable saving browsing history
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v SavingBrowserHistoryDisabled /t REG_DWORD /d 1 /f

:: Clear browsing data on exit (cookies, cache, etc.)
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v ClearBrowsingDataOnExit /t REG_DWORD /d 1 /f

:: Force sign-out on browser close
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v SigninInterceptionEnabled /t REG_DWORD /d 0 /f

:: Disable sync to prevent account persistence
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v SyncDisabled /t REG_DWORD /d 1 /f

:: Set session-only cookies (cleared when browser closes)
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultCookiesSetting /t REG_DWORD /d 4 /f

:: Disable "Remember me" options by clearing data on exit
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v ClearBrowsingDataOnExitList /t REG_MULTI_SZ /d "browsing_history\0cookies\0cached_images_and_files\0password_signin\0autofill\0site_settings" /f

:: Optional: Disable Chrome from running in background
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f

:: Show warning when closing multiple tabs (helps prevent accidental closure)
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v ConfirmToQuitEnabled /t REG_DWORD /d 1 /f

echo.
echo ==============================================
echo Configuration Complete!
echo.
echo Chrome is now configured to:
echo - Never save passwords or autofill data
echo - Clear all browsing data on exit
echo - Prevent sync and account persistence  
echo - Clear cookies and sessions when closed
echo.
echo Teachers will need to log in fresh each time
echo Chrome is opened, preventing account persistence.
echo.
echo Please restart Chrome or reboot computers for
echo changes to take effect.
echo ==============================================
pause