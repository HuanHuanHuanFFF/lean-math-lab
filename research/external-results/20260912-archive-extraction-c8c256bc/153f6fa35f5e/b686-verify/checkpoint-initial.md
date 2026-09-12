# B686 bounded verification checkpoint

- Source checkout: `/workspace/scratch/c6b148d48b6d/external-research/repos/lean-proofs`
- HEAD: `aff1d30b3b1c6bd705810fa4d588b03940fb31df` (`origin/codex/erdos686-corrected-package-final`), detached, clean at inspection.
- Root `lean-toolchain`: `leanprover/lean4:v4.29.1`.
- Root `lakefile.toml` pins `PrimeNumberTheoremAnd` input rev `d7f9e2bfdcc7e34dfb9328b7494a6d424ff50c96` and mathlib input rev `v4.29.1`.
- Checked-in `lake-manifest.json` resolves mathlib commit `5e932f97dd25535344f80f9dd8da3aab83df0fe6`, plus inherited packages including plausible `83e90935a17ca19ebe4b7893c7f7066e266f50d3`, ProofWidgets4 `4dd0959c44d1af0462bd604d0f87c5781307d709`, aesop `7152850e7b216a0d409701617721b6e469d34bf6`, etc.
- Target file imports `Erdos686ReflectedAlignmentSquareLift`, `Erdos686MatchingCompression`, `Erdos686CenteredRatioWindowSharp`, and three Mathlib Nat factorial/choose modules.
- No source changes made. Build/dependency setup remains pending.
