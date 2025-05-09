param(
    [String]$upstream = "zichuan3/scoop:main"
)
if(!$env:SCOOP_HOME){ $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$PSScriptRoot/../bucket" # checks the parent dir
Invoke-Expression -command "& '$autopr' -dir '$dir' -upstream $upstream $($args | ForEach-Object { "$_ " })"
