# NovaGrid Technologies — Website

Static marketing site (plain HTML/CSS/JS, no build step) for NovaGrid Technologies.

## Structure
- `index.html` — home
- `services.html` — service catalog (available now + roadmap)
- `about.html` — founder bio + certifications
- `contact.html` — contact info + form (currently mailto-based; replace with a real
  form handler before go-live)
- `css/style.css` — shared styles (brand colors/fonts from `Company_logo/NovaGrid_Logo_Package/BRAND_GUIDE.md`)
- `assets/` — logo files copied from the canonical brand package

## Workflow

1. **Source of truth:** this Git repository. All content changes happen here first.
2. **Testing:** every push deploys automatically to Vercel for preview/review before
   anything goes live. No changes should reach production without a reviewed Vercel
   preview first.
3. **Production:** once a Vercel preview is approved, the same static files are deployed
   to Hostinger (production hosting) — currently a manual step (upload via Hostinger's
   File Manager or FTP) since no Hostinger API/MCP integration exists yet. See
   `15_MARKETING/WEBSITE.md` in the main NovaGridOS repository for the full workflow
   and `18_AGENTS/WEBSITE_MANAGER.md` for who/what owns this process.

## Local preview

No build step required — open `index.html` directly in a browser, or serve locally:

```
python3 -m http.server 8080
```

## Before going live

- Replace the contact form's `mailto:` handler with a real form backend (e.g., a simple
  serverless function, or a form service) so submissions don't depend on the visitor's
  local email client.
- Confirm contact email/phone are the ones you want public.
- Point the production domain at Hostinger once purchased/configured.
