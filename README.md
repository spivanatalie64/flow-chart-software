# FlowForge — Amazintg Flow Chart Software

**FlowForge** is a feature-rich, browser-based flow chart editor with SVG rendering, drag-and-drop node creation, auto-layout, import/export, and real-time collaboration capabilities.

## ✨ Features

- **🎨 SVG-Based Rendering** — Crisp, resolution-independent vector graphics
- **🤖 Drag & Drop** — Pull nodes from the palette, drop onto canvas
- **🔗 Smart Connections** — Click-to-connect with curved bezier paths
- **⚡ Auto Layout** — One-click hierarchical layout algorithm
- **🎭 Multiple Node Shapes** — Process, Decision, Start/End, Database, Input/Output, Subprocess, Document
- **🎨 Custom Properties** — Edit labels, colors, sizes in real-time
- **🖼 Export** — Export to JSON (full fidelity) or SVG (vector)
- **📥 Import** — Load previously saved flowcharts from JSON
- **🔍 Zoom & Pan** — Smooth zoom (scroll wheel), pan (middle-click/shift+drag)
- **🗺 Minimap** — Birds-eye view of the entire diagram
- **↩ Undo/Redo** — Full history with Ctrl+Z / Ctrl+Y
- **📋 Copy/Paste/Duplicate** — Ctrl+C, Ctrl+V, Ctrl+D
- **⌨️ Keyboard Shortcuts** — Power-user friendly
- **🌙 Dark Theme** — Beautiful dark UI out of the box

## 🚀 Quick Start

```bash
# Clone it
git clone https://github.com/spivanatalie64/flow-chart-software.git
cd flow-chart-software

# Serve it (requires Node.js)
npx serve public -l 3000

# Or just open the file in your browser
open public/index.html
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

## 🎮 Usage

| Action | How |
|--------|-----|
| **Add a node** | Click any item in the left palette |
| **Move a node** | Drag it on the canvas |
| **Connect nodes** | Click the small circle on a node, then click another node |
| **Select** | Click a node or connection |
| **Edit label** | Double-click a node |
| **Delete** | Select and press Delete/Backspace |
| **Pan** | Middle-click drag or Shift+drag |
| **Zoom** | Scroll wheel |
| **Auto Layout** | Click the ⚡ button in toolbar |
| **Export** | 📥 Export JSON or 🖼 Export SVG |

## 🏗 Project Structure

```
flow-chart-software/
├── public/
│   └── index.html        ← Standalone single-page application (~1300 lines)
├── package.json           ← Project metadata
├── README.md              ← You are here
└── LICENSE                ← MIT
```

## 🔧 Tech

Pure vanilla JavaScript, SVG, and CSS — zero dependencies required. Runs in every modern browser.

## 📜 License

MIT — Free to use, modify, and distribute.

---

Built with ❤️ by Natalie & the FlowForge team.
