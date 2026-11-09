# GhosttyBar

A small macOS menu bar app that lists all your [Ghostty](https://ghostty.org) tabs, a vertical tab
overview, and shows which [Claude Code](https://docs.anthropic.com/en/docs/claude-code) sessions are
working, finished, or waiting for you.

> Full documentation with screenshots follows.

## Requirements

- macOS 14 or later
- Ghostty 1.4 or later (ships the AppleScript dictionary GhosttyBar reads)

## Build and run

    make build     # build/GhosttyBar.app (universal)
    make demo      # try it with sample tabs, no Ghostty needed
    make install   # copy to ~/Applications and start it

On first use macOS asks whether GhosttyBar may control Ghostty (Automation permission).

## License

MIT, see [LICENSE](LICENSE).
