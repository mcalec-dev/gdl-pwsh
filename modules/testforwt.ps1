$windowsterminal = 'WindowsTerminal'
$conhost = 'conhost'
if (Get-Process -Name $windowsterminal -ErrorAction SilentlyContinue) {
  Write-Output "This script is either running in the process '$($windowsterminal)' or is open somewhere else."
  Write-Output "Make sure to save any work in the process '$($windowsterminal)' and we'll close it for you."
  Write-Output "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  taskkill /IM "WindowsTerminal.exe" /F
  Exit-PSHostProcess
  Exit-PSSession
  Exit
} elseif (Get-Process -Name $conhost -ErrorAction SilentlyContinue) {
  Write-Output "$($conhost) is running." | Out-Null
} else {
  Write-Output "An error has occured create a issue on GitHub. https://github.com/mcalec-dev/gallerydl-pwsh/issues"
  Write-Output "Parsing error in testforwt.ps1"
  Write-Output "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  taskkill /IM "WindowsTerminal.exe" /F
  Exit-PSHostProcess
  Exit-PSSession
  Exit
}