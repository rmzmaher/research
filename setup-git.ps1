# Git Setup Script for Research Website
# This script sets up the repository and prepares it for pushing to GitHub

Write-Host "Setting up Git repository for research website..." -ForegroundColor Green

# Check if .git exists in current directory
if (Test-Path .git) {
    Write-Host ".git folder found in current directory" -ForegroundColor Yellow
} else {
    Write-Host "Initializing new Git repository..." -ForegroundColor Yellow
    git init
}

# Add remote repository
Write-Host "`nConfiguring remote repository..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/rmzmaher/research.git

# Check remote
Write-Host "`nRemote configured:" -ForegroundColor Green
git remote -v

# Stage all files
Write-Host "`nStaging files..." -ForegroundColor Green
git add index.html
git add research.html
git add publications.html
git add projects.html
git add styles.css
git add _config.yml
git add .gitignore
git add README.md
git add get-scholar-image.md
git add research-topics/*.html
git add figures/README.md

# Check status
Write-Host "`nGit status:" -ForegroundColor Green
git status

Write-Host "`n`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Review the staged files above" -ForegroundColor White
Write-Host "2. Create initial commit: git commit -m 'Initial commit: Research website'" -ForegroundColor White
Write-Host "3. Push to GitHub: git push -u origin main" -ForegroundColor White
Write-Host "`nNote: You'll need to authenticate with the rmzmaher GitHub account" -ForegroundColor Yellow
Write-Host "You may need to use a personal access token or SSH key" -ForegroundColor Yellow

