import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0185_0200

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0201_0216

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0217_0232

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0233_0248

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0249_0264

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0265_0280

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0281_0296

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0297_0312

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.heightBlocks.Height0313_0322

set_option autoImplicit false

set_option relaxedAutoImplicit false

set_option Elab.async false

set_option maxRecDepth 65536

namespace B699MiddleExtension.AllHeights

open B699Middle

theorem part_185_216 : TailRange 185 216 20000000 :=
  tailRange_combine (lo := 185) (mid := 200) (hi := 216) (N := 20000000) B699MiddleExtension.HeightBlocks.B185_200.coverage B699MiddleExtension.HeightBlocks.B201_216.coverage

theorem part_185_232 : TailRange 185 232 20000000 :=
  tailRange_combine (lo := 185) (mid := 216) (hi := 232) (N := 20000000) part_185_216 B699MiddleExtension.HeightBlocks.B217_232.coverage

theorem part_233_264 : TailRange 233 264 20000000 :=
  tailRange_combine (lo := 233) (mid := 248) (hi := 264) (N := 20000000) B699MiddleExtension.HeightBlocks.B233_248.coverage B699MiddleExtension.HeightBlocks.B249_264.coverage

theorem part_185_264 : TailRange 185 264 20000000 :=
  tailRange_combine (lo := 185) (mid := 232) (hi := 264) (N := 20000000) part_185_232 part_233_264

theorem part_265_296 : TailRange 265 296 20000000 :=
  tailRange_combine (lo := 265) (mid := 280) (hi := 296) (N := 20000000) B699MiddleExtension.HeightBlocks.B265_280.coverage B699MiddleExtension.HeightBlocks.B281_296.coverage

theorem part_297_322 : TailRange 297 322 20000000 :=
  tailRange_combine (lo := 297) (mid := 312) (hi := 322) (N := 20000000) B699MiddleExtension.HeightBlocks.B297_312.coverage B699MiddleExtension.HeightBlocks.B313_322.coverage

theorem part_265_322 : TailRange 265 322 20000000 :=
  tailRange_combine (lo := 265) (mid := 296) (hi := 322) (N := 20000000) part_265_296 part_297_322

theorem part_185_322 : TailRange 185 322 20000000 :=
  tailRange_combine (lo := 185) (mid := 264) (hi := 322) (N := 20000000) part_185_264 part_265_322

theorem coverage : TailRange 185 322 20000000 := part_185_322

end B699MiddleExtension.AllHeights

#print axioms B699MiddleExtension.AllHeights.coverage
