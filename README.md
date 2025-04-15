# Yasin Ertekin Portfolio

A personal portfolio website built with Flutter Web.

## Features

- Responsive design for desktop and mobile
- Localization support (English & Turkish)
- Dark/Light theme toggle
- About section with skills
- Projects showcase
- Social media links

## Setup for Development

1. Clone the repository
```bash
git clone https://github.com/yasin-ertekin/yasin_ertekin_portfolio.git
cd yasin_ertekin_portfolio
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run -d chrome
```

## Deployment to GitHub Pages

1. Build the web application
```bash
flutter build web --release --base-href /yasin-ertekin.github.io/
```

2. Deploy to GitHub Pages
```bash
git add .
git commit -m "Deploy to GitHub Pages"
git push origin main
```

3. Configure GitHub repository settings to use GitHub Pages

## Project Structure

- `lib/components/` - Reusable UI components
- `lib/screens/` - Main screens of the application
- `lib/providers/` - State management providers
- `lib/themes/` - Theme configurations
- `lib/l10n/` - Localization files
- `lib/models/` - Data models
- `lib/utils/` - Utility functions
- `lib/services/` - API services and business logic

## Attribution

This project is created by Yasin Ertekin.
