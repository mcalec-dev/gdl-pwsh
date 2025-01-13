@echo off
set CurrentDir=%CD%
set PsFile=run.ps1
if exist %ProgramFiles%\PowerShell\7-preview\pwsh.exe (
  tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  exit
  :bb
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  taskkill /IM "WindowsTerminal.exe" /F
  exit
) else if exist %ProgramFiles%\PowerShell\7\pwsh.exe (
  tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  exit
  :bb
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  taskkill /IM "WindowsTerminal.exe" /F
  exit
) else if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /FO CSV > %TMP%\search.log
  FOR /F %%A IN (search.log) DO IF %%~zA EQU 0 GOTO bb
  start conhost.exe powershell -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  :bb
  start conhost.exe powershell -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  taskkill /IM "WindowsTerminal.exe" /F
  exit
) else (
  echo PowerShell was not found.
  pause
  taskkill /IM "WindowsTerminal.exe" /F
  exit
)