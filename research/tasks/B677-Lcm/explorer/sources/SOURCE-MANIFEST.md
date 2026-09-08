# B677 local source manifest

Recorded 2026-09-08 in the independent worktree. This directory is a local
source cache. Downloaded publication files and rendered page images stay on
the local machine and are ignored by `.gitignore`; this manifest records their
remote provenance, page references, and hashes. The extraction scripts remain
available as source code.

## Dusart source

Bibliographic source: Pierre Dusart, “Explicit estimates of some functions
over primes,” *Ramanujan Journal* 45 (2018), 227--251. DOI:
<https://doi.org/10.1007/s11139-016-9839-4>. The publication PDF used for the
local cache was obtained from the public mirror
<https://piyanit.nl/wp-content/uploads/2020/10/art_10.1007_s11139-016-9839-4.pdf>;
the DOI and author publication page were used for bibliographic cross-checking.

Proposition 5.4 is printed on p. 242 (PDF p. 16); its proof begins on printed
p. 243 (PDF p. 17). The proposition asserts existence of a prime in the interval
(x, x(1+1/log(x)^3)] for each real x>=89693, without assuming RH.
This is a cited source theorem, not a Lean theorem in this repository.

The author correction is Pierre Dusart, “Correctif,” available at
<https://www.unilim.fr/pages_perso/pierre.dusart/Recherche/correctif_RJ.pdf>.
It is dated 2018-02-26 and corrects two typographical errors in Theorem 3.5;
the local review found no statement that it changes Proposition 5.4.

## Local cache files

| Local file | Bytes | SHA256 | Status |
|---|---:|---|---|
| `dusart-2018-explicit-estimates.pdf` | 502346 | `fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc` | present locally; ignored binary cache |
| `dusart-2018-correctif.pdf` | 187496 | `bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d` | present locally; ignored binary cache |
| `dusart-p242.png` | 216911 | `29e78916ff3251ca1cc5b6a4577eb7cd89c5c926c4fc5b3a265b4f55d7c17ff7` | present locally; derived page render, ignored |

`dusart-p242.png` is a local render of the proposition page and has no
separate remote source URL. No extracted full-text file is present currently;
future files under the `*-fulltext.*`, `*-extracted.*`, `fulltext/`, or
`extracted/` patterns are local derived material and are ignored.

The preserved local extractors are `extract_dusart.py` (SHA256
`1b29bee5055ceff3596973e8fb76709ff830b957baf2d8983de9bcefa817da58`) and
`extract_dusart_proof.py` (SHA256
`6b496ac713b057d8602ddf260176c6bc6a6d11e042aa06ed609ac592e8e365de`). They
read the explicit-estimates PDF by relative path and print selected pages;
they do not contain credentials. No `*.log` rule is used here.

The text/code/JSON/log scan found no API-key, token, password, private-key, or
authorization markers. This manifest does not claim that binary PDF metadata
has no personal information; keep the publication files local unless their
redistribution terms are separately cleared.
