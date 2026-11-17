# helm-prod — Agent Guide

Helm charts deployed to **Prod** (flextech-prod-clu1, GCP project `flex-rewards`).
This is the **live Prod source**. `deploy/charts/Prod/` is what it was seeded from
on 2026-11-18 and is no longer what gets deployed.

This repo is separate from `cosmere`. The monorepo's guide at
`~/Flextech/cosmere/AGENTS.md` still applies to conventions and guardrails; this
file covers what is specific to the charts.

## Guardrails

- **Never put a credential in a chart.** This repo publishes to a **public** Helm
  index via GitHub Pages. Anything committed to a chart is downloadable by anyone.
  base64 in a manifest is encoding, not encryption — it is not a secret.
- **A chart may reference a secret by name; it must never contain the value.**
  Prod secrets are created on the cluster out-of-band. Credential charts
  (`cloud-db-credentials` and friends in `deploy/charts/Prod`) are deliberately
  not in this repo.
- **`.github/workflows/release.yaml` publishes from an explicit allowlist.**
  Do not replace it with a `charts/*/` glob or an exclude list. It must fail
  closed — a chart nobody has named is not published.
- **If you find a credential committed in a chart, stop and report it.** Do not
  print, decode or copy the value. Do not quietly delete it either — deleting
  hides the problem without rotating the key.

## Secrets these charts expect on the cluster

Referenced by name only; each must exist in `default` before the chart deploys.

| Secret | Keys | Used by |
|---|---|---|
| `image-signing-key` | `secret` | `imagor` (`IMAGOR_SECRET`), `image-svc` (`THUMBOR_SECRET_KEY`) — one value, both must match |
| `notifications-api-keys` | `sendgrid-api-key`, `fcm-api-key` | `notifications-svc` |

Plus the existing ones each deployment already names (`cloudsql-db-credentials`,
`google-application-credentials`, `notifications-secrets`, …).

## Working here

- `helm lint charts/<chart>` and `helm template charts/<chart>` before committing.
  Every chart must render with no `--set`: the release fails the publish otherwise.
- Helm 3. A changed chart needs a `version:` bump or the release fails.
- Deploys are triggered from `cosmere` by the manual `prod-*.yml` workflows, which
  build from the **`production`** branch (not `master`). Merging here only
  **publishes** a chart; the deploy happens when a prod workflow runs
  `helm upgrade` with no `--version`.
- Do NOT run `helm upgrade`, `kubectl apply`, or trigger a release workflow.
