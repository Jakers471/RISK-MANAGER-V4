# Safe Command Aliases for Multi-AI Environment
# Prevents hangs and pauses in terminal operations

# Git Commands (Safe)
function Safe-GitStatus { git status | Out-String }
function Safe-GitLog { git log --oneline | Out-String }
function Safe-GitDiff { git diff | Out-String }
function Safe-GitAdd { git add . }
function Safe-GitCommit { param($Message) git commit -m $Message }
function Safe-GitPush { git push }
function Safe-GitPull { git pull }

# File Operations (Safe)
function Safe-ListFiles { Get-ChildItem | Out-String }
function Safe-ListFilesRecursive { Get-ChildItem -Recurse | Out-String }
function Safe-FindFiles { param($Pattern) Get-ChildItem -Recurse -Filter $Pattern | Out-String }

# Directory Operations (Safe)
function Safe-ListDirectories { Get-ChildItem -Directory | Out-String }
function Safe-CreateDirectory { param($Path) New-Item -ItemType Directory -Path $Path -Force }
function Safe-RemoveDirectory { param($Path) Remove-Item -Path $Path -Recurse -Force }

# File Content Operations (Safe)
function Safe-ReadFile { param($Path) Get-Content $Path | Out-String }
function Safe-WriteFile { param($Path, $Content) Set-Content -Path $Path -Value $Content }
function Safe-AppendFile { param($Path, $Content) Add-Content -Path $Path -Value $Content }

# Network Operations (Safe)
function Safe-Curl { param($Url) Invoke-WebRequest -Uri $Url -TimeoutSec 10 | Select-Object -ExpandProperty Content }

# Process Operations (Safe)
function Safe-GetProcesses { Get-Process | Out-String }
function Safe-KillProcess { param($Name) Stop-Process -Name $Name -Force }

# System Information (Safe)
function Safe-GetSystemInfo { Get-ComputerInfo | Out-String }
function Safe-GetDiskSpace { Get-WmiObject -Class Win32_LogicalDisk | Out-String }

Write-Host "Safe commands loaded successfully!" -ForegroundColor Green
