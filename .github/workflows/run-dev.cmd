@echo off
set "ROOT=%~dp0"
set "NODE_DIR=%ROOT%.tools\node-v24.14.0-win-x64"
set "PATH=%NODE_DIR%;%NODE_DIR%\node_modules\npm\bin;%PATH%"
cd /d "%ROOT%"
"%NODE_DIR%\node.exe" "%NODE_DIR%\node_modules\npm\bin\npm-cli.js" run dev
