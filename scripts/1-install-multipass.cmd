@ECHO OFF
SETLOCAL
SET /P INSTALL=Download and install multipass (Y/[N])?
IF /I "%INSTALL%" NEQ "Y" GOTO END

ECHO Downloading https://github.com/canonical/multipass/releases/download/v1.8.0/multipass-1.8.0+win-win64.exe
curl -L -C - https://github.com/canonical/multipass/releases/download/v1.8.0/multipass-1.8.0+win-win64.exe --output ./multipass-1.8.0+win-win64.exe
START multipass-1.8.0+win-win64.exe
ECHO You must now restart your computer and enable Hyper-V, re-run this script in order to finish install.

:END
ENDLOCAL
EXIT