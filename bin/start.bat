@echo off
set CurrentDir=%CD%
set FileName=gdl-pwsh.exe
if exist %ProgramFiles%\PowerShell\7-preview\pwsh.exe (
  :: tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  :: FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  :: start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%FileName%
  :: exit
  :: :bb
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else if exist %ProgramFiles%\PowerShell\7\pwsh.exe (
  :: tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  :: FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  :: start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%FileName%
  :: exit
  :: :bb
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  :: tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  :: FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  :: start conhost.exe powershell -ExecutionPolicy Bypass -File %CurrentDir%\%FileName%
  :: exit
  :: :bb
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else (
  echo PowerShell was not found.
  pause
  taskkill /IM "WindowsTerminal.exe" /F
  exit
)