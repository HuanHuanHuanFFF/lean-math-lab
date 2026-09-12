# generator-v3 chunk staging

v3 uses the accepted run module lean.CubicCover.Coverage (SHA 3f3e0b1058292cfe4cb1cb88129ffdc91e6a108999bc92540c6bbff641406d56).
Old rows use chunk size 16; each new pair remains one complete 13-row
chunk. The plan covers 387 rows in 29 chunks
without crossing an old/new boundary.

Only Old23Head0016.lean and New23Full0013.lean are generated. Both set
maxRecDepth=100000, maxHeartbeats=5000000, exponentiation.threshold=1000000,
call existing coverageCheck by decide, and print the complete theorem name.
No checker is copied and no Lean command is run.
