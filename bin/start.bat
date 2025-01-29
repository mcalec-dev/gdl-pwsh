@echo off
set CurrentDir=%CD%
set FileName=gdl.exe
if exist %ProgramFiles%\PowerShell\7-preview\pwsh.exe (
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else if exist %ProgramFiles%\PowerShell\7\pwsh.exe (
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  taskkill /IM "WindowsTerminal.exe" /F & start conhost.exe %CurrentDir%\%FileName%
  exit
) else (
  echo PowerShell was not found.
  pause
  taskkill /IM "WindowsTerminal.exe" /F
  exit
)