
### Requirements
  - [Install Powershell-Core](https://github.com/PowerShell/PowerShell/releases)
  - [Install Scoop](https://scoop.sh/)


### Install packages with scoop
```bash
scoop install FiraCode-NF 
scoop install bat
```

### Clone repository

```bash
New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell" -Target "$HOME\.dotfiles\poshfiles"
```

### Enable Execution Scripts PowerShell Local Machine
```bash
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

### Install modules:

```bash
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module z -Scope CurrentUser -AllowClobber
Install-Module 7Zip4Powershell -Scope CurrentUser
Install-Module PSUtil -Scope CurrentUser
Install-Module PSReadline -Scope CurrentUser
Install-Module Get-ChildItemColor -Scope CurrentUser -AllowClobber
```
