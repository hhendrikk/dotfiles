Import-Module z
Import-Module Get-ChildItemColor

$env:LC_ALL = 'C.UTF-8'

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias vim nvim
Set-Alias cat bat
Set-Alias rmf removeAllFiles

function removeAllFiles { rm -Force $args }

Invoke-Expression (&starship init powershell)

Function runNvmUse([string]$version) {
    Invoke-Expression -Command "nvm use $version"
}

if (Test-Path .nvmrc) {
    $version = Get-Content .nvmrc
    runNvmUse($version)
}
