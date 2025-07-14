# 🎨 Custom Zsh Prompt Configuration

A beautiful, feature-rich zsh prompt with Catppuccin Macchiato theme, Powerline-style segments, and dynamic weather integration. Built with a **modular component architecture** for easy customization and maintenance!

![Zsh Prompt Screenshot](./terminal-ui/prompt_line.png)

## ✨ Features

- **👤 User Information**: Display current username with colorful highlighting
- **🖥️ TTY Display**: Shows current terminal session
- **📁 Directory Path**: Compact current directory display
- **🌿 Git Integration**: Shows current git branch when in a repository
- **🌤️ Weather Display**: Dynamic weather icons with day/night detection
- **🌡️ Temperature**: Current temperature display (requires Apple Shortcuts)
- **🕐 Time**: Current time in 24-hour format
- **🎨 Catppuccin Macchiato**: Beautiful pastel color scheme
- **🔲 Powerline Style**: Rounded corner segments for modern look
- **🌈 Decorative Icons**: Colorful right-side prompt decoration
- **🧩 Modular Architecture**: Component-based design for easy customization

## 📁 File Structure

```
.config/zsh/
├── prompt/
│   ├── components/      # Modular prompt components
│   │   ├── directory.zsh    # Directory path display
│   │   ├── git.zsh          # Git branch integration
│   │   ├── prompt_line.zsh  # Prompt line formatting
│   │   ├── time.zsh         # Time display
│   │   ├── tty.zsh          # TTY session display
│   │   ├── user.zsh         # User information
│   │   └── weather.zsh      # Weather and temperature
│   ├── config/          # Configuration files
│   │   └── settings.zsh     # Centralized settings
│   ├── styles/          # Visual styling
│   │   ├── colors.zsh       # Catppuccin Macchiato colors
│   │   └── symbols.zsh      # Powerline symbols and icons
│   └── entry.zsh       # Main prompt orchestration
├── terminal-ui/         # UI assets and screenshots
└── README.md           # This file
```

### File Descriptions

#### Core Files

- **`prompt.zsh`**: Main orchestration file that loads and assembles all components

#### Components (`components/`)

- **`directory.zsh`**: Handles current directory path display with compact formatting
- **`git.zsh`**: Git branch detection and repository status integration
- **`prompt_line.zsh`**: Prompt line formatting and structure management
- **`time.zsh`**: Current time display in 24-hour format
- **`tty.zsh`**: Terminal session (TTY) information display
- **`user.zsh`**: Current username display with colorful highlighting
- **`weather.zsh`**: Weather icon mapping with day/night awareness and temperature caching

#### Configuration (`config/`)

- **`settings.zsh`**: Centralized configuration and customization options

#### Styles (`styles/`)

- **`colors.zsh`**: Catppuccin Macchiato color definitions (pink, mauve, lavender, etc.)
- **`symbols.zsh`**: Powerline symbols for rounded corners and separators

## 🔧 Dependencies

### Required

- **Zsh**: Version 5.0 or higher
- **Nerd Font**: Required for icons and Powerline symbols
  - Recommended: [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)
  - Or any other [Nerd Font](https://www.nerdfonts.com/)

### Optional

- **Apple Shortcuts**: For weather and temperature display (macOS only)
  - Create shortcuts named "Terminal weather" and "Terminal temperature"
- **Git**: For branch display functionality

## 📦 Installation

1. **Clone or download** this configuration to `~/.config/zsh/`:

   ```bash
   git clone <repository-url> ~/.config/zsh
   ```

2. **Install a Nerd Font**:

   ```bash
   # macOS with Homebrew
   brew tap homebrew/cask-fonts
   brew install --cask font-jetbrains-mono-nerd-font
   ```

3. **Source the prompt** in your `~/.zshrc`:

   ```bash
   # Add this line to your ~/.zshrc
   source ~/.config/zsh/prompt/prompt.zsh
   ```

4. **Set up weather shortcuts** (optional, macOS only):
   - Open Shortcuts app
   - Create "Terminal weather" shortcut that returns weather condition text
   - Create "Terminal temperature" shortcut that returns temperature value

5. **Restart your terminal** or run:

   ```bash
   source ~/.zshrc
   ```

## 🧩 Modular Architecture Benefits

The new component-based architecture provides several advantages:

- **🔧 Easy Customization**: Modify individual components without affecting others
- **🚀 Better Maintainability**: Each component handles a specific responsibility
- **📦 Selective Loading**: Disable components you don't need
- **🔍 Clear Organization**: Logical separation of concerns (styles, components, config)
- **⚡ Performance**: Load only what you need

## 🎨 Customization

### Changing Colors

Edit `prompt/styles/colors.zsh` to modify the Catppuccin Macchiato colors or replace with your preferred theme:

```bash
# Example: Change pink to a different color
PINK=$'\e[38;2;245;194;231m'  # Original
PINK=$'\e[38;2;255;0;128m'    # Custom hot pink
```

### Modifying Prompt Segments

Edit `prompt/prompt.zsh` to add, remove, or reorder segments, or modify individual components in `prompt/components/`:

```bash
# Example: Disable weather component
# Edit prompt/prompt.zsh and comment out the weather component loading:
# source "$PROMPT_DIR/components/weather.zsh"

# Or customize individual components by editing files in prompt/components/
```

### Changing Icons

Modify icons in `prompt/prompt.zsh`:

- `󰚩` - User icon
- `󰭆` - TTY icon
-  - Directory icon
-  - Git icon
- `󱑁` - Time icon

### Weather Icons

Customize weather icons in `prompt/components/weather.zsh` by modifying the `get_weather_icon()` function.

## 🐛 Troubleshooting

### Icons not displaying correctly

**Solution**: Ensure you have a Nerd Font installed and your terminal is configured to use it.

### Weather/Temperature not showing

**Solution**:

- Check that Apple Shortcuts are set up correctly
- Verify shortcuts are named exactly "Terminal weather" and "Terminal temperature"
- Check `/tmp/weather_cache` and `/tmp/temperature_cache` for cached data

### Colors look wrong

**Solution**:

- Ensure your terminal supports 24-bit true color
- Popular terminals with true color support: Ghostty, iTerm2, Alacritty, Kitty, WezTerm

### Prompt appears on multiple lines unintentionally

**Solution**: Your terminal might be too narrow. The prompt is designed for wider terminals (100+ columns).

### Git branch not showing

**Solution**:

- Ensure git is installed: `which git`
- Check that you're in a git repository: `git status`

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This configuration is provided as-is for personal use. Feel free to modify and share!

## 🙏 Acknowledgments

- [Catppuccin](https://github.com/catppuccin/catppuccin) for the beautiful color scheme
- [Powerline](https://github.com/powerline/powerline) for the segment design inspiration
- [Nerd Fonts](https://www.nerdfonts.com/) for the amazing icon collection
