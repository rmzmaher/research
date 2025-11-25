# Quick Push Guide - rmzmaher GitHub Account

## Step-by-Step Commands

Run these commands in your terminal (PowerShell or Git Bash):

```bash
# 1. Initialize repository (if needed)
git init

# 2. Add remote (rmzmaher account)
git remote add origin https://github.com/rmzmaher/research.git

# 3. Stage all files
git add index.html research.html publications.html projects.html styles.css _config.yml .gitignore README.md get-scholar-image.md
git add research-topics/
git add figures/

# 4. Create commit
git commit -m "Initial commit: Research website with technical content and publications"

# 5. Push to GitHub
# You'll be prompted for username (rmzmaher) and password (use Personal Access Token)
git push -u origin main
```

## Authentication

When prompted for credentials:
- **Username**: `rmzmaher`
- **Password**: Use a **Personal Access Token** from the rmzmaher GitHub account

### Create Personal Access Token:
1. Log in to GitHub as `rmzmaher`
2. Go to: Settings → Developer settings → Personal access tokens → Tokens (classic)
3. Click "Generate new token (classic)"
4. Name it: "Research Website Push"
5. Select scope: `repo` (full control of private repositories)
6. Click "Generate token"
7. **Copy the token immediately** (you won't see it again)
8. Use this token as your password when pushing

## Enable GitHub Pages

After pushing:
1. Visit: https://github.com/rmzmaher/research
2. Go to: Settings → Pages
3. Source: Deploy from a branch
4. Branch: `main` → `/ (root)`
5. Save

Your site will be live at: **https://rmzmaher.github.io/research/**

