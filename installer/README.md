# Clipboard History Windows installer

The Windows installer is named **Clipboard_History_Setup.exe**. Build it using GitHub Actions or scripts/build-installer.ps1. The executable and its .sha256 checksum are distributed as Actions artifacts; they are not checked into the source tree.

Go to Actions > Build Windows installer > latest successful run > Artifacts > Clipboard_History_Windows_Installer. Download and extract the artifact, then verify the SHA-256 checksum using PowerShell:

    Get-FileHash .\Clipboard_History_Setup.exe -Algorithm SHA256

Compare the result with Clipboard_History_Setup.exe.sha256. The installer is unsigned and Windows SmartScreen may warn. Historical pre-release assets retain their original filenames and checksums.
