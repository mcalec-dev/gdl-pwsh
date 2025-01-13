@echo off
set CurrentDir=%CD%
set PsFile=run.ps1
if exist %ProgramFiles\PowerShell\7-preview\pwsh.exe (
  taskkill /IM "WindowsTerminal.exe" /F
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  exit
) else if exist %ProgramFiles%\PowerShell\7\pwsh.exe (
  taskkill /IM "WindowsTerminal.exe" /F
  start conhost.exe pwsh -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  exit
) else if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  taskkill /IM "WindowsTerminal.exe" /F
  start conhost.exe powershell -ExecutionPolicy Bypass -File %CurrentDir%\%PsFile%
  exit
) else (
  echo PowerShell was not found.
  pause
  exit
  taskkill /IM "WindowsTerminal.exe" /F
)
exit