Import-Module oh-my-posh
Import-Module z
Import-Module Get-ChildItemColor

Set-Theme Avit

$env:LC_ALL='C.UTF-8'

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias vim nvim
Set-Alias cat bat
Set-Alias rmf removeAllFiles

function removeAllFiles { rm -Force $args }
