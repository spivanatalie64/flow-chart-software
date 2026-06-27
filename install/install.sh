#!/usr/bin/env bash
# FlowForge — Install to system application menu
# Run: ./install/install.sh

set -e

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "📦 Installing FlowForge..."

# Install launcher
mkdir -p "$HOME/.local/bin"
cp "$INSTALL_DIR/flowforge" "$HOME/.local/bin/flowforge"
chmod +x "$HOME/.local/bin/flowforge"
echo "  ✅ Launcher → ~/.local/bin/flowforge"

# Install icon
mkdir -p "$HOME/.local/share/icons/hicolor/scalable/apps"
cp "$INSTALL_DIR/flowforge.svg" "$HOME/.local/share/icons/hicolor/scalable/apps/flowforge.svg"
echo "  ✅ Icon → ~/.local/share/icons/hicolor/scalable/apps/"

# Also symlink to pixmap
mkdir -p "$HOME/.local/share/pixmap"
ln -sf "$HOME/.local/share/icons/hicolor/scalable/apps/flowforge.svg" "$HOME/.local/share/pixmap/flowforge.svg" 2>/dev/null || true

# Install .desktop file
mkdir -p "$HOME/.local/share/applications"
cp "$INSTALL_DIR/flowforge.desktop" "$HOME/.local/share/applications/flowforge.desktop"
echo "  ✅ Desktop → ~/.local/share/applications/"

# Desktop shortcut
mkdir -p "$HOME/Desktop"
cp "$INSTALL_DIR/flowforge.desktop" "$HOME/Desktop/FlowForge.desktop"
chmod +x "$HOME/Desktop/FlowForge.desktop" 2>/dev/null || true
echo "  ✅ Shortcut → ~/Desktop/"

# Update icon cache
if which gtk-update-icon-cache &>/dev/null; then
  gtk-update-icon-cache "$HOME/.local/share/icons/hicolor/" 2>/dev/null || true
fi

# Refresh KDE menu
if which kbuildsycoca6 &>/dev/null; then
  echo "  🔄 Refreshing KDE application menu..."
  kbuildsycoca6 --noincremental 2>/dev/null || true
fi

echo ""
echo "✅ FlowForge installed!"
echo "   Find it in your application menu or click the desktop shortcut."
echo "   Run: flowforge"
echo ""
