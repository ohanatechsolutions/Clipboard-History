#define MyAppName "Clipboard History"
#define MyAppVersion "1.2.2"
#define MyAppPublisher "Ohana Tech Solutions"
#define MyAppExeName "ClipboardHistory.exe"

[Setup]
AppId={{6F6A1C42-281E-4286-A98F-6E8A276C9112}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={localappdata}\Programs\Clipboard History
DefaultGroupName=Clipboard History
PrivilegesRequired=lowest
UsePreviousAppDir=no
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\{#MyAppExeName}
SetupIconFile=..\src\ClipboardHistory\Resources\App.ico
OutputDir=..\dist\setup
OutputBaseFilename=Clipboard_History_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
CloseApplications=yes
RestartApplications=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "..\dist\publish\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\Clipboard History"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\Clipboard History"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[InstallDelete]
; Remove stale shortcuts/executable from version 1.0 without touching saved clipboard history.
Type: files; Name: "{autoprograms}\OTS Clipboard.lnk"
Type: files; Name: "{autodesktop}\OTS Clipboard.lnk"
Type: files; Name: "{localappdata}\Programs\OTS Clipboard\OTS.Clipboard.exe"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Clipboard History"; Flags: nowait postinstall skipifsilent
