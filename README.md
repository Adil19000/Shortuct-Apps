# My Shortcuts 🚀

A super-fast, modern Windows desktop app built with **Electron**, **React**, **Vite**, and **Tailwind CSS v4**. It brings the clean, minimalist look of Google Chrome's new-tab shortcuts page directly to your Windows desktop with instant launching, local disk caching, and full support for websites, programs (.exe), and local folders.

---

## ✨ Features

- **Chrome New-Tab Design**: Round white shortcut icons with clean typography (16px), smooth micro-hover animations (180ms), and custom category tabs.
- **Pre-Added Shortcuts**: 
  - 🌐 [MOFA Visa](https://visa.mofa.gov.sa/)
  - 🌐 [Wafid Medical](https://wafid.com/)
  - Plus Google, YouTube, and GitHub.
- **What a Shortcut Can Open**:
  - **Websites**: Opens in your default browser (Chrome, Edge, etc.) or inside a distraction-free in-app tab.
  - **Laptop Programs (.exe)**: Pick any `.exe` from your laptop (Word, Excel, games, tools) and launch it with one click.
  - **Folders & Files**: Pick any directory or document and Windows will open it immediately.
- **Smart Automatic Icons**:
  - Automatically fetches website favicons and saves them to your laptop for instant offline loading.
  - Automatically extracts native high-resolution Windows icons from `.exe` programs and folders.
  - Fallback to colorful circle badges with the first letter of the shortcut name.
- **Speed & Privacy**:
  - Opens in under 1 second.
  - 100% offline & local storage. No logins, no servers, no databases, zero telemetry.
- **Customizable Appearance**:
  - High-resolution dynamic wallpapers (Cosmic, Alpine, Cyberpunk, Velvet, Sahara) or upload your own wallpaper from your PC.
  - Adjustable soft dark overlay slider so shortcut names stay readable over any wallpaper.
  - Light mode & Dark mode toggle.
- **Keyboard Navigation**:
  - Press `Ctrl + K` or `/` to instantly focus search.
  - Type to filter shortcuts in real time.
  - Press `Enter` to open the top result or search Google / DuckDuckGo / Bing.
- **Drag & Drop**: Easily rearrange shortcuts by dragging them.
- **Settings & Extras**:
  - Launch on Windows startup toggle.
  - Full backup: Export and Import your shortcuts as `.json` files.

---

## 🏃‍♂️ How to Run the App (Beginner Step-by-Step)

### Option 1: Run in Development Mode
Open your PowerShell or terminal in this folder (`d:\Softwears\shortuct`) and type:

```bash
npm run dev
```

This starts the Vite server and immediately launches the desktop app window.

---

## 📦 How to Build the Windows Installer (.exe)

When you are ready to create an installer that you can share or install on any Windows computer:

```bash
npm run build:win
```

This will automatically create:
1. **`dist_electron/My Shortcuts Setup 1.0.0.exe`**: The full Windows installer (adds a Desktop shortcut and Start Menu icon).
2. **`dist_electron/My Shortcuts 1.0.0.exe`**: A portable standalone `.exe` you can put on a USB stick or run without installing!

---

## 📁 Project Structure

```
├── electron/
│   ├── main.cjs         # Electron backend (file launcher, icon extractor, disk cache)
│   └── preload.cjs      # Secure IPC bridge between React and Windows
├── src/
│   ├── components/      # UI components (Grid, Cards, Search, Modals, Tabs)
│   ├── data/            # Pre-added shortcuts & curated wallpapers
│   ├── utils/           # Local storage sync and icon resolvers
│   ├── App.jsx          # Main application orchestrator
│   ├── main.jsx         # React mount point
│   └── index.css        # Tailwind CSS v4 styling & animations
├── package.json         # Scripts and dependencies
└── vite.config.js       # Vite + Tailwind v4 build configuration
```
