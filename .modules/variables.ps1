$ErrorActionPreference = "SilentlyContinue"
$WindowSize = $host.UI.RawUI.WindowSize
$BufferSize = $host.UI.RawUI.BufferSize
$height = 24
$width = 60
$WindowSize.Height = $height
$WindowSize.Width = $width
$BufferSize.Height = $height
$BufferSize.Width = $width
$host.UI.RawUI.WindowSize = $WindowSize
$host.UI.RawUI.BufferSize = $BufferSize
$host.UI.RawUI.WindowPosition = $WindowPostion
$version = gallery-dl --version
$wd = Get-Location
$gallerydl = "gallery-dl"
$keyargs = '"1" -or "2" -or "3" -or "4" -or "q"'
$otherkeyargs = '"1" -or "2" -or "3" -or "4" -or "5" -or "6" -or "7" -or "8" -or "q"'
$pinterestfix = '-o "headers.X-Pinterest-PWS-Handler=www/[username].js"'
$toyhousefix = '-o tls12=false'
$configloc = "-c $($wd)\.config\config.json"
$extraconfig = ""