# PowerShell Script: Push to rmzmaher account (temporary, local only)
# This script configures git for THIS repository only, without changing global settings

Write-Host "=== Temporary Git Setup for rmzmaher Account ===" -ForegroundColor Cyan
Write-Host "This will only affect THIS repository, not your global Git settings" -ForegroundColor Yellow
Write-Host ""

# Check if already initialized
if (-not (Test-Path .git)) {
    Write-Host "Initializing Git repository..." -ForegroundColor Green
    git init
} else {
    Write-Host "Git repository already initialized" -ForegroundColor Yellow
}

# Set local config (doesn't affect global)
Write-Host "`nSetting local Git config (rmzmaher account)..." -ForegroundColor Green
$email = Read-Host "Enter rmzmaher GitHub email"
git config --local user.name "rmzmaher"
git config --local user.email $email

# Add remote
Write-Host "`nAdding remote repository..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/rmzmaher/research.git

# Show current remotes
Write-Host "`nRemote configured:" -ForegroundColor Green
git remote -v

# Stage files
Write-Host "`nStaging files..." -ForegroundColor Green
git add index.html research.html publications.html projects.html styles.css _config.yml .gitignore README.md get-scholar-image.md GIT_SETUP_INSTRUCTIONS.md QUICK_PUSH_GUIDE.md TEMP_PUSH_INSTRUCTIONS.md
git add research-topics/
git add figures/

# Show status
Write-Host "`nGit status:" -ForegroundColor Green
git status

Write-Host "`n=== Ready to Commit and Push ===" -ForegroundColor Cyan
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Review staged files above" -ForegroundColor White
Write-Host "2. Create commit: git commit -m 'Initial commit: Research website'" -ForegroundColor White
Write-Host "3. Push: git push -u origin main" -ForegroundColor White
Write-Host "`nWhen prompted:" -ForegroundColor Yellow
Write-Host "  - Username: rmzmaher" -ForegroundColor White
Write-Host "  - Password: Use Personal Access Token (not password)" -ForegroundColor White
Write-Host "`nYour global Git settings remain unchanged!" -ForegroundColor Green

