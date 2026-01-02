# Tmux Amp Theme

A tmux theme based on the Amp Code website colors with dark and light variants.

## Colors

**Amp Dark**

- **Primary Accent**: #E7894C (warm orange/rust)
- **Background**: #0F0F0F (near black)
- **Foreground**: #F2ECDD (off-white)
- **Status**: #161616 (dark gray)
- **Accents**: Blues (#6A9FCC), teals (#8FC4C4), greens (#7C9B96), reds (#D9634F)

**Amp Light**

- **Primary Accent**: #D9634F (warm red)
- **Background**: #F8F8F8 (warm white)
- **Foreground**: #2A2A2A (charcoal)
- **Status**: #FFFFFF (white)
- **Accents**: Blues (#316E99), teals (#5A8F8F), greens (#7C9B96), yellows (#C87A2F)

## Installation

### Using TPM (Tmux Plugin Manager)

Add to your `~/.tmux.conf`:

```tmux
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'USERNAME/tmux-amp-theme'
set -g @amp-theme-appearance 'auto'

run '~/.tmux/plugins/tpm/tpm'
```

Then press `prefix + I` to fetch and install the plugin.

### Manual Installation

Clone the repo and add to `~/.tmux.conf`:

```tmux
run-shell "/path/to/tmux-amp-theme/amp-theme.tmux"
```

## Configuration

Optional settings to customize the theme:

```tmux
# Appearance: dark, light, or auto (auto follows OS appearance when available)
set -g @amp-theme-appearance 'dark'

# Show hostname on right
set -g @amp-theme-show-host 'true'

# Set status bar position (left, right, or centre)
set -g @amp-theme-status-justify 'left'

# Disable the status bar accents
set -g @amp-theme-accents 'false'
```

If you use `auto`, reload tmux after changing OS appearance:

```tmux
tmux source-file ~/.tmux.conf
```

## License

MIT
