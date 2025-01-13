$id = "mikf.gallery-dl"
winget list -q $id | Out-Null
if ($?) {  
  Write-Output "$id installed"
  Pause
}