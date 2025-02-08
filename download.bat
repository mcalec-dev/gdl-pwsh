@echo off
title Enter a URL
set /p URL=Enter a URL: 
cls
title Downloading...
gallery-dl %URL%
pause
cls
title Download more?
set /p more=Do you want to download more? [Y]es or [N]o: 
if %more%==y start download.bat
if %more%==y exit
if %more%==n goto b
:b
cls
exit
