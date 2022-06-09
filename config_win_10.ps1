# Instalando Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


choco install vscode -y
choco install androidstudio -y
choco install slack -y
choco install inkscape --version 1.2 -y
choco install gimp --version 2.10.30 -y
choco install godot -y
choco install 7zip -y
choco install putty -y