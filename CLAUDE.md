# Conventions for this repository (context for AI)

This started as a single-page web app for the Hackatsuon workshop. It is now a small
static tourism site for Kesennuma (see the note below). It's published on GitHub Pages
under a subpath like `https://username.github.io/repository-name/`.

Always follow these rules:

- The top page is `index.html` at the root of the repository. Don't move or rename it
- Keep the site plain and static: one HTML file per page at the repository root, sharing
  `./style.css`. There is no JavaScript, and it doesn't need any
- Always reference files with relative paths (`./style.css`, `./itineraries.html`).
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

## Note: what this site is now

On 2026-07-25 the starter page was replaced with an English-language tourism site for
**Kesennuma (気仙沼市), Miyagi**, aimed at foreign visitors:

- `index.html` — home page: why visit, what's new, and the call to action
- `itineraries.html` — three two-night weekend itineraries (food and drink; outdoor
  activities; culture and history)
- `about.html` — placeholder company page for a tourism business whose offering is custom
  itineraries and English-language guiding in the Kesennuma area
- `style.css` — shared stylesheet for all three pages
- `research/` — the raw research the copy was written from, with per-claim confidence tags.
  Read `research/README.md` before changing any factual claim on the site

Content rules that matter for this site:

- The copy was written from research into official Japanese and English sources
  (kesennuma-kanko.jp, en.kesennuma-kanko.jp, visit-kesennuma.com, kesennuma-memorial.jp,
  rias-ark, m-tc.org, miyagiolle.jp, oshimakisen.com, kameyama360.jp, japan-guide.com)
- **Prices, opening hours, timetables and event dates are deliberately left out or
  hedged.** They change often in this region and several sources contradicted each other.
  Don't add hard numbers without checking a current official source
- Don't add these known-stale claims: a scheduled passenger ferry to Ōshima (ended
  2019-04-07), a chairlift or shuttle bus up Mt Kameyama (replaced by a monorail that
  opened 2026-07-19), or the tsunami-simulation hall at the Karakuwa visitor centre
  (permanently closed)
- Write about the 2011 earthquake and tsunami plainly and without embellishment. Don't
  invent survivor stories or casualty figures; point readers to the *kataribe* storyteller
  programmes for personal accounts
- The `about.html` business, its people and its contact details are placeholders and are
  marked as such on the page. Keep those markers until real details replace them
