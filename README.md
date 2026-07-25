# Hackatsuon Starter 🐟

A starter kit for the workshop at **Hackatsuon**, the hackathon born in Kesennuma.
Using nothing but your browser, you'll build an app together with AI and take it all
the way to being published to the world.

> It's fine if you don't finish. Today's goal is to experience building something
> with your own hands and putting it out there — and to go home with an environment
> where you can pick up where you left off. If you get stuck, ask on Discord.

---

## The overall flow

1. Create your own repository from this template
2. Start a Codespace (a development environment in your browser)
3. Start the AI (Claude Code)
4. Describe what you want to build, and build the app
5. Push your code to GitHub
6. Publish it to the world with GitHub Pages

---

## Step 1. Create your own repository

1. Click the green **"Use this template"** button at the top right of this page
2. Select **"Create a new repository"**
   (Do *not* pick "Open in a codespace" — your work won't be saved that way)
3. Enter any name you like under Repository name (e.g. `my-hackatsuon-app`)
4. Click **"Create repository"**

You now have a project of your own.

## Step 2. Start a Codespace

1. On your repository's page, click the green **"Code"** button
2. Click the **"Codespaces"** tab → **"Create codespace on main"**
3. An editor (VS Code) opens in your browser. **Setup then runs in the background
   for 2–3 minutes.** Even if the terminal looks ready for input, keep waiting.

**Checking that setup is done**: **open a new terminal with the `+` button.**

- If you see "🐟 Welcome to Hackatsuon Starter!", you're **ready to go**. Work in that terminal
- If you don't, wait a minute or two and open another new terminal

> If you can't see a terminal: menu (≡) → Terminal → New Terminal

## Step 3. Start the AI (Claude Code)

You'll use the **API key** that was handed out. In the terminal where 🐟 appeared, enter:

```bash
export ANTHROPIC_API_KEY=paste-the-distributed-key-here
```

Then start Claude Code:

```bash
claude
```

The first time, you'll get about three questions. **Leaving "1" selected and pressing
Enter** is fine for all of them.

1. "Do you want to use this API key?" → **1. Yes**
   ⚠️ It will display "2. No **(recommended)**", but don't take the bait.
   Today we're using the key that was handed out, so **Yes is the right answer**
2. "Use Claude Code's terminal setup?" → 1. Yes
3. "Is this a project you created or one you trust?" → 1. Yes, I trust this folder
   (This means allowing Claude Code to edit files and run commands inside this folder)

## Step 4. Build your app

Tell Claude Code what you want to build, in plain everyday language. For example:

```
Rewrite index.html to make a page introducing tourist spots in Kesennuma.
Make sure it looks good on a phone too.
```

```
Make it a simple app for jotting down high and low tide times.
Saving the data in the browser is good enough.
```

When you want to see how it looks, run this in **a separate terminal** (add one with
the + button):

```bash
http-server -p 8080
```

and a preview will open.

**Tips**
- Don't try to build everything at once — ask for things a little at a time
- If you don't like the result, don't hesitate to say "make it more ___"
- If you get an error, paste the error message to the AI as-is
- Type `/cost` to see how much the AI has cost you so far

## Step 5. Push your code to GitHub

What you just made only exists inside this Codespace for now.
Push it to GitHub so it stays as your work. In the terminal:

```bash
git add -A
git commit -m "Build the app"
git push
```

> The commit message (after `-m`) is up to you.

Once the push succeeds, open your repository's page in a browser.
Your code is public. Anyone in the world can now read it, learn from it,
and suggest "here's how you could make this better."
That means you've become part of that world we talked about this morning.

From here on, your code lives on GitHub.
Even if you delete the Codespace, your work won't disappear. You can continue any time.

## Step 6. Publish to the world with GitHub Pages

Once your code is on GitHub, publishing is just a few clicks away.

1. Open the **Settings** tab on your repository's page
2. Click **Pages** in the left-hand menu
3. Confirm that Source under "Build and deployment" is set to **Deploy from a branch**
4. Set Branch to **main** / **(root)** and click **Save**
5. **Wait 1–2 minutes** (this is the patient part — grab a coffee)
6. Open the URL shown at the top of the page:
   `https://your-username.github.io/repository-name/`

**That is your app's address, published to the world.** Try opening it on your phone 🎉

From now on, **the published page updates automatically every time you `git push`**
(it takes 1–2 minutes to appear).

---

## When things don't work

- First, check [docs/troubleshooting.md](docs/troubleshooting.md)
- At the venue, just call over a staff member
- After you go home, post in **#dev-help on Discord** along with a screenshot of the
  error message

## Continuing after today

- Your workspace (Codespace) can be resumed any time from https://github.com/codespaces
  (Free tier: 120 core-hours per month. **Stop** it when you're done to save quota)
- After resuming, redo Step 3 from `export ANTHROPIC_API_KEY=...` and you can carry on
- The workshop API key has an expiration date. We'll share your options on Discord once
  it expires
- Want data storage (a DB)? A login feature? Ask about your next step on Discord too.
  We'll be putting together step-by-step guides

---

## Aside: every tool we used today is replaceable

Today we gathered a lot of things on GitHub — where the code lives, the development
environment (Codespaces), and publishing (Pages). "You told us decentralization matters,
and yet here we are concentrating everything in one company." That criticism is fair.
So let me let you in on the trick.

**Git itself is a distributed design.** The clone in your Codespace is a complete copy,
history and all. Even if GitHub vanished tomorrow, the code would still be in everyone's
hands. GitHub is a *convenient meeting place*, not an *owner*.

And every tool we used today has alternatives:

| What we used today | Alternatives |
|---|---|
| GitHub (code hosting) | GitLab, Codeberg, running Forgejo on your own server |
| GitHub Pages (publishing) | Cloudflare Pages, Netlify, Vercel, your own server |
| Codespaces (dev environment) | Your own PC + VS Code, WSL, whatever editor you like |
| Claude Code (AI) | Codex CLI, Gemini CLI, open models running on your own machine |

Today's combination is just *one example that trips people up the least on day one*.
**Knowing you have options, and being able to choose differently when you need to** —
that is what the "technical independence" we talked about today actually means.
