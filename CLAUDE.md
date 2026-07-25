# Conventions for this repository (context for AI)

This is a single-page web app for the Hackatsuon workshop. It's published on GitHub Pages
under a subpath like `https://username.github.io/repository-name/`.

Always follow these rules:

- The top page is `index.html` at the root of the repository. Don't move or rename it
- If the CSS and JavaScript are small, write them inline in `index.html`
  (everything in one file)
- Even when you do split files, always reference them with relative paths (`./style.css`).
  Absolute paths (`/style.css`) are forbidden, because they break under a subpath
- Don't use build tools (npm, bundlers, etc.). Write plain HTML / CSS / JS that runs
  in the browser as-is
- If you need to store data, start with localStorage
- Write the on-screen text in English (see the note below)
- Use a responsive layout that's easy to read on a phone too

## Note: this fork is English

The upstream template was written for a Japanese-speaking workshop audience, so its docs
and UI text were in Japanese, and this file used to require Japanese on-screen text.

The owner of this repository prefers English, so on 2026-07-25 the following were
translated to English and the rule above was changed accordingly:

- `README.md`, `docs/troubleshooting.md`, and this file
- The UI text and CSS comments in `index.html` (and `lang="ja"` → `lang="en"`)
- The welcome banner and comments in `.devcontainer/setup.sh`

Keep writing new UI text, docs, and comments in English.
