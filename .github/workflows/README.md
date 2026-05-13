# Windy Wood Creations

Production-ready Next.js site for Windy Wood Creations, a Hood River County, Oregon outdoor trail signage vendor.

## Stack

- Next.js App Router
- React
- TypeScript
- Tailwind CSS
- Local hero image asset, no remote image dependencies

## File Structure

```text
app/
  globals.css      Global styles and Tailwind setup
  layout.tsx       Metadata and root layout
  page.tsx         Single-page website content and form
public/
  images/
    forest-trail-hero.png
```

## Local Setup

```bash
npm install
npm run dev
```

Open `http://localhost:3000`.

On this Windows workspace, a portable Node/npm install is available in `.tools`.
You can start the local dev server with:

```powershell
.\run-dev.ps1
```

You can also double-click `run-dev.cmd` from File Explorer.

## Local CRM

The local-first CRM scaffold lives in `windy-crm/`.

Start it with:

```powershell
.\run-crm-dev.ps1
```

Or double-click `run-crm-dev.cmd`.

The CRM runs at `http://localhost:3001`.

## Production Build

```bash
npm run build
```

The static export is written to `out/`.

## Deploying to GitHub Pages

This project is configured for static export with `output: "export"` in
`next.config.mjs`.

1. Push this folder to a GitHub repository.
2. In GitHub, go to **Settings -> Pages**.
3. Configure GitHub Actions or upload the generated `out/` folder through your
   preferred Pages workflow.
4. If using a project page without a custom domain, make sure asset paths are
   tested at the final GitHub Pages URL.

## Quote Form

The quote form is static and uses a `mailto:` action to open a prepared email to
`joelsmeby@gmail.com`. The visible fields are:

- Name
- Agency / Organization
- Email
- Phone
- Estimated quantity
- Trail names / notes
- Installation environment
- Timing / procurement notes

## Image Slots

The hero image is local at `public/images/forest-trail-hero.png`.

Gallery items are styled placeholders in `app/page.tsx`. Replace them with real installation photos when available.
