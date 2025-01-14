$tempFolder = "$($env:TEMP)\gdl-pwsh"
New-Item -Path $tempFolder -ItemType Directory -Force | Out-Null | Clear-Host
Invoke-WebRequest -Uri "https://git.mcalec.dev/gallerydl-pwsh/modules/testforwt.ps1" -OutFile $tempFolder\testforwt.ps1 | Out-Null | Clear-Host
Invoke-WebRequest -Uri "https://git.mcalec.dev/gallerydl-pwsh/modules/variables.ps1" -OutFile $tempFolder\variables.ps1 | Out-Null | Clear-Host
Import-Module -Name $tempFolder\testforwt.ps1
Import-Module -Name $tempFolder\variables.ps1 | Clear-Host
function DownloadAll {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting All Downloads"
  Write-Host "-- Starting All Downloads --" -ForegroundColor DarkGreen
  BlueskyDL
  DeviantartDL
  e621DL
  FurAffinityDL
  PatreonDL
  PinterestDL
  ToyhouseDL
  TumblrDL
  TwitterDL
  Clear-Host
  Write-Host "-- Finished All Downloads --" -ForegroundColor DarkGreen
  Write-Host "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  StartMainMenu
}
function BlueskyDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Bluesky Downloads"
  Write-Host "-- Starting Bluesky Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\bluesky\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Bluesky Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Bluesky Downloads"
}
function DeviantartDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Deviantart Downloads"
  Write-Host "-- Starting Deviantart Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\deviantart\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Deviantart Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Deviantart Downloads"
}
function e621DL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting e621 Downloads"
  Write-Host "-- Starting e621 Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\e621\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished e621 Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished e621 Downloads"
}
function FurAffinityDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting FurAffinity Downloads"
  Write-Host "-- Starting FurAffinity Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\furaffinity\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished FurAffinity Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished FurAffinity Downloads"
}
function PatreonDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Patreon Downloads"
  Write-Host "-- Starting Patreon Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\patreon\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Patreon Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Patreon Downloads"
}
function PinterestDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Pinterest Downloads"
  Write-Host "-- Starting Pinterest Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) $($pinterestfix) -i .\pinterest\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Pinterest Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Pinterest Downloads"
}
function ToyhouseDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Toyhouse Downloads"
  Write-Host "-- Starting Toyhouse Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) $($toyhousefix) -i .\toyhouse\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Toyhouse Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Toyhouse Downloads"
}
function TumblrDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Tumblr Downloads"
  Write-Host "-- Starting Tumblr Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\tumblr\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Tumblr Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Tumblr Downloads"
}
function TwitterDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Twitter Downloads"
  Write-Host "-- Starting Twitter Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i .\twitter\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Twitter Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Twitter Downloads"
}
function ExitScript {
  Clear-Host
  Write-Output "Closing..."
  Exit-PSHostProcess
  Exit-PSSession
  Exit
}
function CheckForUpdates {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting gallery-dl Update"
  Write-Host "-- Starting gallery-dl Update --" -ForegroundColor DarkGreen
  Write-Host "Opening elevated PowerShell window..."
  Start-Process powershell 'winget upgrade mikf.gallery-dl' -Verb runAs -Wait
  Write-Host "Opening elevated PowerShell window..."
  Start-Process powershell 'gallery-dl --update' -Verb runAs -Wait
  Clear-Host
  Write-Host "-- Finished gallery-dl Update --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished gallery-dl Update"
  Write-Host "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  StartMainMenu
}
function FixModTime {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting Fixing Downloads"
  Write-Host "-- Starting Fixing Downloads --" -ForegroundColor DarkGreen
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\bluesky\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\deviantart\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\e621\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\furaffinity\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\patreon\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false $($pinterestfix) -i .\pinterest\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false $($toyhousefix) -i .\toyhouse\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\tumblr\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Start-Process $gallerydl -ArgumentList "--no-download --mtime-from-date -o skip=false -i .\twitter\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
  Write-Host "-- Finished Fixing Downloads --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished Fixing Downloads"
  Pause
  Clear-Host
  StartMainMenu
}
function DownloadOtherText {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Download Other - gallery-dl"
  Write-Host '[1] Bluesky' -ForegroundColor White
  Write-Host '[2] Deviantart' -ForegroundColor White
  Write-Host '[3] e621' -ForegroundColor White
  Write-Host '[4] FurAffinity' -ForegroundColor White
  Write-Host '[5] Patreon' -ForegroundColor White
  Write-Host '[6] Pinterest' -ForegroundColor White
  Write-Host '[7] Toyhouse' -ForegroundColor White
  Write-Host '[8] Tumblr' -ForegroundColor White
  Write-Host '[9] Twitter' -ForegroundColor White
  Write-Host '[Q] Go Back' -ForegroundColor Red
  Write-Host ''
}
function DownloadOther {
  do {
    Clear-Host
    DownloadOtherText
    $key = [System.Console]::ReadKey($true).KeyChar
    switch ($key) {
      "1" { Clear-Host;BlueskyDL;DownloadOther }
      "2" { Clear-Host;DeviantartDL;DownloadOther }
      "3" { Clear-Host;e621DL;DownloadOther }
      "4" { Clear-Host;FurAffinityDL;DownloadOther }
      "5" { Clear-Host;PatreonDL;DownloadOther }
      "6" { Clear-Host;PinterestDL;DownloadOther }
      "7" { Clear-Host;ToyhouseDL;DownloadOther }
      "8" { Clear-Host;TumblrDL;DownloadOther }
      "9" { Clear-Host;TwitterDL;DownloadOther }
      "q" { Clear-Host;StartMainMenu }
      default { 
        Clear-Host
        Write-Host "Invaild Option" -ForegroundColor Red
        Write-Host "Press any key to continue."
        $host.UI.RawUI.ReadKey()
        Clear-Host
        DownloadOther
      }
    }
  } while ($key -ne $otherkeyargs)
}
function InstallGalleryDL {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Starting gallery-dl Install"
  Write-Host "-- Starting gallery-dl Install --" -ForegroundColor DarkGreen
  Write-Host "Opening elevated PowerShell window..."
  Start-Process powershell 'winget install mikf.gallery-dl' -Verb runAs -Wait
  Write-Host "Opening elevated PowerShell window..."
  Start-Process powershell 'gallery-dl --update' -Verb runAs -Wait
  Clear-Host
  Write-Host "-- Finished gallery-dl Install --" -ForegroundColor DarkGreen
  $host.UI.RawUI.WindowTitle = "Finished gallery-dl Install"
  Write-Host "Press any key to continue."
  $host.UI.RawUI.ReadKey()
  StartMainMenu
}
function MainMenuText {
  Clear-Host
  $host.UI.RawUI.WindowTitle = "Main Menu - gallery-dl"
  Write-Host '===================================' 
  Write-Host '            gallery-dl             ' -ForegroundColor Cyan
  Write-Host '        PowerShell Script          '
  Write-Host ''
  Write-Host '             By McAlec             ' -ForegroundColor Blue
  Write-Host '==================================='
  Write-Host ''
  Write-Host ' [1] Download All                  ' -ForegroundColor DarkGreen
  Write-Host ' [2] Download Other                ' -ForegroundColor DarkGreen
  Write-Host ' [3] Check for Updates             ' -ForegroundColor White
  Write-Host ' [4] Fix Modified Time on All      ' -ForegroundColor White
  Write-Host ' [0] Install gallery-dl            ' -ForegroundColor Magenta
  Write-Host ' [?] Help                          ' -ForegroundColor Cyan
  Write-Host ' [Q] Exit                          ' -ForegroundColor Red
  Write-Host "`ngallery-dl $($version)           "
  Write-Host ''
}
function StartMainMenu {
  do {
    Clear-Host
    MainMenuText
    $key = [System.Console]::ReadKey($true).KeyChar
    switch ($key) {
      "1" { Clear-Host;DownloadAll }
      "2" { Clear-Host;DownloadOther }
      "3" { Clear-Host;CheckForUpdates }
      "4" { Clear-Host;FixModTime }
      "0" { Clear-Host;InstallGalleryDL }
      "q" { Clear-Host;ExitScript }
      default { 
        Clear-Host
        Write-Host "Invaild Option" -ForegroundColor Red
        Write-Host "Press any key to continue."
        $host.UI.RawUI.ReadKey()
        Clear-Host
        StartMainMenu
      }
    }
  } while ($key -ne $keyargs)
}
StartMainMenu