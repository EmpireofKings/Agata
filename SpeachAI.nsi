; example1.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

;--------------------------------

; The name of the installer
Name "SpeachAI"

; The file to write
OutFile "SpeachAI.exe"

; The default installation directory
InstallDir $DESKTOP\SpeachAI

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------

; Pages

Page directory
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ${EnvVarUpdate} $0 "PATH" "A" "HKCU" $DESKTOP\SpeachAI\webdriver

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "D:\work\SpeachAI\dist\speech_ai"
  
SectionEnd ; end the section
