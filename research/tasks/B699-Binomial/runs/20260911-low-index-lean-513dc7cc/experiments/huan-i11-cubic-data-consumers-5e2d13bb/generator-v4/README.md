# generator-v4 full batch candidates

v4 reuses the two accepted CubicData modules and generates the remaining 27
chunk sources. New modules use the future lean.CubicBatches prefix. Old rows
retain chunk size 16; each new pair is one complete 13-row
chunk. The six pair candidates import accepted CubicCover Composition and Pair,
define right-associated list append trees, use coverageCheck_append with each
batch proof, and use decide only for pair metadata in pairCheck. No full
387-row decide is used.

All sources set maxRecDepth=100000, maxHeartbeats=5000000, and
exponentiation.threshold=1000000. No checker is copied. This directory is
source-only and was not compiled.
