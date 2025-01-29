$tempFolder = "$($env:TEMP)\gdl-pwsh"
New-Item -Path $tempFolder -ItemType Directory -Force | Out-Null
New-Item -Path "$($tempFolder)\modules" -ItemType Directory -Force | Out-Null
Invoke-WebRequest -Uri "https://git.mcalec.dev/gallerydl-pwsh/modules/variables.ps1" -OutFile $tempFolder\modules\variables.ps1 | Out-Null
Invoke-WebRequest -Uri "https://git.mcalec.dev/gallerydl-pwsh/modules/testforwt.ps1" -OutFile $tempFolder\modules\testforwt.ps1 | Out-Null
Invoke-WebRequest -Uri "https://git.mcalec.dev/gallerydl-pwsh/run.ps1" -OutFile $tempFolder\run.ps1
Import-Module $tempFolder\testforwt.ps1
Import-Module $tempFolder\variables.ps1
Import-Module $tempFolder\run.ps1