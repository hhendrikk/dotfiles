Import-Module oh-my-posh
Import-Module z
Import-Module Get-ChildItemColor

Set-Theme Paradox

$env:LC_ALL='C.UTF-8'

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
