# homebrew-ascii-chat

Homebrew tap for [ascii-chat](https://github.com/vtvipul/ascii-chat) — a
peer-to-peer terminal video+audio calling app that renders the other person
as colored ASCII art.

## Install

```bash
brew tap vtvipul/ascii-chat
brew install ascii-chat
```

After install:

```bash
ascii-chat call      # initiate a call (generates an SDP offer blob)
ascii-chat join      # join a call (consumes an SDP offer blob)
```

Send the printed offer blob to your friend through any chat (iMessage, Signal,
Discord, etc.). They run `ascii-chat join`, paste the blob, and send back
their answer. Once you paste their answer, the call connects directly
peer-to-peer over WebRTC. No server is involved.

## Requirements

- macOS (Linux best-effort, Windows not supported by this prototype)
- A terminal with ANSI truecolor support (Terminal.app, iTerm2, Windows
  Terminal — NOT classic cmd.exe)
- A working webcam + microphone
- Both peers behind reasonable NATs (symmetric NAT will block the call;
  prototype doesn't ship with a TURN fallback)

## Updating

```bash
brew update
brew upgrade ascii-chat
```

## Removing

```bash
brew uninstall ascii-chat
brew untap vtvipul/ascii-chat
```
