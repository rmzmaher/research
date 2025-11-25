# Ramez Abdalla, Ph.D. - Academic Website

This is the GitHub Pages website for Dr. Ing. Ramez Abdalla, showcasing research in computational fluid dynamics, AI applications in energy systems, and flow assurance.

## Setup Instructions

### Adding Your Google Scholar Profile Photo

1. Find your Google Scholar profile URL (e.g., `https://scholar.google.com/citations?user=YOUR_SCHOLAR_ID`)
2. Replace `YOUR_SCHOLAR_ID` in all HTML files with your actual Google Scholar user ID
3. Alternatively, download your profile photo and save it as `figures/profile-photo.jpg`

### Adding Research Figures and GIFs

Place your research figures and animations in the `figures/` directory:
- `pinn-architecture.png` - PINN architecture diagram
- `pinn-training-process.gif` - Training process animation
- `pinn-results-comparison.png` - Results comparison
- `pinn-performance-metrics.png` - Performance metrics
- Add other figures as referenced in the research topic pages

### GitHub Pages Deployment

1. Push this repository to GitHub
2. Go to Settings > Pages
3. Select the main branch as the source
4. Your site will be available at `https://YOUR_USERNAME.github.io/resume/`

## File Structure

```
├── index.html              # Main profile page
├── research.html           # Research topics overview
├── publications.html       # Detailed publications page
├── projects.html          # Research projects page
├── styles.css             # Main stylesheet
├── figures/               # Research figures and images
│   └── profile-photo.jpg  # Your profile photo (fallback)
└── research-topics/       # Individual research topic pages
    ├── pinns.html
    ├── reinforcement-learning.html
    ├── cloud-ai.html
    ├── predictive-maintenance.html
    ├── virtual-flow-metering.html
    ├── flow-assurance.html
    ├── waterflooding.html
    └── autonomous-drilling.html
```

## Customization

- Update contact information in all HTML files
- Add your Google Scholar ID to enable profile photo loading
- Add research figures to the `figures/` directory
- Customize colors in `styles.css` (CSS variables at the top)

