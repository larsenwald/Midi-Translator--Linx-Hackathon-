#define MyAppName "MidiWarp"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Larsenwald"
#define MyAppExeName "MidiWarp.exe"
#define MyAppDir "..\dist"
#define MyAppRoot ".."

[Setup]
AppId={{A1B2C3D4-E5F6-7890-ABCD-EF1234567890}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL=https://github.com/larsenwald
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=no
LicenseFile=loopMIDI_notice.txt
OutputDir=.
OutputBaseFilename=MidiWarpInstaller
SetupIconFile={#MyAppRoot}\MidiWarp.ico
WizardStyle=modern
WizardSizePercent=100
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=admin
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "startmenu";   Description: "Create a Start Menu shortcut"; GroupDescription: "Shortcuts:"
Name: "desktopicon"; Description: "Create a Desktop shortcut";    GroupDescription: "Shortcuts:";

[Files]
Source: "{#MyAppDir}\{#MyAppExeName}";    DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\MidiWarp.ico";      DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\MidiWarp_tray.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\loopMIDISetup.exe"; DestDir: "{app}"; Flags: ignoreversion

[Dirs]
Name: "{userappdata}\{#MyAppName}"
Name: "{userappdata}\{#MyAppName}\scripts"

[Icons]
Name: "{group}\{#MyAppName}";         Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\MidiWarp.ico"; Tasks: startmenu
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\MidiWarp.ico"; Tasks: desktopicon

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
