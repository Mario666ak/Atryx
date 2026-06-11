-- ════════════════════════════════════════════════════════════════════════
-- ONE-TIME SETUP — run this once in your Supabase project.
-- It adds a "phone" column to your existing `waitlist` table so the website
-- can store phone numbers alongside name + email. Safe to run more than once.
--
-- HOW: Supabase dashboard → your project → left sidebar "SQL Editor"
--      → "New query" → paste the line below → click "Run".
-- ════════════════════════════════════════════════════════════════════════

alter table public.waitlist add column if not exists phone text;
