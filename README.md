# gdl-pwsh

*gdl-pwsh* is a PowerShell script that uses *gallery-dl* to download image galleries and image hosting sites. The executable is currently only available to Windows.

**P.S. Most of this file was copied from gallery-dl, if you want to see the official documentation check [here](https://github.com/mikf/gallery-dl/blob/master/docs/index.md)**

## Dependencies

- [gallery-dl](https://github.com/mikf/gallery-dl/tree/master?tab=readme-ov-file#installation)
- [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows) 7.5+ (or Windows PowerShell)

### Optional

- [yt-dlp](https://github.com/ytdl-org/youtube-dl) or [yt-dl](https://github.com/ytdl-org/youtube-dl)
- [FFmpeg](https://www.ffmpeg.org/download.html)

## Installation

### Executable

1. Download the latest executable in the releases section or [click here](https://github.com/mcalec-dev/gallerydl-pwsh/releases/latest). It will be callec `gdl.exe` or `gdl-pwsh.exe`. Also, make sure to download the `start.bat` file along with the executable.
2. Put both `gdl-pwsh.exe` and `start.bat` in a folder together. Then run `start.bat`, this should open a command prompt window with the main menu open.
3. Find the option that says "Download gallery-dl" or similar to download *gallery-dl* from WinGet and update from the source.
4. Now you should be all good to continue to download your images with the first and second options on the main menu.


### Manually Downloading

1. Either clone this repo (`git clone https://github.com/mcalec-dev/gdl-pwsh.git` or get the latest `.zip` file from the releases section.
2. Extract and open the folder and double-click the file named `run.bat` (not `run.ps1`). Once the script loads a command prompt window should open. 
3. Find the option that says "Download gallery-dl" or similar to download *gallery-dl* from WinGet and update from the source.
4. Now you should be all good to continue to download your images with the first and second options on the main menu.

Have an issue with the script? Please create an [issue](https://github.com/mcalec-dev/gallerydl-pwsh/issues/new/choose).
