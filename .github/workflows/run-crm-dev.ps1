$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$crmRoot = Join-Path $root "windy-crm"
$nodeDir = Join-Path $root ".tools\node-v24.14.0-win-x64"
$npmCli = Join-Path $nodeDir "node_modules\npm\bin\npm-cli.js"

if (!(Test-Path $npmCli)) {
  throw "Portable npm was not found. Run the website dependency installation first."
}

$env:Path = "$nodeDir;$(Join-Path $nodeDir 'node_modules\npm\bin');$env:Path"
Set-Location $crmRoot
& (Join-Path $nodeDir "node.exe") $npmCli run dev
