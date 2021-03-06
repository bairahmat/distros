; $Id: xhbbcc.iss $

#define MyAppName "Object Oriented Harbour GUI"
#define MyAppVerH "XHB"
#define MyAppVerC "BCC"
#define MyAppVerDate GetDateTimeString('yyyy/mm/dd', '.', ':');
#define MyDateOBF GetDateTimeString('yyyy/mm/dd', '_', ':');
#define MyAppPublisher "The OOHG Team"
#define MyAppURL "https://oohg.github.io/"
#if DirExists('W:\OOHG_XB')
   #define MySource "W:\OOHG_XB\*"
#elif DirExists('D:\OOHG_XB')
   #define MySource "D:\OOHG_XB\*"
#else
   #error Input folder not found !!!
#endif

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CA28FD5F-65E7-4B5D-BCA5-56E4A52D3870}
AppName={#MyAppName}
AppVersion={#MyAppVerH} {#MyAppVerC} {#MyAppVerDate}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\OOHG
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=oohg_{#MyAppVerH}_{#MyAppVerC}_{#MyDateOBF}
SetupIconFile=..\resources\OOHG.ico
Compression=lzma
SolidCompression=yes
LicenseFile=license.txt
InfoBeforeFile=infobefore.txt
InfoAfterFile=infoafter_bcc.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Files]
Source: {#MySource}; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName} {#MyAppVerH} {#MyAppVerC} {#MyAppVerDate}}"; Filename: "{uninstallexe}"
