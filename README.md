# ATRYX — Waitlist Landing Page

A single-file website that matches the ATRYX app's look (oxblood-on-black,
hexagon "A", living-network backdrop) and signs people up to the **same**
Supabase waitlist your mobile app already uses. No second database, no second
account — one list for app + web.

Everything lives in **`index.html`**. There is no build step.

---

## Before it can store sign-ups: add the phone column (do this once)

The website asks for **name + email + phone**. Your existing `waitlist` table
only had name + email, so add the phone column:

1. Go to **supabase.com** → open your project (`sqeymvrnwnefqiojofhh`).
2. Left sidebar → **SQL Editor** → **New query**.
3. Paste the contents of **`add-phone-column.sql`** (one line) and click **Run**.

That's it. Sign-ups will now save name, email, and phone.

> Until you do this, submissions that include a phone number will fail with a
> "column phone does not exist" error.

---

## See it on your computer (no internet needed)

Just **double-click `index.html`** — it opens in your browser and the form
works immediately (it talks to your live Supabase). The animated background
needs no server.

---

## Put it online so others can visit (free)

The page is one static file, so any free static host works. Easiest, in order:

**Option A — Netlify Drop (no account math, ~1 min)**
1. Go to **app.netlify.com/drop**.
2. Drag the **whole `atryx-web` folder** onto the page.
3. Netlify gives you a live link (e.g. `atryx.netlify.app`). Done.
   You can later connect a custom domain like `join.atryx.com`.

**Option B — Vercel or Cloudflare Pages**
Same idea — both have free tiers and drag-and-drop / GitHub deploys.

When you're ready to do this, tell me and I'll walk you through it click by click.

---

## Where the sign-ups show up

Supabase dashboard → **Table Editor** → **waitlist**. Every entry from the app
*and* the website lands here together. You can export the whole list to CSV
from that screen to email everyone.

---

## Notes

- The key in `index.html` (`sb_publishable_...`) is the **publishable** key —
  it's meant to live in public web pages and is protected by Row Level
  Security. Never put the **secret** key (`sb_secret_...`) in this file.
- Colours, fonts, logo, and the network animation are ported straight from the
  app so the brand stays consistent.
