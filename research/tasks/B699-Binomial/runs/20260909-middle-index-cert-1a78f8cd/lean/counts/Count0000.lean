import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight

set_option maxRecDepth 65536

set_option maxHeartbeats 0

namespace B699Middle.Counts

theorem count_0 : B699LargePrimeStructure.smallPrimeCount 0 = 0 := by decide +kernel

theorem count_1 : B699LargePrimeStructure.smallPrimeCount 1 = 0 :=
  smallPrimeCount_step_checked (i := 0) (t := 0) (b := false) count_0 (by decide +kernel)

theorem count_2 : B699LargePrimeStructure.smallPrimeCount 2 = 0 :=
  smallPrimeCount_step_checked (i := 1) (t := 0) (b := false) count_1 (by decide +kernel)

theorem count_3 : B699LargePrimeStructure.smallPrimeCount 3 = 1 :=
  smallPrimeCount_step_checked (i := 2) (t := 0) (b := true) count_2 (by decide +kernel)

theorem count_4 : B699LargePrimeStructure.smallPrimeCount 4 = 2 :=
  smallPrimeCount_step_checked (i := 3) (t := 1) (b := true) count_3 (by decide +kernel)

theorem count_5 : B699LargePrimeStructure.smallPrimeCount 5 = 2 :=
  smallPrimeCount_step_checked (i := 4) (t := 2) (b := false) count_4 (by decide +kernel)

theorem count_6 : B699LargePrimeStructure.smallPrimeCount 6 = 3 :=
  smallPrimeCount_step_checked (i := 5) (t := 2) (b := true) count_5 (by decide +kernel)

theorem count_7 : B699LargePrimeStructure.smallPrimeCount 7 = 3 :=
  smallPrimeCount_step_checked (i := 6) (t := 3) (b := false) count_6 (by decide +kernel)

theorem count_8 : B699LargePrimeStructure.smallPrimeCount 8 = 4 :=
  smallPrimeCount_step_checked (i := 7) (t := 3) (b := true) count_7 (by decide +kernel)

theorem count_9 : B699LargePrimeStructure.smallPrimeCount 9 = 4 :=
  smallPrimeCount_step_checked (i := 8) (t := 4) (b := false) count_8 (by decide +kernel)

theorem count_10 : B699LargePrimeStructure.smallPrimeCount 10 = 4 :=
  smallPrimeCount_step_checked (i := 9) (t := 4) (b := false) count_9 (by decide +kernel)

theorem count_11 : B699LargePrimeStructure.smallPrimeCount 11 = 4 :=
  smallPrimeCount_step_checked (i := 10) (t := 4) (b := false) count_10 (by decide +kernel)

theorem count_12 : B699LargePrimeStructure.smallPrimeCount 12 = 5 :=
  smallPrimeCount_step_checked (i := 11) (t := 4) (b := true) count_11 (by decide +kernel)

theorem count_13 : B699LargePrimeStructure.smallPrimeCount 13 = 5 :=
  smallPrimeCount_step_checked (i := 12) (t := 5) (b := false) count_12 (by decide +kernel)

theorem count_14 : B699LargePrimeStructure.smallPrimeCount 14 = 6 :=
  smallPrimeCount_step_checked (i := 13) (t := 5) (b := true) count_13 (by decide +kernel)

theorem count_15 : B699LargePrimeStructure.smallPrimeCount 15 = 6 :=
  smallPrimeCount_step_checked (i := 14) (t := 6) (b := false) count_14 (by decide +kernel)

theorem count_16 : B699LargePrimeStructure.smallPrimeCount 16 = 6 :=
  smallPrimeCount_step_checked (i := 15) (t := 6) (b := false) count_15 (by decide +kernel)

theorem count_17 : B699LargePrimeStructure.smallPrimeCount 17 = 6 :=
  smallPrimeCount_step_checked (i := 16) (t := 6) (b := false) count_16 (by decide +kernel)

theorem count_18 : B699LargePrimeStructure.smallPrimeCount 18 = 7 :=
  smallPrimeCount_step_checked (i := 17) (t := 6) (b := true) count_17 (by decide +kernel)

theorem count_19 : B699LargePrimeStructure.smallPrimeCount 19 = 7 :=
  smallPrimeCount_step_checked (i := 18) (t := 7) (b := false) count_18 (by decide +kernel)

theorem count_20 : B699LargePrimeStructure.smallPrimeCount 20 = 8 :=
  smallPrimeCount_step_checked (i := 19) (t := 7) (b := true) count_19 (by decide +kernel)

theorem count_21 : B699LargePrimeStructure.smallPrimeCount 21 = 8 :=
  smallPrimeCount_step_checked (i := 20) (t := 8) (b := false) count_20 (by decide +kernel)

theorem count_22 : B699LargePrimeStructure.smallPrimeCount 22 = 8 :=
  smallPrimeCount_step_checked (i := 21) (t := 8) (b := false) count_21 (by decide +kernel)

theorem count_23 : B699LargePrimeStructure.smallPrimeCount 23 = 8 :=
  smallPrimeCount_step_checked (i := 22) (t := 8) (b := false) count_22 (by decide +kernel)

theorem count_24 : B699LargePrimeStructure.smallPrimeCount 24 = 9 :=
  smallPrimeCount_step_checked (i := 23) (t := 8) (b := true) count_23 (by decide +kernel)

theorem count_25 : B699LargePrimeStructure.smallPrimeCount 25 = 9 :=
  smallPrimeCount_step_checked (i := 24) (t := 9) (b := false) count_24 (by decide +kernel)

theorem count_26 : B699LargePrimeStructure.smallPrimeCount 26 = 9 :=
  smallPrimeCount_step_checked (i := 25) (t := 9) (b := false) count_25 (by decide +kernel)

theorem count_27 : B699LargePrimeStructure.smallPrimeCount 27 = 9 :=
  smallPrimeCount_step_checked (i := 26) (t := 9) (b := false) count_26 (by decide +kernel)

theorem count_28 : B699LargePrimeStructure.smallPrimeCount 28 = 9 :=
  smallPrimeCount_step_checked (i := 27) (t := 9) (b := false) count_27 (by decide +kernel)

theorem count_29 : B699LargePrimeStructure.smallPrimeCount 29 = 9 :=
  smallPrimeCount_step_checked (i := 28) (t := 9) (b := false) count_28 (by decide +kernel)

theorem count_30 : B699LargePrimeStructure.smallPrimeCount 30 = 10 :=
  smallPrimeCount_step_checked (i := 29) (t := 9) (b := true) count_29 (by decide +kernel)

theorem count_31 : B699LargePrimeStructure.smallPrimeCount 31 = 10 :=
  smallPrimeCount_step_checked (i := 30) (t := 10) (b := false) count_30 (by decide +kernel)

theorem count_32 : B699LargePrimeStructure.smallPrimeCount 32 = 11 :=
  smallPrimeCount_step_checked (i := 31) (t := 10) (b := true) count_31 (by decide +kernel)

theorem count_33 : B699LargePrimeStructure.smallPrimeCount 33 = 11 :=
  smallPrimeCount_step_checked (i := 32) (t := 11) (b := false) count_32 (by decide +kernel)

theorem count_34 : B699LargePrimeStructure.smallPrimeCount 34 = 11 :=
  smallPrimeCount_step_checked (i := 33) (t := 11) (b := false) count_33 (by decide +kernel)

theorem count_35 : B699LargePrimeStructure.smallPrimeCount 35 = 11 :=
  smallPrimeCount_step_checked (i := 34) (t := 11) (b := false) count_34 (by decide +kernel)

theorem count_36 : B699LargePrimeStructure.smallPrimeCount 36 = 11 :=
  smallPrimeCount_step_checked (i := 35) (t := 11) (b := false) count_35 (by decide +kernel)

theorem count_37 : B699LargePrimeStructure.smallPrimeCount 37 = 11 :=
  smallPrimeCount_step_checked (i := 36) (t := 11) (b := false) count_36 (by decide +kernel)

theorem count_38 : B699LargePrimeStructure.smallPrimeCount 38 = 12 :=
  smallPrimeCount_step_checked (i := 37) (t := 11) (b := true) count_37 (by decide +kernel)

theorem count_39 : B699LargePrimeStructure.smallPrimeCount 39 = 12 :=
  smallPrimeCount_step_checked (i := 38) (t := 12) (b := false) count_38 (by decide +kernel)

theorem count_40 : B699LargePrimeStructure.smallPrimeCount 40 = 12 :=
  smallPrimeCount_step_checked (i := 39) (t := 12) (b := false) count_39 (by decide +kernel)

theorem count_41 : B699LargePrimeStructure.smallPrimeCount 41 = 12 :=
  smallPrimeCount_step_checked (i := 40) (t := 12) (b := false) count_40 (by decide +kernel)

theorem count_42 : B699LargePrimeStructure.smallPrimeCount 42 = 13 :=
  smallPrimeCount_step_checked (i := 41) (t := 12) (b := true) count_41 (by decide +kernel)

theorem count_43 : B699LargePrimeStructure.smallPrimeCount 43 = 13 :=
  smallPrimeCount_step_checked (i := 42) (t := 13) (b := false) count_42 (by decide +kernel)

theorem count_44 : B699LargePrimeStructure.smallPrimeCount 44 = 14 :=
  smallPrimeCount_step_checked (i := 43) (t := 13) (b := true) count_43 (by decide +kernel)

theorem count_45 : B699LargePrimeStructure.smallPrimeCount 45 = 14 :=
  smallPrimeCount_step_checked (i := 44) (t := 14) (b := false) count_44 (by decide +kernel)

theorem count_46 : B699LargePrimeStructure.smallPrimeCount 46 = 14 :=
  smallPrimeCount_step_checked (i := 45) (t := 14) (b := false) count_45 (by decide +kernel)

theorem count_47 : B699LargePrimeStructure.smallPrimeCount 47 = 14 :=
  smallPrimeCount_step_checked (i := 46) (t := 14) (b := false) count_46 (by decide +kernel)

theorem count_48 : B699LargePrimeStructure.smallPrimeCount 48 = 15 :=
  smallPrimeCount_step_checked (i := 47) (t := 14) (b := true) count_47 (by decide +kernel)

theorem count_49 : B699LargePrimeStructure.smallPrimeCount 49 = 15 :=
  smallPrimeCount_step_checked (i := 48) (t := 15) (b := false) count_48 (by decide +kernel)

theorem count_50 : B699LargePrimeStructure.smallPrimeCount 50 = 15 :=
  smallPrimeCount_step_checked (i := 49) (t := 15) (b := false) count_49 (by decide +kernel)

theorem count_51 : B699LargePrimeStructure.smallPrimeCount 51 = 15 :=
  smallPrimeCount_step_checked (i := 50) (t := 15) (b := false) count_50 (by decide +kernel)

theorem count_52 : B699LargePrimeStructure.smallPrimeCount 52 = 15 :=
  smallPrimeCount_step_checked (i := 51) (t := 15) (b := false) count_51 (by decide +kernel)

theorem count_53 : B699LargePrimeStructure.smallPrimeCount 53 = 15 :=
  smallPrimeCount_step_checked (i := 52) (t := 15) (b := false) count_52 (by decide +kernel)

theorem count_54 : B699LargePrimeStructure.smallPrimeCount 54 = 16 :=
  smallPrimeCount_step_checked (i := 53) (t := 15) (b := true) count_53 (by decide +kernel)

theorem count_55 : B699LargePrimeStructure.smallPrimeCount 55 = 16 :=
  smallPrimeCount_step_checked (i := 54) (t := 16) (b := false) count_54 (by decide +kernel)

theorem count_56 : B699LargePrimeStructure.smallPrimeCount 56 = 16 :=
  smallPrimeCount_step_checked (i := 55) (t := 16) (b := false) count_55 (by decide +kernel)

theorem count_57 : B699LargePrimeStructure.smallPrimeCount 57 = 16 :=
  smallPrimeCount_step_checked (i := 56) (t := 16) (b := false) count_56 (by decide +kernel)

theorem count_58 : B699LargePrimeStructure.smallPrimeCount 58 = 16 :=
  smallPrimeCount_step_checked (i := 57) (t := 16) (b := false) count_57 (by decide +kernel)

theorem count_59 : B699LargePrimeStructure.smallPrimeCount 59 = 16 :=
  smallPrimeCount_step_checked (i := 58) (t := 16) (b := false) count_58 (by decide +kernel)

theorem count_60 : B699LargePrimeStructure.smallPrimeCount 60 = 17 :=
  smallPrimeCount_step_checked (i := 59) (t := 16) (b := true) count_59 (by decide +kernel)

theorem count_61 : B699LargePrimeStructure.smallPrimeCount 61 = 17 :=
  smallPrimeCount_step_checked (i := 60) (t := 17) (b := false) count_60 (by decide +kernel)

theorem count_62 : B699LargePrimeStructure.smallPrimeCount 62 = 18 :=
  smallPrimeCount_step_checked (i := 61) (t := 17) (b := true) count_61 (by decide +kernel)

theorem count_63 : B699LargePrimeStructure.smallPrimeCount 63 = 18 :=
  smallPrimeCount_step_checked (i := 62) (t := 18) (b := false) count_62 (by decide +kernel)

end B699Middle.Counts

#print axioms B699Middle.Counts.count_63
