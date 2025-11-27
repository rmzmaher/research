# Temporary Push to rmzmaher Account (Without Changing Global Settings)

This guide shows how to push to the rmzmaher GitHub account **only for this repository** without changing your global Git configuration.

## Method 1: Local Repository Config (Recommended)

Run these commands **only in this repository**:

```bash
# 1. Set local git config for this repo only (doesn't affect global settings)
git config --local user.name "rmzmaher"
git config --local user.email "your-rmzmaher-email@example.com"

# 2. Initialize and add remote
git init
git remote add origin https://github.com/rmzmaher/research.git

# 3. Stage files
git add .

# 4. Commit
git commit -m "Initial commit: Research website"

# 5. Push (will prompt for credentials)
git push -u origin main
```

**When prompted for credentials:**
- Username: `rmzmaher`
- Password: Use a **Personal Access Token** from the rmzmaher account

## Method 2: Using Credential Helper (Temporary)

This stores credentials only for this repository:

```bash
# 1. Set credential helper for this repo only
git config --local credential.helper store

# 2. Add remote
git remote add origin https://github.com/rmzmaher/research.git

# 3. Push (enter credentials once, they'll be saved locally)
git push -u origin main
```

Credentials will be stored in: `.git/credentials` (only for this repo)

## Method 3: Using Personal Access Token in URL (One-time)

You can embed the token directly in the remote URL (temporary):

```bash
# Add remote with token (replace YOUR_TOKEN with actual token)
git remote add origin https://YOUR_TOKEN@github.com/rmzmaher/research.git

# Push
git push -u origin main
```

**Note:** After pushing, you can remove the token from the URL:
```bash
git remote set-url origin https://github.com/rmzmaher/research.git
```

## Method 4: Using SSH with Different Key (Most Secure)

1. **Generate a new SSH key for rmzmaher account:**
   ```bash
   ssh-keygen -t ed25519 -C "rmzmaher-email@example.com" -f ~/.ssh/id_ed25519_rmzmaher
   ```

2. **Add to SSH config** (`~/.ssh/config`):
   ```
   Host github-rmzmaher
       HostName github.com
       User git
       IdentityFile ~/.ssh/id_ed25519_rmzmaher
   ```

3. **Add public key to rmzmaher GitHub account:**
   - Copy: `~/.ssh/id_ed25519_rmzmaher.pub`
   - Add to: GitHub → Settings → SSH and GPG keys

4. **Use SSH remote:**
   ```bash
   git remote add origin git@github-rmzmaher:rmzmaher/research.git
   git push -u origin main
   ```

## Verify Your Global Settings Are Unchanged

After pushing, verify your global account is still the same:

```bash
# Check global config (should be your original account)
git config --global user.name
git config --global user.email

# Check local config (should be rmzmaher for this repo only)
git config --local user.name
git config --local user.email
```

## Quick Commands Summary

**For this repository only:**
```bash
git config --local user.name "rmzmaher"
git config --local user.email "rmzmaher-email@example.com"
git init
git remote add origin https://github.com/rmzmaher/research.git
git add .
git commit -m "Initial commit: Research website"
git push -u origin main
```

**Your global settings remain unchanged!**

