# Enable GitHub verification

The [workflow template](lean.yml) contains the library build, direct theorem
check, regression checks, independent audit checks, and public API example.
It is not active while stored in this directory. All of these checks passed
locally for the initial publication; no successful GitHub run is claimed.

To enable it, use GitHub credentials authorized to write workflow files, move
`docs/ci/lean.yml` to `.github/workflows/lean.yml`, and commit and push the move.
The first push to `main` then starts a Linux verification run. Check that run
before adding a passing CI badge or describing cloud verification as complete.

The initial publication credentials were accepted for repository writes but
GitHub rejected workflow writes because their OAuth `workflow` scope was absent.
The template is preserved so enabling CI does not require recreating it.
