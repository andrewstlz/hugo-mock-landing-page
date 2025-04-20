# Hugo Mock Landing Page – Mem&M 🧠

This is a mock landing page for **Mem&M**, a personal memory training app designed to promote cognitive wellness through daily challenges, progress tracking, and engaging activities.

The site is built using [Hugo](https://gohugo.io/) and the [hugo-bootstrap-theme](https://github.com/razonyang/hugo-bootstrap-theme). It is hosted using GitHub Pages.

---

## 🛠 Features

- Custom landing page showcasing the app’s goals
- Theme: `hugo-bootstrap-theme` (Bootstrap-based and responsive)
- GitHub Pages deployment using the `/docs` folder

---

## 🚀 Live Demo

[https://andrewstlz.github.io/hugo-mock-landing-page](https://andrewstlz.github.io/hugo-mock-landing-page)

---

## 📁 Folder Structure

```
hugo-mock-landing-page/
├── content/         # Markdown content (if any)
├── themes/          # Hugo Bootstrap theme
├── docs/            # Built static site (output from Hugo)
├── static/          # Static assets
├── config.toml      # Site configuration
└── index.html       # Optional manual homepage override
```

---

## 🧰 Local Development

To run this project locally:

1. **Install Hugo**  
   [Install instructions](https://gohugo.io/getting-started/install/)

2. **Clone the repo**  
   ```bash
   git clone https://github.com/andrewstlz/hugo-mock-landing-page.git
   cd hugo-mock-landing-page
   ```

3. **Start the local server**  
   ```bash
   hugo server
   ```

4. **View your site** at:  
   [http://localhost:1313](http://localhost:1313)

---

## 📦 Build & Deploy

To build and deploy to GitHub Pages:

```bash
hugo -d docs
git add .
git commit -m "Build site"
git push origin main
```

Make sure the GitHub Pages settings are configured to serve from:

- **Branch**: `main`
- **Folder**: `/docs`

---

## 🧠 About Mem&M

This project is part of a larger initiative to promote daily memory training, supported by features such as:

- Daily memory challenges
- Leaderboards
- Mnemonic technique guides
- Calendar sync for training sessions

See [USER-STORIES.md](./USER-STORIES.md) for more.

---

## 📜 License

MIT License © 2024 Andrew S Wong
