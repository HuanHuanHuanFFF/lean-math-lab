# Online theorem documentation

- [A071999 API](https://huanhuanhuanfff.github.io/lean-math-lab/Math/A071999.html)
- [Search declarations](https://huanhuanhuanfff.github.io/lean-math-lab/search.html)
- [Documentation source revision](https://huanhuanhuanfff.github.io/lean-math-lab/build-info.json)
- [Working minimal example](../Examples/ReusingA071999.lean)

The site is generated from Lean declarations with doc-gen4, including exact
types, hypotheses, module names, documentation comments, and source links.
It follows `main`; `build-info.json` identifies the deployed commit. The
`v0.1.0` proof release and its Lean/mathlib 4.33.1 compatibility remain fixed.
Pin that tag or an exact commit when consuming the library.

## Rebuild

The separate `docbuild/` package pins doc-gen4 v4.33.1 and its transitive
commits. Library consumers do not acquire this dependency. From the root:

```sh
lake -d docbuild build Math:docs
python3 scripts/check-docs.py docbuild/.lake/build/doc --commit "$(git rev-parse HEAD)"
python3 -m http.server --directory docbuild/.lake/build/doc 8000
```

Open `http://localhost:8000/Math/A071999.html`; serving over HTTP is required
for the search assets. With this workstation's D-drive installation, use
`scripts/lake.ps1 -LakeArgs @('-d','docbuild','build','Math:docs')` instead of
the first command. Documentation compilation is performed in the Linux
workflow for publication; the existing Windows proof checks are separate.

After changing Lean versions, align both `lean-toolchain` files and the
matching doc-gen4 revision. Regenerate the nested lockfile deliberately using
`MATHLIB_NO_CACHE_ON_UPDATE=1 lake -d docbuild update`, then review dependency
changes. Keep the root proof dependency lock separate.

## Deployment and new results

[The documentation workflow](../.github/workflows/docs.yml) verifies the
library and every audit/example before generating HTML. It checks public
anchors, versioned source links, and search assets before uploading a Pages
artifact. Only successful builds from `main` deploy; PRs can build but do not
deploy. The proof workflow remains independently visible.

For each new public result, provide a module docstring, exact assumptions,
a source citation, and a small example under `Examples/`. Import the accepted
module through `Math.lean`, add it to the README's result list, and extend
`scripts/check-docs.py` with its required public anchors. Keep old module
paths and release tags compatible. Searchability is not evidence of novelty
or an independent kernel audit.
