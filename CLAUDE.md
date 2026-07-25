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
- The users are Japanese speakers. Write the on-screen text in Japanese
- Use a responsive layout that's easy to read on a phone too
