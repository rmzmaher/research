# How to Get Your Google Scholar Profile Image

## Method 1: Direct URL (Recommended)

1. Go to your Google Scholar profile: `https://scholar.google.com/citations?user=YOUR_SCHOLAR_ID`
2. Right-click on your profile photo
3. Select "Copy image address" or "Copy image URL"
4. The URL will look like: `https://scholar.googleusercontent.com/citations?view_op=view_photo&user=YOUR_SCHOLAR_ID&citpid=1`
5. Replace `YOUR_SCHOLAR_ID` in all HTML files with your actual Google Scholar user ID

## Method 2: Download and Use Local Image

1. Go to your Google Scholar profile
2. Right-click on your profile photo
3. Select "Save image as..."
4. Save it as `figures/profile-photo.jpg`
5. The HTML files already have a fallback to this local image

## Finding Your Google Scholar User ID

1. Visit your Google Scholar profile page
2. Look at the URL: `https://scholar.google.com/citations?user=XXXXXXXXX`
3. The part after `user=` is your Google Scholar user ID

## Update All HTML Files

After getting your Google Scholar user ID, replace `YOUR_SCHOLAR_ID` in:
- `index.html`
- `research.html`
- `publications.html`
- `projects.html`
- All files in `research-topics/` directory

