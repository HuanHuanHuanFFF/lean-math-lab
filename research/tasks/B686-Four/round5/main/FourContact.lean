import research.tasks.«B686-Four».round5.main.ContactOriginal

namespace B686Round5Contact
open B686Round4Shift

def fourAuxiliary (z d : ℤ) : ℤ :=
  - 18895680 - 153816084 * d ^ 2 - 422805420 * d ^ 4 - 391957704 * d ^ 6 + 17236485 * d ^ 8 + 73906420 * d ^ 10 + 4374000 * z * d ^ 3 + 36739575 * z * d ^ 5 + 89840700 * z * d ^ 7 + 54942600 * z * d ^ 9 + 2624400 * z ^ 2 + 19322145 * z ^ 2 * d ^ 2 + 48911040 * z ^ 2 * d ^ 4 + 48028095 * z ^ 2 * d ^ 6 + 15304915 * z ^ 2 * d ^ 8 + 162000 * z ^ 3 * d ^ 3 + 717525 * z ^ 3 * d ^ 5 + 704940 * z ^ 3 * d ^ 7 - 58320 * z ^ 4 - 377541 * z ^ 4 * d ^ 2 - 751320 * z ^ 4 * d ^ 4 - 409451 * z ^ 4 * d ^ 6

def fourQuotient1 (y d : ℤ) : ℤ :=
  - 201553920 - 1304781696 * d ^ 2 + 93312000 * d ^ 3 - 2596561920 * d ^ 4 + 413294400 * d ^ 5 - 1458262656 * d ^ 6 + 406045440 * d ^ 7 - 103020000 * d ^ 8 + 20000000 * d ^ 9 + 33592320 * y + 217463616 * y * d ^ 2 - 31104000 * y * d ^ 3 + 432760320 * y * d ^ 4 - 137764800 * y * d ^ 5 + 257443776 * y * d ^ 6 - 135348480 * y * d ^ 7 + 51510000 * y * d ^ 8 - 5598720 * y ^ 2 - 36243936 * y ^ 2 * d ^ 2 + 7776000 * y ^ 2 * d ^ 3 - 72126720 * y ^ 2 * d ^ 4 + 34441200 * y ^ 2 * d ^ 5 - 46507296 * y ^ 2 * d ^ 6 + 33837120 * y ^ 2 * d ^ 7 + 933120 * y ^ 3 + 6040656 * y ^ 3 * d ^ 2 - 1728000 * y ^ 3 * d ^ 3 + 12021120 * y ^ 3 * d ^ 4 - 7653600 * y ^ 3 * d ^ 5 + 8551216 * y ^ 3 * d ^ 6 - 155520 * y ^ 4 - 1006776 * y ^ 4 * d ^ 2 + 360000 * y ^ 4 * d ^ 3 - 2003520 * y ^ 4 * d ^ 4 + 1594500 * y ^ 4 * d ^ 5 + 25920 * y ^ 5 + 167796 * y ^ 5 * d ^ 2 - 72000 * y ^ 5 * d ^ 3 + 333920 * y ^ 5 * d ^ 4 - 4320 * y ^ 6 - 27966 * y ^ 6 * d ^ 2 + 14000 * y ^ 6 * d ^ 3 + 720 * y ^ 7 + 4661 * y ^ 7 * d ^ 2 - 120 * y ^ 8 + 20 * y ^ 9
def fourResidual1 (u v q : ℤ) : ℤ :=
  - 13600794240 * v ^ 11 + 4445049600 * v ^ 12 * q + 15373200000 * v ^ 13 * q ^ 2 + 6800000000 * v ^ 14 * q ^ 3 + 69856799040 * u * v ^ 11 * q + 88518316800 * u * v ^ 12 * q ^ 2 + 25913400000 * u * v ^ 13 * q ^ 3 - 25920000000 * u ^ 2 * v ^ 9 + 92718000000 * u ^ 2 * v ^ 10 * q + 130030700160 * u ^ 2 * v ^ 11 * q ^ 2 + 37138820800 * u ^ 2 * v ^ 12 * q ^ 3 - 33378480000 * u ^ 3 * v ^ 8 + 33404544000 * u ^ 3 * v ^ 9 * q + 86519568000 * u ^ 3 * v ^ 10 * q ^ 2 + 28221003840 * u ^ 3 * v ^ 11 * q ^ 3 - 14617635840 * u ^ 4 * v ^ 7 - 5311605600 * u ^ 4 * v ^ 8 * q + 29692677600 * u ^ 4 * v ^ 9 * q ^ 2 + 12961464720 * u ^ 4 * v ^ 10 * q ^ 3 - 3094593984 * u ^ 5 * v ^ 6 - 5383735200 * u ^ 5 * v ^ 7 * q + 5125903680 * u ^ 5 * v ^ 8 * q ^ 2 + 3826950800 * u ^ 5 * v ^ 9 * q ^ 3 - 619941600 * u ^ 6 * v ^ 5 - 1267929936 * u ^ 6 * v ^ 6 * q + 358366440 * u ^ 6 * v ^ 7 * q ^ 2 + 754445040 * u ^ 6 * v ^ 8 * q ^ 3 - 108190080 * u ^ 7 * v ^ 4 - 295570800 * u ^ 7 * v ^ 5 * q - 30547584 * u ^ 7 * v ^ 6 * q ^ 2 + 104191620 * u ^ 7 * v ^ 7 * q ^ 3 - 5184000 * u ^ 8 * v ^ 3 - 52905420 * u ^ 8 * v ^ 4 * q - 27429000 * u ^ 8 * v ^ 5 * q ^ 2 + 9563204 * u ^ 8 * v ^ 6 * q ^ 3 - 1510164 * u ^ 9 * v ^ 2 - 2628000 * u ^ 9 * v ^ 3 * q - 5776800 * u ^ 9 * v ^ 4 * q ^ 2 - 95500 * u ^ 9 * v ^ 5 * q ^ 3 - 779031 * u ^ 10 * v ^ 2 * q - 324000 * u ^ 10 * v ^ 3 * q ^ 2 - 139080 * u ^ 10 * v ^ 4 * q ^ 3 - 6480 * u ^ 11 - 102264 * u ^ 11 * v ^ 2 * q ^ 2 - 10000 * u ^ 11 * v ^ 3 * q ^ 3 - 3420 * u ^ 12 * q - 3861 * u ^ 12 * v ^ 2 * q ^ 3 - 480 * u ^ 13 * q ^ 2 - 20 * u ^ 14 * q ^ 3

set_option maxHeartbeats 0 in
theorem fourIdentity1 (u v q : ℤ) :
    20736 * fourAuxiliary (6 + q * u) (q * v) =
      fourQuotient1 (q * u) (q * v) * curve (6 + q * u) (q * v) +
        q ^ 11 * fourResidual1 u v q := by
  unfold fourAuxiliary fourQuotient1 curve fourResidual1
  ring

theorem fourContact1 (z d q : ℤ) (hy : q ∣ z - (6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 11 ∣ fourAuxiliary z d := by
  have hK : IsCoprime q (20736 : ℤ) :=
    (hc.pow_right (n := 8)).of_isCoprime_of_dvd_right (by norm_num)
  apply (hK.pow_left (m := 11)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 6 + q * u := by omega
  subst z
  refine ⟨fourResidual1 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using fourIdentity1 u v q

def fourQuotient2 (y d : ℤ) : ℤ :=
  - 1574640 - 10193607 * d ^ 2 + 1458000 * d ^ 3 - 20285640 * d ^ 4 + 6457725 * d ^ 5 - 12405177 * d ^ 6 + 6344460 * d ^ 7 - 3219375 * d ^ 8 + 1250000 * d ^ 9 + 524880 * y + 3397869 * y * d ^ 2 - 972000 * y * d ^ 3 + 6761880 * y * d ^ 4 - 4305150 * y * d ^ 5 + 5035059 * y * d ^ 6 - 4229640 * y * d ^ 7 + 3219375 * y * d ^ 8 - 174960 * y ^ 2 - 1132623 * y ^ 2 * d ^ 2 + 486000 * y ^ 2 * d ^ 3 - 2253960 * y ^ 2 * d ^ 4 + 2152575 * y ^ 2 * d ^ 5 - 2128353 * y ^ 2 * d ^ 6 + 2114820 * y ^ 2 * d ^ 7 + 58320 * y ^ 3 + 377541 * y ^ 3 * d ^ 2 - 216000 * y ^ 3 * d ^ 3 + 751320 * y ^ 3 * d ^ 4 - 956700 * y ^ 3 * d ^ 5 + 909451 * y ^ 3 * d ^ 6 - 19440 * y ^ 4 - 125847 * y ^ 4 * d ^ 2 + 90000 * y ^ 4 * d ^ 3 - 250440 * y ^ 4 * d ^ 4 + 398625 * y ^ 4 * d ^ 5 + 6480 * y ^ 5 + 41949 * y ^ 5 * d ^ 2 - 36000 * y ^ 5 * d ^ 3 + 83480 * y ^ 5 * d ^ 4 - 2160 * y ^ 6 - 13983 * y ^ 6 * d ^ 2 + 14000 * y ^ 6 * d ^ 3 + 720 * y ^ 7 + 4661 * y ^ 7 * d ^ 2 - 240 * y ^ 8 + 80 * y ^ 9
def fourResidual2 (u v q : ℤ) : ℤ :=
  203821920 * v ^ 11 - 774296100 * v ^ 12 * q + 480412500 * v ^ 13 * q ^ 2 + 425000000 * v ^ 14 * q ^ 3 - 1243565640 * u * v ^ 11 * q + 2766197400 * u * v ^ 12 * q ^ 2 + 1619587500 * u * v ^ 13 * q ^ 3 + 810000000 * u ^ 2 * v ^ 9 - 1158975000 * u ^ 2 * v ^ 10 * q + 3833959380 * u ^ 2 * v ^ 11 * q ^ 2 + 2321176300 * u ^ 2 * v ^ 12 * q ^ 3 + 1043077500 * u ^ 3 * v ^ 8 - 957556800 * u ^ 3 * v ^ 9 * q + 2648778000 * u ^ 3 * v ^ 10 * q ^ 2 + 1891312740 * u ^ 3 * v ^ 11 * q ^ 3 + 456801120 * u ^ 4 * v ^ 7 - 498444930 * u ^ 4 * v ^ 8 * q + 1254374100 * u ^ 4 * v ^ 9 * q ^ 2 + 1069240920 * u ^ 4 * v ^ 10 * q ^ 3 + 187831062 * u ^ 5 * v ^ 6 - 149547600 * u ^ 5 * v ^ 7 * q + 471966990 * u ^ 5 * v ^ 8 * q ^ 2 + 461038700 * u ^ 5 * v ^ 9 * q ^ 3 + 77492700 * u ^ 6 * v ^ 5 - 41661459 * u ^ 6 * v ^ 6 * q + 125598120 * u ^ 6 * v ^ 7 * q ^ 2 + 152705265 * u ^ 6 * v ^ 8 * q ^ 3 + 13523760 * u ^ 7 * v ^ 4 - 11490300 * u ^ 7 * v ^ 5 * q + 18121788 * u ^ 7 * v ^ 6 * q ^ 2 + 37990920 * u ^ 7 * v ^ 7 * q ^ 3 + 2592000 * u ^ 8 * v ^ 3 - 1590300 * u ^ 8 * v ^ 4 * q + 1292325 * u ^ 8 * v ^ 5 * q ^ 2 + 7187369 * u ^ 8 * v ^ 6 * q ^ 3 + 755082 * u ^ 9 * v ^ 2 - 252000 * u ^ 9 * v ^ 3 * q + 116880 * u ^ 9 * v ^ 4 * q ^ 2 + 1120775 * u ^ 9 * v ^ 5 * q ^ 3 - 56349 * u ^ 10 * v ^ 2 * q - 126000 * u ^ 10 * v ^ 3 * q ^ 2 + 136560 * u ^ 10 * v ^ 4 * q ^ 3 + 12960 * u ^ 11 - 36732 * u ^ 11 * v ^ 2 * q ^ 2 + 2000 * u ^ 11 * v ^ 3 * q ^ 3 - 720 * u ^ 12 * q - 1461 * u ^ 12 * v ^ 2 * q ^ 3 - 960 * u ^ 13 * q ^ 2 - 80 * u ^ 14 * q ^ 3

set_option maxHeartbeats 0 in
theorem fourIdentity2 (u v q : ℤ) :
    81 * fourAuxiliary (3 + q * u) (q * v) =
      fourQuotient2 (q * u) (q * v) * curve (3 + q * u) (q * v) +
        q ^ 11 * fourResidual2 u v q := by
  unfold fourAuxiliary fourQuotient2 curve fourResidual2
  ring

theorem fourContact2 (z d q : ℤ) (hy : q ∣ z - (3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 11 ∣ fourAuxiliary z d := by
  have hK : IsCoprime q (81 : ℤ) :=
    (hc.pow_right (n := 4)).of_isCoprime_of_dvd_right (by norm_num)
  apply (hK.pow_left (m := 11)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 3 + q * u := by omega
  subst z
  refine ⟨fourResidual2 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using fourIdentity2 u v q

def fourQuotient4 (y d : ℤ) : ℤ :=
  1574640 + 10193607 * d ^ 2 + 1458000 * d ^ 3 + 20285640 * d ^ 4 + 6457725 * d ^ 5 + 12405177 * d ^ 6 + 6344460 * d ^ 7 + 3219375 * d ^ 8 + 1250000 * d ^ 9 + 524880 * y + 3397869 * y * d ^ 2 + 972000 * y * d ^ 3 + 6761880 * y * d ^ 4 + 4305150 * y * d ^ 5 + 5035059 * y * d ^ 6 + 4229640 * y * d ^ 7 + 3219375 * y * d ^ 8 + 174960 * y ^ 2 + 1132623 * y ^ 2 * d ^ 2 + 486000 * y ^ 2 * d ^ 3 + 2253960 * y ^ 2 * d ^ 4 + 2152575 * y ^ 2 * d ^ 5 + 2128353 * y ^ 2 * d ^ 6 + 2114820 * y ^ 2 * d ^ 7 + 58320 * y ^ 3 + 377541 * y ^ 3 * d ^ 2 + 216000 * y ^ 3 * d ^ 3 + 751320 * y ^ 3 * d ^ 4 + 956700 * y ^ 3 * d ^ 5 + 909451 * y ^ 3 * d ^ 6 + 19440 * y ^ 4 + 125847 * y ^ 4 * d ^ 2 + 90000 * y ^ 4 * d ^ 3 + 250440 * y ^ 4 * d ^ 4 + 398625 * y ^ 4 * d ^ 5 + 6480 * y ^ 5 + 41949 * y ^ 5 * d ^ 2 + 36000 * y ^ 5 * d ^ 3 + 83480 * y ^ 5 * d ^ 4 + 2160 * y ^ 6 + 13983 * y ^ 6 * d ^ 2 + 14000 * y ^ 6 * d ^ 3 + 720 * y ^ 7 + 4661 * y ^ 7 * d ^ 2 + 240 * y ^ 8 + 80 * y ^ 9
def fourResidual4 (u v q : ℤ) : ℤ :=
  - 203821920 * v ^ 11 - 774296100 * v ^ 12 * q - 480412500 * v ^ 13 * q ^ 2 + 425000000 * v ^ 14 * q ^ 3 - 1243565640 * u * v ^ 11 * q - 2766197400 * u * v ^ 12 * q ^ 2 + 1619587500 * u * v ^ 13 * q ^ 3 - 810000000 * u ^ 2 * v ^ 9 - 1158975000 * u ^ 2 * v ^ 10 * q - 3833959380 * u ^ 2 * v ^ 11 * q ^ 2 + 2321176300 * u ^ 2 * v ^ 12 * q ^ 3 - 1043077500 * u ^ 3 * v ^ 8 - 957556800 * u ^ 3 * v ^ 9 * q - 2648778000 * u ^ 3 * v ^ 10 * q ^ 2 + 1891312740 * u ^ 3 * v ^ 11 * q ^ 3 - 456801120 * u ^ 4 * v ^ 7 - 498444930 * u ^ 4 * v ^ 8 * q - 1254374100 * u ^ 4 * v ^ 9 * q ^ 2 + 1069240920 * u ^ 4 * v ^ 10 * q ^ 3 - 187831062 * u ^ 5 * v ^ 6 - 149547600 * u ^ 5 * v ^ 7 * q - 471966990 * u ^ 5 * v ^ 8 * q ^ 2 + 461038700 * u ^ 5 * v ^ 9 * q ^ 3 - 77492700 * u ^ 6 * v ^ 5 - 41661459 * u ^ 6 * v ^ 6 * q - 125598120 * u ^ 6 * v ^ 7 * q ^ 2 + 152705265 * u ^ 6 * v ^ 8 * q ^ 3 - 13523760 * u ^ 7 * v ^ 4 - 11490300 * u ^ 7 * v ^ 5 * q - 18121788 * u ^ 7 * v ^ 6 * q ^ 2 + 37990920 * u ^ 7 * v ^ 7 * q ^ 3 - 2592000 * u ^ 8 * v ^ 3 - 1590300 * u ^ 8 * v ^ 4 * q - 1292325 * u ^ 8 * v ^ 5 * q ^ 2 + 7187369 * u ^ 8 * v ^ 6 * q ^ 3 - 755082 * u ^ 9 * v ^ 2 - 252000 * u ^ 9 * v ^ 3 * q - 116880 * u ^ 9 * v ^ 4 * q ^ 2 + 1120775 * u ^ 9 * v ^ 5 * q ^ 3 - 56349 * u ^ 10 * v ^ 2 * q + 126000 * u ^ 10 * v ^ 3 * q ^ 2 + 136560 * u ^ 10 * v ^ 4 * q ^ 3 - 12960 * u ^ 11 + 36732 * u ^ 11 * v ^ 2 * q ^ 2 + 2000 * u ^ 11 * v ^ 3 * q ^ 3 - 720 * u ^ 12 * q - 1461 * u ^ 12 * v ^ 2 * q ^ 3 + 960 * u ^ 13 * q ^ 2 - 80 * u ^ 14 * q ^ 3

set_option maxHeartbeats 0 in
theorem fourIdentity4 (u v q : ℤ) :
    81 * fourAuxiliary (-3 + q * u) (q * v) =
      fourQuotient4 (q * u) (q * v) * curve (-3 + q * u) (q * v) +
        q ^ 11 * fourResidual4 u v q := by
  unfold fourAuxiliary fourQuotient4 curve fourResidual4
  ring

theorem fourContact4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 11 ∣ fourAuxiliary z d := by
  have hK : IsCoprime q (81 : ℤ) :=
    (hc.pow_right (n := 4)).of_isCoprime_of_dvd_right (by norm_num)
  apply (hK.pow_left (m := 11)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -3 + q * u := by omega
  subst z
  refine ⟨fourResidual4 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using fourIdentity4 u v q

def fourQuotient5 (y d : ℤ) : ℤ :=
  201553920 + 1304781696 * d ^ 2 + 93312000 * d ^ 3 + 2596561920 * d ^ 4 + 413294400 * d ^ 5 + 1458262656 * d ^ 6 + 406045440 * d ^ 7 + 103020000 * d ^ 8 + 20000000 * d ^ 9 + 33592320 * y + 217463616 * y * d ^ 2 + 31104000 * y * d ^ 3 + 432760320 * y * d ^ 4 + 137764800 * y * d ^ 5 + 257443776 * y * d ^ 6 + 135348480 * y * d ^ 7 + 51510000 * y * d ^ 8 + 5598720 * y ^ 2 + 36243936 * y ^ 2 * d ^ 2 + 7776000 * y ^ 2 * d ^ 3 + 72126720 * y ^ 2 * d ^ 4 + 34441200 * y ^ 2 * d ^ 5 + 46507296 * y ^ 2 * d ^ 6 + 33837120 * y ^ 2 * d ^ 7 + 933120 * y ^ 3 + 6040656 * y ^ 3 * d ^ 2 + 1728000 * y ^ 3 * d ^ 3 + 12021120 * y ^ 3 * d ^ 4 + 7653600 * y ^ 3 * d ^ 5 + 8551216 * y ^ 3 * d ^ 6 + 155520 * y ^ 4 + 1006776 * y ^ 4 * d ^ 2 + 360000 * y ^ 4 * d ^ 3 + 2003520 * y ^ 4 * d ^ 4 + 1594500 * y ^ 4 * d ^ 5 + 25920 * y ^ 5 + 167796 * y ^ 5 * d ^ 2 + 72000 * y ^ 5 * d ^ 3 + 333920 * y ^ 5 * d ^ 4 + 4320 * y ^ 6 + 27966 * y ^ 6 * d ^ 2 + 14000 * y ^ 6 * d ^ 3 + 720 * y ^ 7 + 4661 * y ^ 7 * d ^ 2 + 120 * y ^ 8 + 20 * y ^ 9
def fourResidual5 (u v q : ℤ) : ℤ :=
  13600794240 * v ^ 11 + 4445049600 * v ^ 12 * q - 15373200000 * v ^ 13 * q ^ 2 + 6800000000 * v ^ 14 * q ^ 3 + 69856799040 * u * v ^ 11 * q - 88518316800 * u * v ^ 12 * q ^ 2 + 25913400000 * u * v ^ 13 * q ^ 3 + 25920000000 * u ^ 2 * v ^ 9 + 92718000000 * u ^ 2 * v ^ 10 * q - 130030700160 * u ^ 2 * v ^ 11 * q ^ 2 + 37138820800 * u ^ 2 * v ^ 12 * q ^ 3 + 33378480000 * u ^ 3 * v ^ 8 + 33404544000 * u ^ 3 * v ^ 9 * q - 86519568000 * u ^ 3 * v ^ 10 * q ^ 2 + 28221003840 * u ^ 3 * v ^ 11 * q ^ 3 + 14617635840 * u ^ 4 * v ^ 7 - 5311605600 * u ^ 4 * v ^ 8 * q - 29692677600 * u ^ 4 * v ^ 9 * q ^ 2 + 12961464720 * u ^ 4 * v ^ 10 * q ^ 3 + 3094593984 * u ^ 5 * v ^ 6 - 5383735200 * u ^ 5 * v ^ 7 * q - 5125903680 * u ^ 5 * v ^ 8 * q ^ 2 + 3826950800 * u ^ 5 * v ^ 9 * q ^ 3 + 619941600 * u ^ 6 * v ^ 5 - 1267929936 * u ^ 6 * v ^ 6 * q - 358366440 * u ^ 6 * v ^ 7 * q ^ 2 + 754445040 * u ^ 6 * v ^ 8 * q ^ 3 + 108190080 * u ^ 7 * v ^ 4 - 295570800 * u ^ 7 * v ^ 5 * q + 30547584 * u ^ 7 * v ^ 6 * q ^ 2 + 104191620 * u ^ 7 * v ^ 7 * q ^ 3 + 5184000 * u ^ 8 * v ^ 3 - 52905420 * u ^ 8 * v ^ 4 * q + 27429000 * u ^ 8 * v ^ 5 * q ^ 2 + 9563204 * u ^ 8 * v ^ 6 * q ^ 3 + 1510164 * u ^ 9 * v ^ 2 - 2628000 * u ^ 9 * v ^ 3 * q + 5776800 * u ^ 9 * v ^ 4 * q ^ 2 - 95500 * u ^ 9 * v ^ 5 * q ^ 3 - 779031 * u ^ 10 * v ^ 2 * q + 324000 * u ^ 10 * v ^ 3 * q ^ 2 - 139080 * u ^ 10 * v ^ 4 * q ^ 3 + 6480 * u ^ 11 + 102264 * u ^ 11 * v ^ 2 * q ^ 2 - 10000 * u ^ 11 * v ^ 3 * q ^ 3 - 3420 * u ^ 12 * q - 3861 * u ^ 12 * v ^ 2 * q ^ 3 + 480 * u ^ 13 * q ^ 2 - 20 * u ^ 14 * q ^ 3

set_option maxHeartbeats 0 in
theorem fourIdentity5 (u v q : ℤ) :
    20736 * fourAuxiliary (-6 + q * u) (q * v) =
      fourQuotient5 (q * u) (q * v) * curve (-6 + q * u) (q * v) +
        q ^ 11 * fourResidual5 u v q := by
  unfold fourAuxiliary fourQuotient5 curve fourResidual5
  ring

theorem fourContact5 (z d q : ℤ) (hy : q ∣ z - (-6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 11 ∣ fourAuxiliary z d := by
  have hK : IsCoprime q (20736 : ℤ) :=
    (hc.pow_right (n := 8)).of_isCoprime_of_dvd_right (by norm_num)
  apply (hK.pow_left (m := 11)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -6 + q * u := by omega
  subst z
  refine ⟨fourResidual5 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using fourIdentity5 u v q

/-- info: 'B686Round5Contact.fourIdentity1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms fourIdentity1
/-- info: 'B686Round5Contact.fourContact1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms fourContact1
/-- info: 'B686Round5Contact.fourIdentity2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms fourIdentity2
/-- info: 'B686Round5Contact.fourContact2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms fourContact2
/-- info: 'B686Round5Contact.fourIdentity4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms fourIdentity4
/-- info: 'B686Round5Contact.fourContact4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms fourContact4
/-- info: 'B686Round5Contact.fourIdentity5' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms fourIdentity5
/-- info: 'B686Round5Contact.fourContact5' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms fourContact5
end B686Round5Contact
