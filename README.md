# Homebrew Tap for Transform Rules

This is the official Homebrew tap for [Transform Rules](https://github.com/vinhphatfsg/transform-rules-rs).

## Installation

```bash
brew tap vinhphatfsg/tap
brew install transform-rules
```

## What's included

This formula installs:
- `transform-rules` - CLI tool for CSV/JSON data transformation using YAML rules
- `transform-rules-mcp` - MCP server for integration with AI assistants

## Usage

```bash
# Show help
transform-rules --help

# Validate rules
transform-rules validate --rules rules.yaml

# Transform data
transform-rules transform --rules rules.yaml --input data.json
```

## Update

```bash
brew update
brew upgrade transform-rules
```

## Uninstall

```bash
brew uninstall transform-rules
brew untap vinhphatfsg/tap
```

## Links

- [Project Repository](https://github.com/vinhphatfsg/transform-rules-rs)
- [Documentation](https://github.com/vinhphatfsg/transform-rules-rs#readme)
