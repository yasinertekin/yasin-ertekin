# Yasin Ertekin Portfolio

A personal portfolio website built with Flutter Web.

🌐 [Live Demo](https://yasinertekin.github.io/yasin_ertekin_portfolio/)

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
git clone https://github.com/yasinertekin/yasin_ertekin_portfolio.git
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

## Project Structure

- `lib/core/` - Core functionality and shared components
  - `constants/` - Application constants
  - `model/` - Data models
  - `notifier/` - State management
  - `storage/` - Storage services
  - `utils/` - Utility functions
  - `widgets/` - Reusable UI components
- `lib/app/` - Application specific code
  - `themes/` - Theme configurations
- `lib/features/` - Feature specific screens
- `lib/l10n/` - Localization files

## Deployment

The project is automatically deployed to GitHub Pages when changes are pushed to the `gh-pages` branch.

To manually deploy:

1. Build the web application

```bash
flutter build web --base-href /yasin_ertekin_portfolio/
```

2. Deploy to GitHub Pages

```bash
git checkout gh-pages
cp -r build/web/* .
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages
```

## Attribution

This project is created by Yasin Ertekin.
