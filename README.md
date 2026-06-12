# hard_webui

The DURO web app (duro.fit) — static PWA, served via GitHub Pages.

- `index.html` — the entire app (program / session / catalog, coverage, sync)
- `docs/` — exercise catalog + muscle registry (canonical source: hard_mgt; copy synced on change)
- `media/` — exercise media + manifest.json
- sync API: https://api.duro.fit (hard_api repo)
- deploy: `./deploy.sh` (S3 sync + CloudFront invalidation); GitHub is source-of-truth mirror

Born from the hard_proto sandbox 2026-06-12.
