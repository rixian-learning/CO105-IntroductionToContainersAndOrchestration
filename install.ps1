choco install vscode -y
choco install git -y

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

Install-Module -Name PackageManagement -Force -MinimumVersion 1.4.6 -Scope CurrentUser -AllowClobber

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

code --force --install-extension ms-dotnettools.csharp
code --force --install-extension ms-azuretools.vscode-docker
code --force --install-extension vscode-icons-team.vscode-icons
code --force --install-extension redhat.vscode-yaml
code --force --install-extension CoenraadS.bracket-pair-colorizer
code --force --install-extension christian-kohler.path-intellisense
code --force --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --force --install-extension ms-vscode.PowerShell
code --force --install-extension yzhang.markdown-all-in-one

Push-Location C:\
mkdir src
Push-Location ./src

git clone "https://github.com/rixian-learning/CO105-IntroductionToContainersAndOrchestration"

Pop-Location
Pop-Location