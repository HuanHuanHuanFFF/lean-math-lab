import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.TailRange

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0960

set_option autoImplicit false

set_option relaxedAutoImplicit false

set_option Elab.async false

set_option maxRecDepth 65536

set_option maxHeartbeats 0

set_option exponentiation.threshold 1000000

-- Compact input SHA256: 2d799bab3d72081a356fb3c69d63e9b9c614aaea2280321c28d14aa908bb9199

namespace B699Middle.HeightBlocks.B979_983

theorem raw_979 : RawHeightValid 979 326 685 2000000 165 := by
  decide +kernel

theorem height_979 : HeightValid 979 326 685 2000000 :=
  heightValid_of_raw (i := 979) (r := 326) (s := 685) (N := 2000000) (t := 165)
    Counts.count_979 raw_979

theorem row_979 : TailRange 979 979 2000000 :=
  tailRange_singleton (i := 979) (r := 326) (s := 685) (N := 2000000) height_979

theorem raw_980 : RawHeightValid 980 326 686 2000000 165 := by
  decide +kernel

theorem height_980 : HeightValid 980 326 686 2000000 :=
  heightValid_of_raw (i := 980) (r := 326) (s := 686) (N := 2000000) (t := 165)
    Counts.count_980 raw_980

theorem row_980 : TailRange 980 980 2000000 :=
  tailRange_singleton (i := 980) (r := 326) (s := 686) (N := 2000000) height_980

theorem raw_981 : RawHeightValid 981 327 686 2000000 165 := by
  decide +kernel

theorem height_981 : HeightValid 981 327 686 2000000 :=
  heightValid_of_raw (i := 981) (r := 327) (s := 686) (N := 2000000) (t := 165)
    Counts.count_981 raw_981

theorem row_981 : TailRange 981 981 2000000 :=
  tailRange_singleton (i := 981) (r := 327) (s := 686) (N := 2000000) height_981

theorem raw_982 : RawHeightValid 982 327 687 2000000 165 := by
  decide +kernel

theorem height_982 : HeightValid 982 327 687 2000000 :=
  heightValid_of_raw (i := 982) (r := 327) (s := 687) (N := 2000000) (t := 165)
    Counts.count_982 raw_982

theorem row_982 : TailRange 982 982 2000000 :=
  tailRange_singleton (i := 982) (r := 327) (s := 687) (N := 2000000) height_982

theorem raw_983 : RawHeightValid 983 327 688 2000000 165 := by
  decide +kernel

theorem height_983 : HeightValid 983 327 688 2000000 :=
  heightValid_of_raw (i := 983) (r := 327) (s := 688) (N := 2000000) (t := 165)
    Counts.count_983 raw_983

theorem row_983 : TailRange 983 983 2000000 :=
  tailRange_singleton (i := 983) (r := 327) (s := 688) (N := 2000000) height_983

theorem rows_979_980 : TailRange 979 980 2000000 :=
  tailRange_combine (lo := 979) (mid := 979) (hi := 980) (N := 2000000) row_979 row_980

theorem rows_979_981 : TailRange 979 981 2000000 :=
  tailRange_combine (lo := 979) (mid := 980) (hi := 981) (N := 2000000) rows_979_980 row_981

theorem rows_982_983 : TailRange 982 983 2000000 :=
  tailRange_combine (lo := 982) (mid := 982) (hi := 983) (N := 2000000) row_982 row_983

theorem rows_979_983 : TailRange 979 983 2000000 :=
  tailRange_combine (lo := 979) (mid := 981) (hi := 983) (N := 2000000) rows_979_981 rows_982_983

theorem coverage : TailRange 979 983 2000000 := rows_979_983

end B699Middle.HeightBlocks.B979_983

#print axioms B699Middle.HeightBlocks.B979_983.coverage
