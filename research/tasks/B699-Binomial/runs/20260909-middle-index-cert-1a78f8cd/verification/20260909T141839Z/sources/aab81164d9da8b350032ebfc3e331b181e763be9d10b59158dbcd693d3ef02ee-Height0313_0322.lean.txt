import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.TailRange

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0320

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heights.Height322

set_option autoImplicit false

set_option relaxedAutoImplicit false

set_option Elab.async false

set_option maxRecDepth 65536

set_option maxHeartbeats 0

set_option exponentiation.threshold 1000000

namespace B699MiddleExtension.HeightBlocks.B313_322

open B699Middle

theorem raw_313 : RawHeightValid 313 104 219 20000000 64 := by
  decide +kernel

theorem height_313 : HeightValid 313 104 219 20000000 :=
  heightValid_of_raw (i := 313) (r := 104) (s := 219) (N := 20000000) (t := 64) Counts.count_313 raw_313

theorem row_313 : TailRange 313 313 20000000 :=
  tailRange_singleton (i := 313) (r := 104) (s := 219) (N := 20000000) height_313

theorem raw_314 : RawHeightValid 314 104 219 20000000 65 := by
  decide +kernel

theorem height_314 : HeightValid 314 104 219 20000000 :=
  heightValid_of_raw (i := 314) (r := 104) (s := 219) (N := 20000000) (t := 65) Counts.count_314 raw_314

theorem row_314 : TailRange 314 314 20000000 :=
  tailRange_singleton (i := 314) (r := 104) (s := 219) (N := 20000000) height_314

theorem raw_315 : RawHeightValid 315 105 220 20000000 65 := by
  decide +kernel

theorem height_315 : HeightValid 315 105 220 20000000 :=
  heightValid_of_raw (i := 315) (r := 105) (s := 220) (N := 20000000) (t := 65) Counts.count_315 raw_315

theorem row_315 : TailRange 315 315 20000000 :=
  tailRange_singleton (i := 315) (r := 105) (s := 220) (N := 20000000) height_315

theorem raw_316 : RawHeightValid 316 105 221 20000000 65 := by
  decide +kernel

theorem height_316 : HeightValid 316 105 221 20000000 :=
  heightValid_of_raw (i := 316) (r := 105) (s := 221) (N := 20000000) (t := 65) Counts.count_316 raw_316

theorem row_316 : TailRange 316 316 20000000 :=
  tailRange_singleton (i := 316) (r := 105) (s := 221) (N := 20000000) height_316

theorem raw_317 : RawHeightValid 317 105 221 20000000 65 := by
  decide +kernel

theorem height_317 : HeightValid 317 105 221 20000000 :=
  heightValid_of_raw (i := 317) (r := 105) (s := 221) (N := 20000000) (t := 65) Counts.count_317 raw_317

theorem row_317 : TailRange 317 317 20000000 :=
  tailRange_singleton (i := 317) (r := 105) (s := 221) (N := 20000000) height_317

theorem raw_318 : RawHeightValid 318 106 222 20000000 66 := by
  decide +kernel

theorem height_318 : HeightValid 318 106 222 20000000 :=
  heightValid_of_raw (i := 318) (r := 106) (s := 222) (N := 20000000) (t := 66) Counts.count_318 raw_318

theorem row_318 : TailRange 318 318 20000000 :=
  tailRange_singleton (i := 318) (r := 106) (s := 222) (N := 20000000) height_318

theorem raw_319 : RawHeightValid 319 106 223 20000000 66 := by
  decide +kernel

theorem height_319 : HeightValid 319 106 223 20000000 :=
  heightValid_of_raw (i := 319) (r := 106) (s := 223) (N := 20000000) (t := 66) Counts.count_319 raw_319

theorem row_319 : TailRange 319 319 20000000 :=
  tailRange_singleton (i := 319) (r := 106) (s := 223) (N := 20000000) height_319

theorem raw_320 : RawHeightValid 320 106 224 20000000 66 := by
  decide +kernel

theorem height_320 : HeightValid 320 106 224 20000000 :=
  heightValid_of_raw (i := 320) (r := 106) (s := 224) (N := 20000000) (t := 66) Counts.count_320 raw_320

theorem row_320 : TailRange 320 320 20000000 :=
  tailRange_singleton (i := 320) (r := 106) (s := 224) (N := 20000000) height_320

theorem raw_321 : RawHeightValid 321 107 224 20000000 66 := by
  decide +kernel

theorem height_321 : HeightValid 321 107 224 20000000 :=
  heightValid_of_raw (i := 321) (r := 107) (s := 224) (N := 20000000) (t := 66) Counts.count_321 raw_321

theorem row_321 : TailRange 321 321 20000000 :=
  tailRange_singleton (i := 321) (r := 107) (s := 224) (N := 20000000) height_321

theorem row_322 : TailRange 322 322 20000000 :=
  tailRange_singleton (i := 322) (r := 107) (s := 225) (N := 20000000) B699MiddleExtension.height_322

theorem part_313_314 : TailRange 313 314 20000000 :=
  tailRange_combine (lo := 313) (mid := 313) (hi := 314) (N := 20000000) row_313 row_314

theorem part_313_315 : TailRange 313 315 20000000 :=
  tailRange_combine (lo := 313) (mid := 314) (hi := 315) (N := 20000000) part_313_314 row_315

theorem part_316_317 : TailRange 316 317 20000000 :=
  tailRange_combine (lo := 316) (mid := 316) (hi := 317) (N := 20000000) row_316 row_317

theorem part_313_317 : TailRange 313 317 20000000 :=
  tailRange_combine (lo := 313) (mid := 315) (hi := 317) (N := 20000000) part_313_315 part_316_317

theorem part_318_319 : TailRange 318 319 20000000 :=
  tailRange_combine (lo := 318) (mid := 318) (hi := 319) (N := 20000000) row_318 row_319

theorem part_318_320 : TailRange 318 320 20000000 :=
  tailRange_combine (lo := 318) (mid := 319) (hi := 320) (N := 20000000) part_318_319 row_320

theorem part_321_322 : TailRange 321 322 20000000 :=
  tailRange_combine (lo := 321) (mid := 321) (hi := 322) (N := 20000000) row_321 row_322

theorem part_318_322 : TailRange 318 322 20000000 :=
  tailRange_combine (lo := 318) (mid := 320) (hi := 322) (N := 20000000) part_318_320 part_321_322

theorem part_313_322 : TailRange 313 322 20000000 :=
  tailRange_combine (lo := 313) (mid := 317) (hi := 322) (N := 20000000) part_313_317 part_318_322

theorem coverage : TailRange 313 322 20000000 := part_313_322

end B699MiddleExtension.HeightBlocks.B313_322

#print axioms B699MiddleExtension.HeightBlocks.B313_322.coverage
