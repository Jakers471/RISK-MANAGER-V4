# Multi-AI Environment Setup Script
# Run this once to configure your environment

Write-Host "Setting up Multi-AI Environment..." -ForegroundColor Green

# Set Environment Variables
$env:GIT_PAGER = "cat"
$env:LESS = "-R"
$env:GIT_TERMINAL_PROGRESS = "0"

# Create PowerShell Profile if it doesn't exist
$profilePath = $PROFILE.CurrentUserAllHosts
$profileDir = Split-Path $profilePath -Parent

if (!(Test-Path $profileDir)) {
    New-Item -ItemType Directory -Path $profileDir -Force
}

# Add environment setup to profile
$setupContent = @"
# Multi-AI Environment Configuration
`$env:GIT_PAGER = "cat"
`$env:LESS = "-R"
`$env:GIT_TERMINAL_PROGRESS = "0"

# Import safe commands
. "$PWD\safe-commands.ps1"

Write-Host "Multi-AI Environment Loaded" -ForegroundColor Green
"@

Set-Content -Path $profilePath -Value $setupContent -Force

Write-Host "Environment configured successfully!" -ForegroundColor Green
Write-Host "Profile location: $profilePath" -ForegroundColor Yellow
Write-Host "Restart PowerShell or run: . $profilePath" -ForegroundColor Yellow
