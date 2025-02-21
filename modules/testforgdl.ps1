$id = "mikf.gallery-dl"
winget list -q $id | Out-Null
if ($?) {  
  Write-Output "gallery-dl is installed"
  Start-Sleep 1
}