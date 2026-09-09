import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row117_height : HeightCertificateDatum := { i := 117, r := 38, s := 81, n0Power10 := 9 }

def row117_goods : List GoodSegment := [
  { lower := 236, upper := 349, witness := RowWitness.topPrime 233 },
  { lower := 350, upper := 465, witness := RowWitness.topPrime 349 },
  { lower := 466, upper := 579, witness := RowWitness.topPrime 463 },
  { lower := 580, upper := 693, witness := RowWitness.topPrime 577 },
  { lower := 694, upper := 807, witness := RowWitness.topPrime 691 },
  { lower := 808, upper := 913, witness := RowWitness.topPrime 797 },
  { lower := 914, upper := 1027, witness := RowWitness.topPrime 911 },
  { lower := 1028, upper := 1137, witness := RowWitness.topPrime 1021 },
  { lower := 1138, upper := 1245, witness := RowWitness.topPrime 1129 },
  { lower := 1246, upper := 1353, witness := RowWitness.topPrime 1237 },
  { lower := 1354, upper := 1443, witness := RowWitness.topPrime 1327 },
  { lower := 1444, upper := 1555, witness := RowWitness.topPrime 1439 },
  { lower := 1556, upper := 1669, witness := RowWitness.topPrime 1553 },
  { lower := 1670, upper := 1785, witness := RowWitness.topPrime 1669 },
  { lower := 1786, upper := 1899, witness := RowWitness.topPrime 1783 },
  { lower := 1900, upper := 2005, witness := RowWitness.topPrime 1889 },
  { lower := 2006, upper := 2119, witness := RowWitness.topPrime 2003 },
  { lower := 2120, upper := 2229, witness := RowWitness.topPrime 2113 },
  { lower := 2230, upper := 2337, witness := RowWitness.topPrime 2221 },
  { lower := 2338, upper := 2449, witness := RowWitness.topPrime 2333 },
  { lower := 2450, upper := 2563, witness := RowWitness.topPrime 2447 },
  { lower := 2564, upper := 2673, witness := RowWitness.topPrime 2557 },
  { lower := 2674, upper := 2787, witness := RowWitness.topPrime 2671 },
  { lower := 2788, upper := 2893, witness := RowWitness.topPrime 2777 },
  { lower := 2894, upper := 3003, witness := RowWitness.topPrime 2887 },
  { lower := 3004, upper := 3117, witness := RowWitness.topPrime 3001 },
  { lower := 3118, upper := 3225, witness := RowWitness.topPrime 3109 },
  { lower := 3226, upper := 3337, witness := RowWitness.topPrime 3221 },
  { lower := 3338, upper := 3447, witness := RowWitness.topPrime 3331 },
  { lower := 3448, upper := 3549, witness := RowWitness.topPrime 3433 },
  { lower := 3550, upper := 3663, witness := RowWitness.topPrime 3547 },
  { lower := 3664, upper := 3775, witness := RowWitness.topPrime 3659 },
  { lower := 3776, upper := 3885, witness := RowWitness.topPrime 3769 },
  { lower := 3886, upper := 3997, witness := RowWitness.topPrime 3881 },
  { lower := 3998, upper := 4105, witness := RowWitness.topPrime 3989 },
  { lower := 4106, upper := 4215, witness := RowWitness.topPrime 4099 },
  { lower := 4216, upper := 4327, witness := RowWitness.topPrime 4211 },
  { lower := 4328, upper := 4443, witness := RowWitness.topPrime 4327 },
  { lower := 4444, upper := 4557, witness := RowWitness.topPrime 4441 },
  { lower := 4558, upper := 4665, witness := RowWitness.topPrime 4549 },
  { lower := 4666, upper := 4779, witness := RowWitness.topPrime 4663 },
  { lower := 4780, upper := 4875, witness := RowWitness.topPrime 4759 },
  { lower := 4876, upper := 4987, witness := RowWitness.topPrime 4871 },
  { lower := 4988, upper := 5103, witness := RowWitness.topPrime 4987 },
  { lower := 5104, upper := 5217, witness := RowWitness.topPrime 5101 },
  { lower := 5218, upper := 5325, witness := RowWitness.topPrime 5209 },
  { lower := 5326, upper := 5439, witness := RowWitness.topPrime 5323 },
  { lower := 5440, upper := 5553, witness := RowWitness.topPrime 5437 },
  { lower := 5554, upper := 5647, witness := RowWitness.topPrime 5531 },
  { lower := 5648, upper := 5763, witness := RowWitness.topPrime 5647 },
  { lower := 5764, upper := 5865, witness := RowWitness.topPrime 5749 },
  { lower := 5866, upper := 5977, witness := RowWitness.topPrime 5861 },
  { lower := 5978, upper := 6069, witness := RowWitness.topPrime 5953 },
  { lower := 6070, upper := 6183, witness := RowWitness.topPrime 6067 },
  { lower := 6184, upper := 6289, witness := RowWitness.topPrime 6173 },
  { lower := 6290, upper := 6403, witness := RowWitness.topPrime 6287 },
  { lower := 6404, upper := 6513, witness := RowWitness.topPrime 6397 },
  { lower := 6514, upper := 6607, witness := RowWitness.topPrime 6491 },
  { lower := 6608, upper := 6723, witness := RowWitness.topPrime 6607 },
  { lower := 6724, upper := 6835, witness := RowWitness.topPrime 6719 },
  { lower := 6836, upper := 6949, witness := RowWitness.topPrime 6833 },
  { lower := 6950, upper := 7065, witness := RowWitness.topPrime 6949 },
  { lower := 7066, upper := 7173, witness := RowWitness.topPrime 7057 },
  { lower := 7174, upper := 7275, witness := RowWitness.topPrime 7159 },
  { lower := 7276, upper := 7369, witness := RowWitness.topPrime 7253 },
  { lower := 7370, upper := 7485, witness := RowWitness.topPrime 7369 },
  { lower := 7486, upper := 7597, witness := RowWitness.topPrime 7481 },
  { lower := 7598, upper := 7707, witness := RowWitness.topPrime 7591 },
  { lower := 7708, upper := 7819, witness := RowWitness.topPrime 7703 },
  { lower := 7820, upper := 7933, witness := RowWitness.topPrime 7817 },
  { lower := 7934, upper := 8049, witness := RowWitness.topPrime 7933 },
  { lower := 8050, upper := 8155, witness := RowWitness.topPrime 8039 },
  { lower := 8156, upper := 8263, witness := RowWitness.topPrime 8147 },
  { lower := 8264, upper := 8379, witness := RowWitness.topPrime 8263 },
  { lower := 8380, upper := 8493, witness := RowWitness.topPrime 8377 },
  { lower := 8494, upper := 8583, witness := RowWitness.topPrime 8467 },
  { lower := 8584, upper := 8697, witness := RowWitness.topPrime 8581 },
  { lower := 8698, upper := 8809, witness := RowWitness.topPrime 8693 },
  { lower := 8810, upper := 8923, witness := RowWitness.topPrime 8807 },
  { lower := 8924, upper := 9039, witness := RowWitness.topPrime 8923 },
  { lower := 9040, upper := 9145, witness := RowWitness.topPrime 9029 },
  { lower := 9146, upper := 9253, witness := RowWitness.topPrime 9137 },
  { lower := 9254, upper := 9357, witness := RowWitness.topPrime 9241 },
  { lower := 9358, upper := 9465, witness := RowWitness.topPrime 9349 },
  { lower := 9466, upper := 9579, witness := RowWitness.topPrime 9463 },
  { lower := 9580, upper := 9667, witness := RowWitness.topPrime 9551 },
  { lower := 9668, upper := 9777, witness := RowWitness.topPrime 9661 },
  { lower := 9778, upper := 9885, witness := RowWitness.topPrime 9769 },
  { lower := 9886, upper := 9999, witness := RowWitness.topPrime 9883 },
  { lower := 10000, upper := 10089, witness := RowWitness.topPrime 9973 },
  { lower := 10090, upper := 10195, witness := RowWitness.topPrime 10079 },
  { lower := 10196, upper := 10309, witness := RowWitness.topPrime 10193 },
  { lower := 10310, upper := 10419, witness := RowWitness.topPrime 10303 },
  { lower := 10420, upper := 10515, witness := RowWitness.topPrime 10399 },
  { lower := 10516, upper := 10629, witness := RowWitness.topPrime 10513 },
  { lower := 10630, upper := 10743, witness := RowWitness.topPrime 10627 },
  { lower := 10744, upper := 10855, witness := RowWitness.topPrime 10739 },
  { lower := 10856, upper := 10969, witness := RowWitness.topPrime 10853 },
  { lower := 10970, upper := 11073, witness := RowWitness.topPrime 10957 },
  { lower := 11074, upper := 11187, witness := RowWitness.topPrime 11071 },
  { lower := 11188, upper := 11293, witness := RowWitness.topPrime 11177 },
  { lower := 11294, upper := 11403, witness := RowWitness.topPrime 11287 },
  { lower := 11404, upper := 11515, witness := RowWitness.topPrime 11399 },
  { lower := 11516, upper := 11619, witness := RowWitness.topPrime 11503 },
  { lower := 11620, upper := 11733, witness := RowWitness.topPrime 11617 },
  { lower := 11734, upper := 11847, witness := RowWitness.topPrime 11731 },
  { lower := 11848, upper := 11955, witness := RowWitness.topPrime 11839 },
  { lower := 11956, upper := 12069, witness := RowWitness.topPrime 11953 },
  { lower := 12070, upper := 12165, witness := RowWitness.topPrime 12049 },
  { lower := 12166, upper := 12279, witness := RowWitness.topPrime 12163 },
  { lower := 12280, upper := 12393, witness := RowWitness.topPrime 12277 },
  { lower := 12394, upper := 12507, witness := RowWitness.topPrime 12391 },
  { lower := 12508, upper := 12619, witness := RowWitness.topPrime 12503 },
  { lower := 12620, upper := 12735, witness := RowWitness.topPrime 12619 },
  { lower := 12736, upper := 12837, witness := RowWitness.topPrime 12721 },
  { lower := 12838, upper := 12945, witness := RowWitness.topPrime 12829 },
  { lower := 12946, upper := 13057, witness := RowWitness.topPrime 12941 },
  { lower := 13058, upper := 13165, witness := RowWitness.topPrime 13049 },
  { lower := 13166, upper := 13279, witness := RowWitness.topPrime 13163 },
  { lower := 13280, upper := 13383, witness := RowWitness.topPrime 13267 },
  { lower := 13384, upper := 13497, witness := RowWitness.topPrime 13381 },
  { lower := 13498, upper := 13572, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13827, witness := RowWitness.topPrime 13711 },
  { lower := 13828, upper := 13870, witness := RowWitness.topPrime 13807 },
  { lower := 14336, upper := 14443, witness := RowWitness.topPrime 14327 },
  { lower := 14444, upper := 14522, witness := RowWitness.topPrime 14437 },
  { lower := 14739, upper := 14757, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14855, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14908, witness := RowWitness.topPrime 14879 },
  { lower := 15000, upper := 15000, witness := RowWitness.topPrime 14983 },
  { lower := 15059, upper := 15116, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15237, witness := RowWitness.topPrime 15121 },
  { lower := 15238, upper := 15245, witness := RowWitness.topPrime 15233 },
  { lower := 15376, upper := 15489, witness := RowWitness.topPrime 15373 },
  { lower := 15490, upper := 15492, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16089, witness := RowWitness.topPrime 15973 },
  { lower := 16090, upper := 16095, witness := RowWitness.topPrime 16087 },
  { lower := 16337, upper := 16366, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16497, witness := RowWitness.topPrime 16381 },
  { lower := 16498, upper := 16500, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16903, witness := RowWitness.topPrime 16787 },
  { lower := 16904, upper := 16936, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17415, witness := RowWitness.topPrime 17299 },
  { lower := 17416, upper := 17517, witness := RowWitness.topPrime 17401 },
  { lower := 17518, upper := 17521, witness := RowWitness.topPrime 17509 },
  { lower := 17672, upper := 17777, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18597, witness := RowWitness.topPrime 18481 },
  { lower := 18598, upper := 18618, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18721, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18835, witness := RowWitness.topPrime 18719 },
  { lower := 18836, upper := 18866, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19323, witness := RowWitness.topPrime 19207 },
  { lower := 19324, upper := 19324, witness := RowWitness.topPrime 19319 },
  { lower := 19456, upper := 19459, witness := RowWitness.topPrime 19447 },
  { lower := 19663, upper := 19777, witness := RowWitness.topPrime 19661 },
  { lower := 19778, upper := 19779, witness := RowWitness.topPrime 19777 },
  { lower := 19965, upper := 19997, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20277, witness := RowWitness.topPrime 20161 },
  { lower := 20278, upper := 20297, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20455, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20518, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20649, witness := RowWitness.topPrime 20533 },
  { lower := 20650, upper := 20651, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20693, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21258, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21399, witness := RowWitness.topPrime 21283 },
  { lower := 21400, upper := 21412, witness := RowWitness.topPrime 21397 },
  { lower := 21609, upper := 21620, witness := RowWitness.topPrime 21601 },
  { lower := 21866, upper := 21979, witness := RowWitness.topPrime 21863 },
  { lower := 21980, upper := 21991, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22209, witness := RowWitness.topPrime 22093 },
  { lower := 22210, upper := 22219, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22585, witness := RowWitness.topPrime 22469 },
  { lower := 22586, upper := 22588, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22644, witness := RowWitness.topPrime 22621 },
  { lower := 23552, upper := 23650, witness := RowWitness.topPrime 23549 },
  { lower := 23763, upper := 23877, witness := RowWitness.topPrime 23761 },
  { lower := 23878, upper := 23878, witness := RowWitness.topPrime 23873 },
  { lower := 24010, upper := 24123, witness := RowWitness.topPrime 24007 },
  { lower := 24124, upper := 24141, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24445, witness := RowWitness.topPrime 24329 },
  { lower := 24446, upper := 24483, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24687, witness := RowWitness.topPrime 24571 },
  { lower := 24688, upper := 24692, witness := RowWitness.topPrime 24683 },
  { lower := 24986, upper := 25095, witness := RowWitness.topPrime 24979 },
  { lower := 25096, upper := 25102, witness := RowWitness.topPrime 25087 },
  { lower := 25215, upper := 25305, witness := RowWitness.topPrime 25189 },
  { lower := 25306, upper := 25397, witness := RowWitness.topPrime 25303 },
  { lower := 25600, upper := 25654, witness := RowWitness.topPrime 25589 },
  { lower := 26047, upper := 26127, witness := RowWitness.topPrime 26041 },
  { lower := 26508, upper := 26527, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26713, witness := RowWitness.topPrime 26597 },
  { lower := 26714, upper := 26740, witness := RowWitness.topPrime 26713 },
  { lower := 26934, upper := 27012, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27496, witness := RowWitness.topPrime 27431 },
  { lower := 27848, upper := 27851, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27964, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28206, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28241, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28689, witness := RowWitness.topPrime 28573 },
  { lower := 28690, upper := 28693, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28827, witness := RowWitness.topPrime 28711 },
  { lower := 28828, upper := 28865, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29594, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29884, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30362, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 31015, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31309, witness := RowWitness.topPrime 31193 },
  { lower := 31310, upper := 31366, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31513, witness := RowWitness.topPrime 31397 },
  { lower := 31514, upper := 31539, witness := RowWitness.topPrime 31513 },
  { lower := 31939, upper := 31943, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32055, witness := RowWitness.topPrime 31973 },
  { lower := 33620, upper := 33735, witness := RowWitness.topPrime 33619 },
  { lower := 33736, upper := 33736, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34453, witness := RowWitness.topPrime 34337 },
  { lower := 34454, upper := 34507, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34923, witness := RowWitness.topPrime 34807 },
  { lower := 34924, upper := 34926, witness := RowWitness.topPrime 34919 },
  { lower := 35301, upper := 35407, witness := RowWitness.topPrime 35291 },
  { lower := 35408, upper := 35417, witness := RowWitness.topPrime 35407 },
  { lower := 36015, upper := 36028, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36613, witness := RowWitness.topPrime 36497 },
  { lower := 36614, upper := 36617, witness := RowWitness.topPrime 36607 },
  { lower := 36980, upper := 36980, witness := RowWitness.topPrime 36979 },
  { lower := 37303, upper := 37326, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37609, witness := RowWitness.topPrime 37493 },
  { lower := 37610, upper := 37616, witness := RowWitness.topPrime 37607 },
  { lower := 37636, upper := 37669, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38407, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38423, witness := RowWitness.topPrime 38393 },
  { lower := 38912, upper := 38945, witness := RowWitness.topPrime 38903 },
  { lower := 39326, upper := 39439, witness := RowWitness.topPrime 39323 },
  { lower := 39440, upper := 39442, witness := RowWitness.topPrime 39439 },
  { lower := 40401, upper := 40444, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40920, witness := RowWitness.topPrime 40813 },
  { lower := 40931, upper := 40933, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41047, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43803, witness := RowWitness.topPrime 43721 },
  { lower := 44217, upper := 44296, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45006, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45060, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45369, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47637, witness := RowWitness.topPrime 47521 },
  { lower := 47638, upper := 47640, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48097, witness := RowWitness.topPrime 47981 },
  { lower := 48098, upper := 48129, witness := RowWitness.topPrime 48091 },
  { lower := 48734, upper := 48849, witness := RowWitness.topPrime 48733 },
  { lower := 48850, upper := 48850, witness := RowWitness.topPrime 48847 },
  { lower := 49152, upper := 49246, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50044, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50526, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50678, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51121, witness := RowWitness.topPrime 51071 },
  { lower := 53125, upper := 53161, witness := RowWitness.topPrime 53117 },
  { lower := 53290, upper := 53364, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53406, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55557, witness := RowWitness.topPrime 55441 },
  { lower := 55558, upper := 55563, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57361, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58680, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59072, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59652, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62526, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63373, witness := RowWitness.topPrime 63367 },
  { lower := 63869, upper := 63979, witness := RowWitness.topPrime 63863 },
  { lower := 63980, upper := 63985, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65637, witness := RowWitness.topPrime 65521 },
  { lower := 65638, upper := 65649, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67344, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68755, witness := RowWitness.topPrime 68639 },
  { lower := 68756, upper := 68767, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68810, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68898, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69006, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71402, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73283, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73811, witness := RowWitness.topPrime 73727 },
  { lower := 85264, upper := 85285, witness := RowWitness.topPrime 85259 },
  { lower := 89383, upper := 89489, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95143, witness := RowWitness.topPrime 95027 },
  { lower := 95144, upper := 95164, witness := RowWitness.topPrime 95143 },
  { lower := 102973, upper := 103001, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103089, witness := RowWitness.topPrime 103007 },
  { lower := 106097, upper := 106203, witness := RowWitness.topPrime 106087 },
  { lower := 106204, upper := 106206, witness := RowWitness.topPrime 106189 },
  { lower := 122412, upper := 122433, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131842, witness := RowWitness.topPrime 131759 },
  { lower := 137917, upper := 137958, witness := RowWitness.topPrime 137911 },
  { lower := 146410, upper := 146450, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148953, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148993, witness := RowWitness.topPrime 148949 },
  { lower := 178766, upper := 178862, witness := RowWitness.topPrime 178757 },
  { lower := 327701, upper := 327796, witness := RowWitness.topPrime 327689 }
]

def row117_layers : List CoverLayer := [
  { lower := 13572, upper := 27144, M := 26 },
  { lower := 27144, upper := 54288, M := 21 },
  { lower := 54288, upper := 108576, M := 17 },
  { lower := 108576, upper := 217152, M := 14 },
  { lower := 217152, upper := 434304, M := 12 },
  { lower := 434304, upper := 868608, M := 10 },
  { lower := 868608, upper := 1737216, M := 8 },
  { lower := 1737216, upper := 3474432, M := 7 },
  { lower := 3474432, upper := 6948864, M := 5 },
  { lower := 6948864, upper := 13897728, M := 4 },
  { lower := 13897728, upper := 27795456, M := 4 },
  { lower := 27795456, upper := 55590912, M := 3 },
  { lower := 55590912, upper := 111181824, M := 3 },
  { lower := 111181824, upper := 222363648, M := 2 },
  { lower := 222363648, upper := 444727296, M := 2 },
  { lower := 444727296, upper := 889454592, M := 2 },
  { lower := 889454592, upper := 1000000000, M := 1 }
]

def row117 : FiniteCoverRow := {
  height := row117_height,
  goods := row117_goods,
  layers := row117_layers
}

theorem row117_registered :
    decide (row117.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row117_goods_checked :
    row117.goods.all (goodSegmentCheck row117.height.i row117.height.r row117.height.s) = true := by
  decide +kernel

theorem row117_small_checked :
    coverCheck (2 * row117.height.i + 2) (row117.height.i * (row117.height.i - 1) - 1)
      (row117.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row117_layerCover_checked :
    coverCheck (row117.height.i * (row117.height.i - 1)) (row117.height.n0 - 1)
      (row117.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row117_layer000_checked :
    coverLayerCheck row117.height row117.goods { lower := 13572, upper := 27144, M := 26 } = true := by
  decide +kernel

theorem row117_layer001_checked :
    coverLayerCheck row117.height row117.goods { lower := 27144, upper := 54288, M := 21 } = true := by
  decide +kernel

theorem row117_layer002_checked :
    coverLayerCheck row117.height row117.goods { lower := 54288, upper := 108576, M := 17 } = true := by
  decide +kernel

theorem row117_layer003_checked :
    coverLayerCheck row117.height row117.goods { lower := 108576, upper := 217152, M := 14 } = true := by
  decide +kernel

theorem row117_layer004_checked :
    coverLayerCheck row117.height row117.goods { lower := 217152, upper := 434304, M := 12 } = true := by
  decide +kernel

theorem row117_layer005_checked :
    coverLayerCheck row117.height row117.goods { lower := 434304, upper := 868608, M := 10 } = true := by
  decide +kernel

theorem row117_layer006_checked :
    coverLayerCheck row117.height row117.goods { lower := 868608, upper := 1737216, M := 8 } = true := by
  decide +kernel

theorem row117_layer007_checked :
    coverLayerCheck row117.height row117.goods { lower := 1737216, upper := 3474432, M := 7 } = true := by
  decide +kernel

theorem row117_layer008_checked :
    coverLayerCheck row117.height row117.goods { lower := 3474432, upper := 6948864, M := 5 } = true := by
  decide +kernel

theorem row117_layer009_checked :
    coverLayerCheck row117.height row117.goods { lower := 6948864, upper := 13897728, M := 4 } = true := by
  decide +kernel

theorem row117_layer010_checked :
    coverLayerCheck row117.height row117.goods { lower := 13897728, upper := 27795456, M := 4 } = true := by
  decide +kernel

theorem row117_layer011_checked :
    coverLayerCheck row117.height row117.goods { lower := 27795456, upper := 55590912, M := 3 } = true := by
  decide +kernel

theorem row117_layer012_checked :
    coverLayerCheck row117.height row117.goods { lower := 55590912, upper := 111181824, M := 3 } = true := by
  decide +kernel

theorem row117_layer013_checked :
    coverLayerCheck row117.height row117.goods { lower := 111181824, upper := 222363648, M := 2 } = true := by
  decide +kernel

theorem row117_layer014_checked :
    coverLayerCheck row117.height row117.goods { lower := 222363648, upper := 444727296, M := 2 } = true := by
  decide +kernel

theorem row117_layer015_checked :
    coverLayerCheck row117.height row117.goods { lower := 444727296, upper := 889454592, M := 2 } = true := by
  decide +kernel

theorem row117_layer016_checked :
    coverLayerCheck row117.height row117.goods { lower := 889454592, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row117_layers_checked :
    row117.layers.all (coverLayerCheck row117.height row117.goods) = true := by
  change List.all [
    { lower := 13572, upper := 27144, M := 26 },
    { lower := 27144, upper := 54288, M := 21 },
    { lower := 54288, upper := 108576, M := 17 },
    { lower := 108576, upper := 217152, M := 14 },
    { lower := 217152, upper := 434304, M := 12 },
    { lower := 434304, upper := 868608, M := 10 },
    { lower := 868608, upper := 1737216, M := 8 },
    { lower := 1737216, upper := 3474432, M := 7 },
    { lower := 3474432, upper := 6948864, M := 5 },
    { lower := 6948864, upper := 13897728, M := 4 },
    { lower := 13897728, upper := 27795456, M := 4 },
    { lower := 27795456, upper := 55590912, M := 3 },
    { lower := 55590912, upper := 111181824, M := 3 },
    { lower := 111181824, upper := 222363648, M := 2 },
    { lower := 222363648, upper := 444727296, M := 2 },
    { lower := 444727296, upper := 889454592, M := 2 },
    { lower := 889454592, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row117.height row117.goods) = true
  simp only [List.all_cons, List.all_nil,
    row117_layer000_checked,
    row117_layer001_checked,
    row117_layer002_checked,
    row117_layer003_checked,
    row117_layer004_checked,
    row117_layer005_checked,
    row117_layer006_checked,
    row117_layer007_checked,
    row117_layer008_checked,
    row117_layer009_checked,
    row117_layer010_checked,
    row117_layer011_checked,
    row117_layer012_checked,
    row117_layer013_checked,
    row117_layer014_checked,
    row117_layer015_checked,
    row117_layer016_checked,
    Bool.true_and]

theorem row117_checked : finiteCoverRowCheck row117 = true := by
  simp only [finiteCoverRowCheck, row117_registered, row117_goods_checked,
    row117_small_checked, row117_layerCover_checked, row117_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row117_checked

end B699LowIndex
