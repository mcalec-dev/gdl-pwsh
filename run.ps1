Import-Module -Name .\modules\testforwt.ps1
Import-Module -Name .\modules\variables.ps1
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
  Start-Process powershell 'winget.exe upgrade mikf.gallery-dl' -Verb runAs -Wait
  Write-Host "Opening elevated PowerShell window..."
  Start-Process powershell 'gallery-dl.exe --update' -Verb runAs -Wait
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
function DownloadOther {
  $MainDirResults = Get-ChildItem -Path $wd -Filter "urls.txt" -File
  $SubDirResults = Get-ChildItem -Path $wd -Directory | 
  ForEach-Object {
    Get-ChildItem -Path $_.FullName -Filter "urls.txt" -File
  }
  $AllResults = $MainDirResults + $subDirResults
  if ($AllResults) {
    while ($true) {
      Clear-Host
      Write-Host "Enter a number listed below then press 'Enter'`n" -ForegroundColor DarkGreen
      for ($i = 0; $i -lt $AllResults.Count; $i++) {
        Write-Host ("[{0}] {1}" -f ($i + 1), $AllResults[$i].FullName) -ForegroundColor White
      }
      Write-Host "`[Q] Go Back" -ForegroundColor Red
      $selection = Read-Host "`nMake a Selection"
      if ($selection -eq 'Q' -or $selection -eq 'q') {
        StartMainMenu
      }
      try {
        $number = [int]$selection
        if ($number -ge 1 -and $number -le $AllResults.Count) {
          #$currentDir = Split-Path (Split-Path $SubDirResults.FullName -Parent) -Leaf
          $selectedFile = $AllResults[$number - 1]
          if ($selectedFile.FullName -like '*\toyhouse\*') {
            Clear-Host
            $host.UI.RawUI.WindowTitle = "Starting Toyhouse Downloads"
            Write-Host "-- Starting Toyhouse Downloads --" -ForegroundColor DarkGreen
            Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) $($toyhousefix) -i .\toyhouse\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
            Write-Host "-- Finished Toyhouse Downloads --" -ForegroundColor DarkGreen
            $host.UI.RawUI.WindowTitle = "Finished Toyhouse Downloads"
            Write-Host "Press any key to continue."
            $host.UI.RawUI.ReadKey()
            DownloadOther
          } elseif ($selectedFile.FullName -like '*\pinterest\*') {
            Clear-Host
            $host.UI.RawUI.WindowTitle = "Starting Pinterest Downloads"
            Write-Host "-- Starting Pinterest Downloads --" -ForegroundColor DarkGreen
            Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) $($pinterestfix) -i .\pinterest\urls.txt" -WorkingDirectory $wd -NoNewWindow -Wait
            Write-Host "-- Finished Pinterest Downloads --" -ForegroundColor DarkGreen
            $host.UI.RawUI.WindowTitle = "Finished Pinterest Downloads"
            Write-Host "Press any key to continue."
            $host.UI.RawUI.ReadKey()
            DownloadOther
          } else {
            Clear-Host
            $host.UI.RawUI.WindowTitle = "Starting Other Downloads"
            Write-Host "-- Starting Other Downloads --" -ForegroundColor DarkGreen
            Start-Process $gallerydl -ArgumentList "$($configloc) $($extraconfig) -i $($AllResults[$number - 1])" -WorkingDirectory $wd -NoNewWindow -Wait
            Write-Host "-- Finished Other Downloads --" -ForegroundColor DarkGreen
            $host.UI.RawUI.WindowTitle = "Finished Other Downloads"
            Write-Host "Press any key to continue."
            $host.UI.RawUI.ReadKey()
            DownloadOther
          }
        } else {
          Clear-Host
          Write-Host "Invalid Option" -ForegroundColor Red
          Write-Host "Press any key to continue."
          $host.UI.RawUI.ReadKey()
          Clear-Host
        }
      } catch {
        Clear-Host
        Write-Host "Invalid Option" -ForegroundColor Red
        Write-Host "Press any key to continue."
        $host.UI.RawUI.ReadKey()
        Clear-Host
      }
    }
  } else {
    Clear-Host
    Write-Host "`nNo 'urls.txt' files found in the current directory or subdirectories." -ForegroundColor Red
    Write-Host "Press any key to continue."
    $host.UI.RawUI.ReadKey()
    Clear-Host
  }
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
        Write-Host "Invalid Option" -ForegroundColor Red
        Write-Host "Press any key to continue."
        $host.UI.RawUI.ReadKey()
        Clear-Host
        StartMainMenu
      }
    }
  } while ($key -ne $keyargs)
}
StartMainMenu