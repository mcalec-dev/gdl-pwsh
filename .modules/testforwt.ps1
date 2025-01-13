$processName = "WindowsTerminal" 
if (Get-Process -Name $processName -ErrorAction SilentlyContinue) {
  Write-Output "This script is either running in the process '$($processName)' or is open somewhere else."
  Write-Output "Make sure to save any work in the process '$($processName)' and we'll close it for you."
  Write-Output "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  taskkill /IM "WindowsTerminal.exe" /F
  Exit-PSHostProcess
  Exit-PSSession
  Exit
}