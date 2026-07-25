# Troubleshooting

Listed roughly in order of how likely you are to hit them on the day. The fastest route
is always to read the error message carefully (or paste it to the AI).

## Around Codespaces

**Q. I pressed "Create codespace" but it won't start / it errors out**
- Check that you've verified your GitHub email address (click the confirmation link sent
  to the address you registered with)
- Reload the browser and try again
- Open https://github.com/codespaces — if a Codespace has already been created, open that one

**Q. The 🐟 welcome message doesn't appear in the terminal**
- Setup hasn't finished. Wait 1–2 minutes and **open a new terminal** with the `+` button
- If it still doesn't appear after 5 minutes, run this manually:
  ```bash
  bash .devcontainer/setup.sh
  source ~/.bashrc
  ```

**Q. I opened a Codespace directly from the template (I don't have my own repository)**
- You can keep working as-is. To save your work, click the source control icon on the left
  (the branch symbol) → "Publish to GitHub" to publish it as your own repository
- If you leave it unpublished, the Codespace and your work will be deleted after 30 days

**Q. I can't find the terminal**
- Menu at the top left (≡) → Terminal → New Terminal
- Shortcut: `Ctrl + @` (Windows) / `Cmd + J` (Mac)

## Around Claude Code

**Q. `claude: command not found`**
```bash
source ~/.bashrc
```
If that doesn't help:
```bash
export PATH="$HOME/.local/bin:$PATH"
```

**Q. I picked "2. No (recommended)" at the startup prompt and ended up on a login screen**
- Press `Esc` or `Ctrl + C` to get out, then start `claude` again
- At "Do you want to use this API key?", choose **1. Yes** (don't be lured in by "recommended")

**Q. It says my API key is invalid**
- 9 times out of 10 it's a copy-paste slip in `export ANTHROPIC_API_KEY=...`. Check for
  stray spaces or newlines before or after the key
- Paste the distributed key again from scratch and restart `claude`

**Q. Claude Code's response stops partway / I get a 429 error**
- It's busy. Wait 1–2 minutes, then ask it to continue

**Q. What the AI built doesn't work**
- Paste the error message or the contents of the screenshot to the AI as-is and say "fix this"
- If that doesn't fix it, asking it to "rebuild this with a simpler structure" also works well

## Around the preview

**Q. I ran `http-server -p 8080` but the page won't open**
- Click Open in the notification at the bottom right that says "Port 8080 is available"
- Or open the "Ports" tab (next to the terminal) → click the globe icon on 8080
- If your changes aren't showing up, do a hard reload (`Ctrl+Shift+R` / `Cmd+Shift+R`)

## Around publishing (GitHub Pages)

**Q. I enabled Pages, but opening the URL gives a 404**
- Wait 1–2 minutes, then do a hard reload (`Ctrl+Shift+R` / `Cmd+Shift+R`)
- In Settings → Pages, check that Branch is set to **main / (root)**
- Check that `index.html` is at the top level of the repository (it won't show up if it's
  inside a folder)

**Q. I pushed, but the published page is still the old version**
- It takes 1–2 minutes to go live. Wait, then do a hard reload
- You can check whether the pages build is running in the repository's "Actions" tab

**Q. The page opens, but the layout is broken / images don't show**
- Referring to CSS or images with an **absolute path** like `/style.css` will break things
  (because the published URL sits under `username.github.io/repository-name/`)
- Asking the AI to "change the references to relative paths" will fix it

## Around pushing to GitHub

**Q. `git push` is rejected / I get an authentication error**
- The Codespace is already authenticated with GitHub at startup, so you can normally push
  with no extra steps
- If it fails, reload the browser, reopen the Codespace, and try `git push` again

## Other

**Q. I'm worried about the free tier**
- The Codespaces free tier for personal accounts is 120 core-hours per month (effectively
  60 hours on a 2-core machine). You won't burn through it in a single day
- When you're done, it's safest to "Stop" the relevant Codespace at
  https://github.com/codespaces

**Q. How do I continue this after I get home?**
- https://github.com/codespaces → click your Codespace to resume it
- After resuming, start again from `export ANTHROPIC_API_KEY=...` (environment variables
  are cleared on restart)
- If anything is unclear, head to #helpdesk on Discord
