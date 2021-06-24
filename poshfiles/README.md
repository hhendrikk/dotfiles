
### Requirements
  - [Install Powershell-Core](https://github.com/PowerShell/PowerShell/releases)
  - [Install Scoop](https://scoop.sh/)


### Install packages with scoop
```bash
scoop bucket add nerd-fonts
sudo scoop install JetBrainsMono-NF-Mono
scoop install bat
scoop install starship
```

### Clone repository

```bash
sudo New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell" -Target "$HOME\.dotfiles\poshfiles"
sudo New-Item -ItemType SymbolicLink -Path "$HOME\.config\starship.toml" -Target "$HOME\.dotfiles\starship.toml"
```

### Enable Execution Scripts PowerShell Local Machine
```bash
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

### Install modules:

```bash
Install-Module z -Scope CurrentUser -AllowClobber
Install-Module 7Zip4Powershell -Scope CurrentUser
Install-Module PSUtil -Scope CurrentUser
Install-Module PSReadline -Scope CurrentUser
Install-Module Get-ChildItemColor -Scope CurrentUser -AllowClobber
```
