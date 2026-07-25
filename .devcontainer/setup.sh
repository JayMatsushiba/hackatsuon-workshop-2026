#!/usr/bin/env bash
# Hackatsuon Starter - environment setup script
# Runs automatically the first time the Codespace starts (takes a few minutes)

set -x

# 1. Install Claude Code (the AI coding agent)
curl -fsSL https://claude.ai/install.sh | bash

# Put it on the PATH (works for both bash and zsh)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.profile"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
echo 'export ANTHROPIC_MODEL="claude-sonnet-4-6"' >> "$HOME/.bashrc"

# 2. Install wrangler (the CLI for deploying to Cloudflare)
npm install -g wrangler

# 3. http-server, for quick previews
npm install -g http-server

# Show a short guide every time a new terminal is opened
cat << 'BANNER' >> "$HOME/.bashrc"
echo ""
echo "🐟 Welcome to Hackatsuon Starter!"
echo "   Check your environment: claude --version && wrangler --version"
echo "   Your next step is Step 3 in README.md"
echo ""
BANNER
