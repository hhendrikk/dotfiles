[Install Chocolately](https://chocolatey.org/)

### Install packages with chocolatey (mode admin)
```bash
choco install powershell-core
choco install firacode 
choco install bat
```

### Clone repository

```bash
cp powershell $HOME\Documents\PowerShell
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
