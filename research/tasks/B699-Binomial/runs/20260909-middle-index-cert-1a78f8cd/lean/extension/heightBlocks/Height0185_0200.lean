import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.TailRange

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0192

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heights.Height185

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heights.Height200

set_option autoImplicit false

set_option relaxedAutoImplicit false

set_option Elab.async false

set_option maxRecDepth 65536

set_option maxHeartbeats 0

set_option exponentiation.threshold 1000000

namespace B699MiddleExtension.HeightBlocks.B185_200

open B699Middle

theorem row_185 : TailRange 185 185 20000000 :=
  tailRange_singleton (i := 185) (r := 61) (s := 129) (N := 20000000) B699MiddleExtension.height_185

theorem raw_186 : RawHeightValid 186 62 130 20000000 42 := by
  decide +kernel

theorem height_186 : HeightValid 186 62 130 20000000 :=
  heightValid_of_raw (i := 186) (r := 62) (s := 130) (N := 20000000) (t := 42) Counts.count_186 raw_186

theorem row_186 : TailRange 186 186 20000000 :=
  tailRange_singleton (i := 186) (r := 62) (s := 130) (N := 20000000) height_186

theorem raw_187 : RawHeightValid 187 62 130 20000000 42 := by
  decide +kernel

theorem height_187 : HeightValid 187 62 130 20000000 :=
  heightValid_of_raw (i := 187) (r := 62) (s := 130) (N := 20000000) (t := 42) Counts.count_187 raw_187

theorem row_187 : TailRange 187 187 20000000 :=
  tailRange_singleton (i := 187) (r := 62) (s := 130) (N := 20000000) height_187

theorem raw_188 : RawHeightValid 188 62 131 20000000 42 := by
  decide +kernel

theorem height_188 : HeightValid 188 62 131 20000000 :=
  heightValid_of_raw (i := 188) (r := 62) (s := 131) (N := 20000000) (t := 42) Counts.count_188 raw_188

theorem row_188 : TailRange 188 188 20000000 :=
  tailRange_singleton (i := 188) (r := 62) (s := 131) (N := 20000000) height_188

theorem raw_189 : RawHeightValid 189 63 132 20000000 42 := by
  decide +kernel

theorem height_189 : HeightValid 189 63 132 20000000 :=
  heightValid_of_raw (i := 189) (r := 63) (s := 132) (N := 20000000) (t := 42) Counts.count_189 raw_189

theorem row_189 : TailRange 189 189 20000000 :=
  tailRange_singleton (i := 189) (r := 63) (s := 132) (N := 20000000) height_189

theorem raw_190 : RawHeightValid 190 63 133 20000000 42 := by
  decide +kernel

theorem height_190 : HeightValid 190 63 133 20000000 :=
  heightValid_of_raw (i := 190) (r := 63) (s := 133) (N := 20000000) (t := 42) Counts.count_190 raw_190

theorem row_190 : TailRange 190 190 20000000 :=
  tailRange_singleton (i := 190) (r := 63) (s := 133) (N := 20000000) height_190

theorem raw_191 : RawHeightValid 191 63 133 20000000 42 := by
  decide +kernel

theorem height_191 : HeightValid 191 63 133 20000000 :=
  heightValid_of_raw (i := 191) (r := 63) (s := 133) (N := 20000000) (t := 42) Counts.count_191 raw_191

theorem row_191 : TailRange 191 191 20000000 :=
  tailRange_singleton (i := 191) (r := 63) (s := 133) (N := 20000000) height_191

theorem raw_192 : RawHeightValid 192 64 134 20000000 43 := by
  decide +kernel

theorem height_192 : HeightValid 192 64 134 20000000 :=
  heightValid_of_raw (i := 192) (r := 64) (s := 134) (N := 20000000) (t := 43) Counts.count_192 raw_192

theorem row_192 : TailRange 192 192 20000000 :=
  tailRange_singleton (i := 192) (r := 64) (s := 134) (N := 20000000) height_192

theorem raw_193 : RawHeightValid 193 64 135 20000000 43 := by
  decide +kernel

theorem height_193 : HeightValid 193 64 135 20000000 :=
  heightValid_of_raw (i := 193) (r := 64) (s := 135) (N := 20000000) (t := 43) Counts.count_193 raw_193

theorem row_193 : TailRange 193 193 20000000 :=
  tailRange_singleton (i := 193) (r := 64) (s := 135) (N := 20000000) height_193

theorem raw_194 : RawHeightValid 194 64 135 20000000 44 := by
  decide +kernel

theorem height_194 : HeightValid 194 64 135 20000000 :=
  heightValid_of_raw (i := 194) (r := 64) (s := 135) (N := 20000000) (t := 44) Counts.count_194 raw_194

theorem row_194 : TailRange 194 194 20000000 :=
  tailRange_singleton (i := 194) (r := 64) (s := 135) (N := 20000000) height_194

theorem raw_195 : RawHeightValid 195 65 136 20000000 44 := by
  decide +kernel

theorem height_195 : HeightValid 195 65 136 20000000 :=
  heightValid_of_raw (i := 195) (r := 65) (s := 136) (N := 20000000) (t := 44) Counts.count_195 raw_195

theorem row_195 : TailRange 195 195 20000000 :=
  tailRange_singleton (i := 195) (r := 65) (s := 136) (N := 20000000) height_195

theorem raw_196 : RawHeightValid 196 65 137 20000000 44 := by
  decide +kernel

theorem height_196 : HeightValid 196 65 137 20000000 :=
  heightValid_of_raw (i := 196) (r := 65) (s := 137) (N := 20000000) (t := 44) Counts.count_196 raw_196

theorem row_196 : TailRange 196 196 20000000 :=
  tailRange_singleton (i := 196) (r := 65) (s := 137) (N := 20000000) height_196

theorem raw_197 : RawHeightValid 197 65 137 20000000 44 := by
  decide +kernel

theorem height_197 : HeightValid 197 65 137 20000000 :=
  heightValid_of_raw (i := 197) (r := 65) (s := 137) (N := 20000000) (t := 44) Counts.count_197 raw_197

theorem row_197 : TailRange 197 197 20000000 :=
  tailRange_singleton (i := 197) (r := 65) (s := 137) (N := 20000000) height_197

theorem raw_198 : RawHeightValid 198 66 138 20000000 45 := by
  decide +kernel

theorem height_198 : HeightValid 198 66 138 20000000 :=
  heightValid_of_raw (i := 198) (r := 66) (s := 138) (N := 20000000) (t := 45) Counts.count_198 raw_198

theorem row_198 : TailRange 198 198 20000000 :=
  tailRange_singleton (i := 198) (r := 66) (s := 138) (N := 20000000) height_198

theorem raw_199 : RawHeightValid 199 66 139 20000000 45 := by
  decide +kernel

theorem height_199 : HeightValid 199 66 139 20000000 :=
  heightValid_of_raw (i := 199) (r := 66) (s := 139) (N := 20000000) (t := 45) Counts.count_199 raw_199

theorem row_199 : TailRange 199 199 20000000 :=
  tailRange_singleton (i := 199) (r := 66) (s := 139) (N := 20000000) height_199

theorem row_200 : TailRange 200 200 20000000 :=
  tailRange_singleton (i := 200) (r := 66) (s := 140) (N := 20000000) B699MiddleExtension.height_200

theorem part_185_186 : TailRange 185 186 20000000 :=
  tailRange_combine (lo := 185) (mid := 185) (hi := 186) (N := 20000000) row_185 row_186

theorem part_187_188 : TailRange 187 188 20000000 :=
  tailRange_combine (lo := 187) (mid := 187) (hi := 188) (N := 20000000) row_187 row_188

theorem part_185_188 : TailRange 185 188 20000000 :=
  tailRange_combine (lo := 185) (mid := 186) (hi := 188) (N := 20000000) part_185_186 part_187_188

theorem part_189_190 : TailRange 189 190 20000000 :=
  tailRange_combine (lo := 189) (mid := 189) (hi := 190) (N := 20000000) row_189 row_190

theorem part_191_192 : TailRange 191 192 20000000 :=
  tailRange_combine (lo := 191) (mid := 191) (hi := 192) (N := 20000000) row_191 row_192

theorem part_189_192 : TailRange 189 192 20000000 :=
  tailRange_combine (lo := 189) (mid := 190) (hi := 192) (N := 20000000) part_189_190 part_191_192

theorem part_185_192 : TailRange 185 192 20000000 :=
  tailRange_combine (lo := 185) (mid := 188) (hi := 192) (N := 20000000) part_185_188 part_189_192

theorem part_193_194 : TailRange 193 194 20000000 :=
  tailRange_combine (lo := 193) (mid := 193) (hi := 194) (N := 20000000) row_193 row_194

theorem part_195_196 : TailRange 195 196 20000000 :=
  tailRange_combine (lo := 195) (mid := 195) (hi := 196) (N := 20000000) row_195 row_196

theorem part_193_196 : TailRange 193 196 20000000 :=
  tailRange_combine (lo := 193) (mid := 194) (hi := 196) (N := 20000000) part_193_194 part_195_196

theorem part_197_198 : TailRange 197 198 20000000 :=
  tailRange_combine (lo := 197) (mid := 197) (hi := 198) (N := 20000000) row_197 row_198

theorem part_199_200 : TailRange 199 200 20000000 :=
  tailRange_combine (lo := 199) (mid := 199) (hi := 200) (N := 20000000) row_199 row_200

theorem part_197_200 : TailRange 197 200 20000000 :=
  tailRange_combine (lo := 197) (mid := 198) (hi := 200) (N := 20000000) part_197_198 part_199_200

theorem part_193_200 : TailRange 193 200 20000000 :=
  tailRange_combine (lo := 193) (mid := 196) (hi := 200) (N := 20000000) part_193_196 part_197_200

theorem part_185_200 : TailRange 185 200 20000000 :=
  tailRange_combine (lo := 185) (mid := 192) (hi := 200) (N := 20000000) part_185_192 part_193_200

theorem coverage : TailRange 185 200 20000000 := part_185_200

end B699MiddleExtension.HeightBlocks.B185_200

#print axioms B699MiddleExtension.HeightBlocks.B185_200.coverage
