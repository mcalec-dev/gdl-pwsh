$WT = "WindowsTerminal"
$CH = "conhost"
if (Get-Process -Name $WT -ErrorAction SilentlyContinue) {
  Write-Output "This script is either running in the process '$($processName)' or is open somewhere else."
  Write-Output "Make sure to save any work in the process '$($processName)' and we'll close it for you."
  Write-Output "Press any key to continue."
  $host.UI.RawUI.ReadKey() | Out-Null
  taskkill /IM "WindowsTerminal.exe" /F
  Exit-PSHostProcess
  Exit-PSSession
  Exit
} else if (Get-Process -Name $CH -ErrorAction SilentlyContinue) {
	RunMainMenu
}