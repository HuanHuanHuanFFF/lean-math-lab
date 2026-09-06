# GitHub verification

The [active workflow](../../.github/workflows/lean.yml) runs on pushes and pull
requests to `main`, and can also be started manually from GitHub Actions.
See the [run history](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/workflows/lean.yml)
for the result associated with a particular commit. A green result for an old
commit does not certify newer changes.

## Checks

The Linux job installs the pinned Lean toolchain, fetches the relevant mathlib
cache, builds the library, directly checks the theorem source, runs both
regression and independent audit files, and checks the public API example.
Any failed command fails the job. The workflow has read-only repository access.

These checks supplement local verification. They do not establish global
firstness, human peer review, or verification by an independent second kernel.
The `v0.1.0` source tag predates CI activation and remains unchanged.

## Maintenance

Edit `.github/workflows/lean.yml` when adding verification entry points or
changing the required imports. Workflow updates require GitHub credentials
with permission to write workflow files, such as the OAuth `workflow` scope.
The initial release stored this configuration as a template because that
permission was absent; subsequent authorization enabled it on `main`.
