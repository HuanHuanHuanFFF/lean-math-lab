import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good000_checked :
    goodSegmentCheck 117 38 81
      { lower := 236, upper := 349, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good001_checked :
    goodSegmentCheck 117 38 81
      { lower := 350, upper := 465, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good002_checked :
    goodSegmentCheck 117 38 81
      { lower := 466, upper := 579, witness := RowWitness.topPrime 463 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good003_checked :
    goodSegmentCheck 117 38 81
      { lower := 580, upper := 693, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good004_checked :
    goodSegmentCheck 117 38 81
      { lower := 694, upper := 807, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good005_checked :
    goodSegmentCheck 117 38 81
      { lower := 808, upper := 913, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good006_checked :
    goodSegmentCheck 117 38 81
      { lower := 914, upper := 1027, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good007_checked :
    goodSegmentCheck 117 38 81
      { lower := 1028, upper := 1137, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good008_checked :
    goodSegmentCheck 117 38 81
      { lower := 1138, upper := 1245, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good009_checked :
    goodSegmentCheck 117 38 81
      { lower := 1246, upper := 1353, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good010_checked :
    goodSegmentCheck 117 38 81
      { lower := 1354, upper := 1443, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good011_checked :
    goodSegmentCheck 117 38 81
      { lower := 1444, upper := 1555, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good012_checked :
    goodSegmentCheck 117 38 81
      { lower := 1556, upper := 1669, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good013_checked :
    goodSegmentCheck 117 38 81
      { lower := 1670, upper := 1785, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good014_checked :
    goodSegmentCheck 117 38 81
      { lower := 1786, upper := 1899, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good015_checked :
    goodSegmentCheck 117 38 81
      { lower := 1900, upper := 2005, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good016_checked :
    goodSegmentCheck 117 38 81
      { lower := 2006, upper := 2119, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good017_checked :
    goodSegmentCheck 117 38 81
      { lower := 2120, upper := 2229, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good018_checked :
    goodSegmentCheck 117 38 81
      { lower := 2230, upper := 2337, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good019_checked :
    goodSegmentCheck 117 38 81
      { lower := 2338, upper := 2449, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good020_checked :
    goodSegmentCheck 117 38 81
      { lower := 2450, upper := 2563, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good021_checked :
    goodSegmentCheck 117 38 81
      { lower := 2564, upper := 2673, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good022_checked :
    goodSegmentCheck 117 38 81
      { lower := 2674, upper := 2787, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good023_checked :
    goodSegmentCheck 117 38 81
      { lower := 2788, upper := 2893, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good024_checked :
    goodSegmentCheck 117 38 81
      { lower := 2894, upper := 3003, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good025_checked :
    goodSegmentCheck 117 38 81
      { lower := 3004, upper := 3117, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good026_checked :
    goodSegmentCheck 117 38 81
      { lower := 3118, upper := 3225, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good027_checked :
    goodSegmentCheck 117 38 81
      { lower := 3226, upper := 3337, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good028_checked :
    goodSegmentCheck 117 38 81
      { lower := 3338, upper := 3447, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good029_checked :
    goodSegmentCheck 117 38 81
      { lower := 3448, upper := 3549, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good030_checked :
    goodSegmentCheck 117 38 81
      { lower := 3550, upper := 3663, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good031_checked :
    goodSegmentCheck 117 38 81
      { lower := 3664, upper := 3775, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good032_checked :
    goodSegmentCheck 117 38 81
      { lower := 3776, upper := 3885, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good033_checked :
    goodSegmentCheck 117 38 81
      { lower := 3886, upper := 3997, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good034_checked :
    goodSegmentCheck 117 38 81
      { lower := 3998, upper := 4105, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good035_checked :
    goodSegmentCheck 117 38 81
      { lower := 4106, upper := 4215, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good036_checked :
    goodSegmentCheck 117 38 81
      { lower := 4216, upper := 4327, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good037_checked :
    goodSegmentCheck 117 38 81
      { lower := 4328, upper := 4443, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good038_checked :
    goodSegmentCheck 117 38 81
      { lower := 4444, upper := 4557, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good039_checked :
    goodSegmentCheck 117 38 81
      { lower := 4558, upper := 4665, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good040_checked :
    goodSegmentCheck 117 38 81
      { lower := 4666, upper := 4779, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good041_checked :
    goodSegmentCheck 117 38 81
      { lower := 4780, upper := 4875, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good042_checked :
    goodSegmentCheck 117 38 81
      { lower := 4876, upper := 4987, witness := RowWitness.topPrime 4871 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good043_checked :
    goodSegmentCheck 117 38 81
      { lower := 4988, upper := 5103, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good044_checked :
    goodSegmentCheck 117 38 81
      { lower := 5104, upper := 5217, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good045_checked :
    goodSegmentCheck 117 38 81
      { lower := 5218, upper := 5325, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good046_checked :
    goodSegmentCheck 117 38 81
      { lower := 5326, upper := 5439, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good047_checked :
    goodSegmentCheck 117 38 81
      { lower := 5440, upper := 5553, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good048_checked :
    goodSegmentCheck 117 38 81
      { lower := 5554, upper := 5647, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good049_checked :
    goodSegmentCheck 117 38 81
      { lower := 5648, upper := 5763, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good050_checked :
    goodSegmentCheck 117 38 81
      { lower := 5764, upper := 5865, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good051_checked :
    goodSegmentCheck 117 38 81
      { lower := 5866, upper := 5977, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good052_checked :
    goodSegmentCheck 117 38 81
      { lower := 5978, upper := 6069, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good053_checked :
    goodSegmentCheck 117 38 81
      { lower := 6070, upper := 6183, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good054_checked :
    goodSegmentCheck 117 38 81
      { lower := 6184, upper := 6289, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good055_checked :
    goodSegmentCheck 117 38 81
      { lower := 6290, upper := 6403, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good056_checked :
    goodSegmentCheck 117 38 81
      { lower := 6404, upper := 6513, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good057_checked :
    goodSegmentCheck 117 38 81
      { lower := 6514, upper := 6607, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good058_checked :
    goodSegmentCheck 117 38 81
      { lower := 6608, upper := 6723, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good059_checked :
    goodSegmentCheck 117 38 81
      { lower := 6724, upper := 6835, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good060_checked :
    goodSegmentCheck 117 38 81
      { lower := 6836, upper := 6949, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good061_checked :
    goodSegmentCheck 117 38 81
      { lower := 6950, upper := 7065, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good062_checked :
    goodSegmentCheck 117 38 81
      { lower := 7066, upper := 7173, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good063_checked :
    goodSegmentCheck 117 38 81
      { lower := 7174, upper := 7275, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good064_checked :
    goodSegmentCheck 117 38 81
      { lower := 7276, upper := 7369, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good065_checked :
    goodSegmentCheck 117 38 81
      { lower := 7370, upper := 7485, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good066_checked :
    goodSegmentCheck 117 38 81
      { lower := 7486, upper := 7597, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good067_checked :
    goodSegmentCheck 117 38 81
      { lower := 7598, upper := 7707, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good068_checked :
    goodSegmentCheck 117 38 81
      { lower := 7708, upper := 7819, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good069_checked :
    goodSegmentCheck 117 38 81
      { lower := 7820, upper := 7933, witness := RowWitness.topPrime 7817 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good070_checked :
    goodSegmentCheck 117 38 81
      { lower := 7934, upper := 8049, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good071_checked :
    goodSegmentCheck 117 38 81
      { lower := 8050, upper := 8155, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good072_checked :
    goodSegmentCheck 117 38 81
      { lower := 8156, upper := 8263, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good073_checked :
    goodSegmentCheck 117 38 81
      { lower := 8264, upper := 8379, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good074_checked :
    goodSegmentCheck 117 38 81
      { lower := 8380, upper := 8493, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good075_checked :
    goodSegmentCheck 117 38 81
      { lower := 8494, upper := 8583, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good076_checked :
    goodSegmentCheck 117 38 81
      { lower := 8584, upper := 8697, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good077_checked :
    goodSegmentCheck 117 38 81
      { lower := 8698, upper := 8809, witness := RowWitness.topPrime 8693 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good078_checked :
    goodSegmentCheck 117 38 81
      { lower := 8810, upper := 8923, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good079_checked :
    goodSegmentCheck 117 38 81
      { lower := 8924, upper := 9039, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good080_checked :
    goodSegmentCheck 117 38 81
      { lower := 9040, upper := 9145, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good081_checked :
    goodSegmentCheck 117 38 81
      { lower := 9146, upper := 9253, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good082_checked :
    goodSegmentCheck 117 38 81
      { lower := 9254, upper := 9357, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good083_checked :
    goodSegmentCheck 117 38 81
      { lower := 9358, upper := 9465, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good084_checked :
    goodSegmentCheck 117 38 81
      { lower := 9466, upper := 9579, witness := RowWitness.topPrime 9463 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good085_checked :
    goodSegmentCheck 117 38 81
      { lower := 9580, upper := 9667, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good086_checked :
    goodSegmentCheck 117 38 81
      { lower := 9668, upper := 9777, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good087_checked :
    goodSegmentCheck 117 38 81
      { lower := 9778, upper := 9885, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good088_checked :
    goodSegmentCheck 117 38 81
      { lower := 9886, upper := 9999, witness := RowWitness.topPrime 9883 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good089_checked :
    goodSegmentCheck 117 38 81
      { lower := 10000, upper := 10089, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good090_checked :
    goodSegmentCheck 117 38 81
      { lower := 10090, upper := 10195, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good091_checked :
    goodSegmentCheck 117 38 81
      { lower := 10196, upper := 10309, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good092_checked :
    goodSegmentCheck 117 38 81
      { lower := 10310, upper := 10419, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good093_checked :
    goodSegmentCheck 117 38 81
      { lower := 10420, upper := 10515, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good094_checked :
    goodSegmentCheck 117 38 81
      { lower := 10516, upper := 10629, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good095_checked :
    goodSegmentCheck 117 38 81
      { lower := 10630, upper := 10743, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good096_checked :
    goodSegmentCheck 117 38 81
      { lower := 10744, upper := 10855, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good097_checked :
    goodSegmentCheck 117 38 81
      { lower := 10856, upper := 10969, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good098_checked :
    goodSegmentCheck 117 38 81
      { lower := 10970, upper := 11073, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good099_checked :
    goodSegmentCheck 117 38 81
      { lower := 11074, upper := 11187, witness := RowWitness.topPrime 11071 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good100_checked :
    goodSegmentCheck 117 38 81
      { lower := 11188, upper := 11293, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good101_checked :
    goodSegmentCheck 117 38 81
      { lower := 11294, upper := 11403, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good102_checked :
    goodSegmentCheck 117 38 81
      { lower := 11404, upper := 11515, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good103_checked :
    goodSegmentCheck 117 38 81
      { lower := 11516, upper := 11619, witness := RowWitness.topPrime 11503 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good104_checked :
    goodSegmentCheck 117 38 81
      { lower := 11620, upper := 11733, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good105_checked :
    goodSegmentCheck 117 38 81
      { lower := 11734, upper := 11847, witness := RowWitness.topPrime 11731 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good106_checked :
    goodSegmentCheck 117 38 81
      { lower := 11848, upper := 11955, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good107_checked :
    goodSegmentCheck 117 38 81
      { lower := 11956, upper := 12069, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good108_checked :
    goodSegmentCheck 117 38 81
      { lower := 12070, upper := 12165, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good109_checked :
    goodSegmentCheck 117 38 81
      { lower := 12166, upper := 12279, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good110_checked :
    goodSegmentCheck 117 38 81
      { lower := 12280, upper := 12393, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good111_checked :
    goodSegmentCheck 117 38 81
      { lower := 12394, upper := 12507, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good112_checked :
    goodSegmentCheck 117 38 81
      { lower := 12508, upper := 12619, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good113_checked :
    goodSegmentCheck 117 38 81
      { lower := 12620, upper := 12735, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good114_checked :
    goodSegmentCheck 117 38 81
      { lower := 12736, upper := 12837, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good115_checked :
    goodSegmentCheck 117 38 81
      { lower := 12838, upper := 12945, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good116_checked :
    goodSegmentCheck 117 38 81
      { lower := 12946, upper := 13057, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good117_checked :
    goodSegmentCheck 117 38 81
      { lower := 13058, upper := 13165, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good118_checked :
    goodSegmentCheck 117 38 81
      { lower := 13166, upper := 13279, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good119_checked :
    goodSegmentCheck 117 38 81
      { lower := 13280, upper := 13383, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good120_checked :
    goodSegmentCheck 117 38 81
      { lower := 13384, upper := 13497, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good121_checked :
    goodSegmentCheck 117 38 81
      { lower := 13498, upper := 13572, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good122_checked :
    goodSegmentCheck 117 38 81
      { lower := 13718, upper := 13827, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good123_checked :
    goodSegmentCheck 117 38 81
      { lower := 13828, upper := 13870, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good124_checked :
    goodSegmentCheck 117 38 81
      { lower := 14336, upper := 14443, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good125_checked :
    goodSegmentCheck 117 38 81
      { lower := 14444, upper := 14522, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good126_checked :
    goodSegmentCheck 117 38 81
      { lower := 14739, upper := 14757, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good127_checked :
    goodSegmentCheck 117 38 81
      { lower := 14792, upper := 14855, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good128_checked :
    goodSegmentCheck 117 38 81
      { lower := 14884, upper := 14908, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good129_checked :
    goodSegmentCheck 117 38 81
      { lower := 15000, upper := 15000, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good130_checked :
    goodSegmentCheck 117 38 81
      { lower := 15059, upper := 15116, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good131_checked :
    goodSegmentCheck 117 38 81
      { lower := 15123, upper := 15237, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good132_checked :
    goodSegmentCheck 117 38 81
      { lower := 15238, upper := 15245, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good133_checked :
    goodSegmentCheck 117 38 81
      { lower := 15376, upper := 15489, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good134_checked :
    goodSegmentCheck 117 38 81
      { lower := 15490, upper := 15492, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good135_checked :
    goodSegmentCheck 117 38 81
      { lower := 15979, upper := 16089, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good136_checked :
    goodSegmentCheck 117 38 81
      { lower := 16090, upper := 16095, witness := RowWitness.topPrime 16087 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good137_checked :
    goodSegmentCheck 117 38 81
      { lower := 16337, upper := 16366, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good138_checked :
    goodSegmentCheck 117 38 81
      { lower := 16384, upper := 16497, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good139_checked :
    goodSegmentCheck 117 38 81
      { lower := 16498, upper := 16500, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good140_checked :
    goodSegmentCheck 117 38 81
      { lower := 16810, upper := 16903, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good141_checked :
    goodSegmentCheck 117 38 81
      { lower := 16904, upper := 16936, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good142_checked :
    goodSegmentCheck 117 38 81
      { lower := 17303, upper := 17415, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good143_checked :
    goodSegmentCheck 117 38 81
      { lower := 17416, upper := 17517, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good144_checked :
    goodSegmentCheck 117 38 81
      { lower := 17518, upper := 17521, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good145_checked :
    goodSegmentCheck 117 38 81
      { lower := 17672, upper := 17777, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good146_checked :
    goodSegmentCheck 117 38 81
      { lower := 18490, upper := 18597, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good147_checked :
    goodSegmentCheck 117 38 81
      { lower := 18598, upper := 18618, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good148_checked :
    goodSegmentCheck 117 38 81
      { lower := 18634, upper := 18721, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good149_checked :
    goodSegmentCheck 117 38 81
      { lower := 18723, upper := 18835, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good150_checked :
    goodSegmentCheck 117 38 81
      { lower := 18836, upper := 18866, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good151_checked :
    goodSegmentCheck 117 38 81
      { lower := 19208, upper := 19323, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good152_checked :
    goodSegmentCheck 117 38 81
      { lower := 19324, upper := 19324, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good153_checked :
    goodSegmentCheck 117 38 81
      { lower := 19456, upper := 19459, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good154_checked :
    goodSegmentCheck 117 38 81
      { lower := 19663, upper := 19777, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good155_checked :
    goodSegmentCheck 117 38 81
      { lower := 19778, upper := 19779, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good156_checked :
    goodSegmentCheck 117 38 81
      { lower := 19965, upper := 19997, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good157_checked :
    goodSegmentCheck 117 38 81
      { lower := 20172, upper := 20277, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good158_checked :
    goodSegmentCheck 117 38 81
      { lower := 20278, upper := 20297, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good159_checked :
    goodSegmentCheck 117 38 81
      { lower := 20402, upper := 20455, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good160_checked :
    goodSegmentCheck 117 38 81
      { lower := 20480, upper := 20518, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good161_checked :
    goodSegmentCheck 117 38 81
      { lower := 20535, upper := 20649, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good162_checked :
    goodSegmentCheck 117 38 81
      { lower := 20650, upper := 20651, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good163_checked :
    goodSegmentCheck 117 38 81
      { lower := 20667, upper := 20693, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good164_checked :
    goodSegmentCheck 117 38 81
      { lower := 21218, upper := 21258, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good165_checked :
    goodSegmentCheck 117 38 81
      { lower := 21296, upper := 21399, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good166_checked :
    goodSegmentCheck 117 38 81
      { lower := 21400, upper := 21412, witness := RowWitness.topPrime 21397 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good167_checked :
    goodSegmentCheck 117 38 81
      { lower := 21609, upper := 21620, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good168_checked :
    goodSegmentCheck 117 38 81
      { lower := 21866, upper := 21979, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good169_checked :
    goodSegmentCheck 117 38 81
      { lower := 21980, upper := 21991, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good170_checked :
    goodSegmentCheck 117 38 81
      { lower := 22103, upper := 22209, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good171_checked :
    goodSegmentCheck 117 38 81
      { lower := 22210, upper := 22219, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good172_checked :
    goodSegmentCheck 117 38 81
      { lower := 22472, upper := 22585, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good173_checked :
    goodSegmentCheck 117 38 81
      { lower := 22586, upper := 22588, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good174_checked :
    goodSegmentCheck 117 38 81
      { lower := 22627, upper := 22644, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good175_checked :
    goodSegmentCheck 117 38 81
      { lower := 23552, upper := 23650, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good176_checked :
    goodSegmentCheck 117 38 81
      { lower := 23763, upper := 23877, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good177_checked :
    goodSegmentCheck 117 38 81
      { lower := 23878, upper := 23878, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good178_checked :
    goodSegmentCheck 117 38 81
      { lower := 24010, upper := 24123, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good179_checked :
    goodSegmentCheck 117 38 81
      { lower := 24124, upper := 24141, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good180_checked :
    goodSegmentCheck 117 38 81
      { lower := 24334, upper := 24445, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good181_checked :
    goodSegmentCheck 117 38 81
      { lower := 24446, upper := 24483, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good182_checked :
    goodSegmentCheck 117 38 81
      { lower := 24576, upper := 24687, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good183_checked :
    goodSegmentCheck 117 38 81
      { lower := 24688, upper := 24692, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good184_checked :
    goodSegmentCheck 117 38 81
      { lower := 24986, upper := 25095, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good185_checked :
    goodSegmentCheck 117 38 81
      { lower := 25096, upper := 25102, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good186_checked :
    goodSegmentCheck 117 38 81
      { lower := 25215, upper := 25305, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good187_checked :
    goodSegmentCheck 117 38 81
      { lower := 25306, upper := 25397, witness := RowWitness.topPrime 25303 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good188_checked :
    goodSegmentCheck 117 38 81
      { lower := 25600, upper := 25654, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good189_checked :
    goodSegmentCheck 117 38 81
      { lower := 26047, upper := 26127, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good190_checked :
    goodSegmentCheck 117 38 81
      { lower := 26508, upper := 26527, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good191_checked :
    goodSegmentCheck 117 38 81
      { lower := 26620, upper := 26713, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good192_checked :
    goodSegmentCheck 117 38 81
      { lower := 26714, upper := 26740, witness := RowWitness.topPrime 26713 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good193_checked :
    goodSegmentCheck 117 38 81
      { lower := 26934, upper := 27012, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good194_checked :
    goodSegmentCheck 117 38 81
      { lower := 27436, upper := 27496, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good195_checked :
    goodSegmentCheck 117 38 81
      { lower := 27848, upper := 27851, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good196_checked :
    goodSegmentCheck 117 38 81
      { lower := 27951, upper := 27964, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good197_checked :
    goodSegmentCheck 117 38 81
      { lower := 28125, upper := 28206, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good198_checked :
    goodSegmentCheck 117 38 81
      { lower := 28227, upper := 28241, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good199_checked :
    goodSegmentCheck 117 38 81
      { lower := 28577, upper := 28689, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good200_checked :
    goodSegmentCheck 117 38 81
      { lower := 28690, upper := 28693, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good201_checked :
    goodSegmentCheck 117 38 81
      { lower := 28717, upper := 28827, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good202_checked :
    goodSegmentCheck 117 38 81
      { lower := 28828, upper := 28865, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good203_checked :
    goodSegmentCheck 117 38 81
      { lower := 29584, upper := 29594, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good204_checked :
    goodSegmentCheck 117 38 81
      { lower := 29791, upper := 29884, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good205_checked :
    goodSegmentCheck 117 38 81
      { lower := 30258, upper := 30362, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good206_checked :
    goodSegmentCheck 117 38 81
      { lower := 30926, upper := 31015, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good207_checked :
    goodSegmentCheck 117 38 81
      { lower := 31213, upper := 31309, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good208_checked :
    goodSegmentCheck 117 38 81
      { lower := 31310, upper := 31366, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good209_checked :
    goodSegmentCheck 117 38 81
      { lower := 31423, upper := 31513, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good210_checked :
    goodSegmentCheck 117 38 81
      { lower := 31514, upper := 31539, witness := RowWitness.topPrime 31513 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good211_checked :
    goodSegmentCheck 117 38 81
      { lower := 31939, upper := 31943, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good212_checked :
    goodSegmentCheck 117 38 81
      { lower := 31974, upper := 32055, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good213_checked :
    goodSegmentCheck 117 38 81
      { lower := 33620, upper := 33735, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good214_checked :
    goodSegmentCheck 117 38 81
      { lower := 33736, upper := 33736, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good215_checked :
    goodSegmentCheck 117 38 81
      { lower := 34347, upper := 34453, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good216_checked :
    goodSegmentCheck 117 38 81
      { lower := 34454, upper := 34507, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good217_checked :
    goodSegmentCheck 117 38 81
      { lower := 34816, upper := 34923, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good218_checked :
    goodSegmentCheck 117 38 81
      { lower := 34924, upper := 34926, witness := RowWitness.topPrime 34919 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good219_checked :
    goodSegmentCheck 117 38 81
      { lower := 35301, upper := 35407, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good220_checked :
    goodSegmentCheck 117 38 81
      { lower := 35408, upper := 35417, witness := RowWitness.topPrime 35407 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good221_checked :
    goodSegmentCheck 117 38 81
      { lower := 36015, upper := 36028, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good222_checked :
    goodSegmentCheck 117 38 81
      { lower := 36517, upper := 36613, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good223_checked :
    goodSegmentCheck 117 38 81
      { lower := 36614, upper := 36617, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good224_checked :
    goodSegmentCheck 117 38 81
      { lower := 36980, upper := 36980, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good225_checked :
    goodSegmentCheck 117 38 81
      { lower := 37303, upper := 37326, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good226_checked :
    goodSegmentCheck 117 38 81
      { lower := 37500, upper := 37609, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good227_checked :
    goodSegmentCheck 117 38 81
      { lower := 37610, upper := 37616, witness := RowWitness.topPrime 37607 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good228_checked :
    goodSegmentCheck 117 38 81
      { lower := 37636, upper := 37669, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good229_checked :
    goodSegmentCheck 117 38 81
      { lower := 38307, upper := 38407, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good230_checked :
    goodSegmentCheck 117 38 81
      { lower := 38416, upper := 38423, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good231_checked :
    goodSegmentCheck 117 38 81
      { lower := 38912, upper := 38945, witness := RowWitness.topPrime 38903 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good232_checked :
    goodSegmentCheck 117 38 81
      { lower := 39326, upper := 39439, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good233_checked :
    goodSegmentCheck 117 38 81
      { lower := 39440, upper := 39442, witness := RowWitness.topPrime 39439 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good234_checked :
    goodSegmentCheck 117 38 81
      { lower := 40401, upper := 40444, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good235_checked :
    goodSegmentCheck 117 38 81
      { lower := 40817, upper := 40920, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good236_checked :
    goodSegmentCheck 117 38 81
      { lower := 40931, upper := 40933, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good237_checked :
    goodSegmentCheck 117 38 81
      { lower := 40960, upper := 41047, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good238_checked :
    goodSegmentCheck 117 38 81
      { lower := 43750, upper := 43803, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good239_checked :
    goodSegmentCheck 117 38 81
      { lower := 44217, upper := 44296, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good240_checked :
    goodSegmentCheck 117 38 81
      { lower := 44944, upper := 45006, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good241_checked :
    goodSegmentCheck 117 38 81
      { lower := 45056, upper := 45060, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good242_checked :
    goodSegmentCheck 117 38 81
      { lower := 45369, upper := 45369, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good243_checked :
    goodSegmentCheck 117 38 81
      { lower := 47526, upper := 47637, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good244_checked :
    goodSegmentCheck 117 38 81
      { lower := 47638, upper := 47640, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good245_checked :
    goodSegmentCheck 117 38 81
      { lower := 48013, upper := 48097, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good246_checked :
    goodSegmentCheck 117 38 81
      { lower := 48098, upper := 48129, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good247_checked :
    goodSegmentCheck 117 38 81
      { lower := 48734, upper := 48849, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good248_checked :
    goodSegmentCheck 117 38 81
      { lower := 48850, upper := 48850, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good249_checked :
    goodSegmentCheck 117 38 81
      { lower := 49152, upper := 49246, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good250_checked :
    goodSegmentCheck 117 38 81
      { lower := 50000, upper := 50044, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good251_checked :
    goodSegmentCheck 117 38 81
      { lower := 50421, upper := 50526, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good252_checked :
    goodSegmentCheck 117 38 81
      { lower := 50653, upper := 50678, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good253_checked :
    goodSegmentCheck 117 38 81
      { lower := 51076, upper := 51121, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good254_checked :
    goodSegmentCheck 117 38 81
      { lower := 53125, upper := 53161, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good255_checked :
    goodSegmentCheck 117 38 81
      { lower := 53290, upper := 53364, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good256_checked :
    goodSegmentCheck 117 38 81
      { lower := 53371, upper := 53406, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good257_checked :
    goodSegmentCheck 117 38 81
      { lower := 55451, upper := 55557, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good258_checked :
    goodSegmentCheck 117 38 81
      { lower := 55558, upper := 55563, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good259_checked :
    goodSegmentCheck 117 38 81
      { lower := 57344, upper := 57361, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good260_checked :
    goodSegmentCheck 117 38 81
      { lower := 58619, upper := 58680, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good261_checked :
    goodSegmentCheck 117 38 81
      { lower := 59049, upper := 59072, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good262_checked :
    goodSegmentCheck 117 38 81
      { lower := 59582, upper := 59652, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good263_checked :
    goodSegmentCheck 117 38 81
      { lower := 62500, upper := 62526, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good264_checked :
    goodSegmentCheck 117 38 81
      { lower := 63368, upper := 63373, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good265_checked :
    goodSegmentCheck 117 38 81
      { lower := 63869, upper := 63979, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good266_checked :
    goodSegmentCheck 117 38 81
      { lower := 63980, upper := 63985, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good267_checked :
    goodSegmentCheck 117 38 81
      { lower := 65536, upper := 65637, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good268_checked :
    goodSegmentCheck 117 38 81
      { lower := 65638, upper := 65649, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good269_checked :
    goodSegmentCheck 117 38 81
      { lower := 67335, upper := 67344, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good270_checked :
    goodSegmentCheck 117 38 81
      { lower := 68651, upper := 68755, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good271_checked :
    goodSegmentCheck 117 38 81
      { lower := 68756, upper := 68767, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good272_checked :
    goodSegmentCheck 117 38 81
      { lower := 68782, upper := 68810, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good273_checked :
    goodSegmentCheck 117 38 81
      { lower := 68890, upper := 68898, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good274_checked :
    goodSegmentCheck 117 38 81
      { lower := 68921, upper := 69006, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good275_checked :
    goodSegmentCheck 117 38 81
      { lower := 71289, upper := 71402, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good276_checked :
    goodSegmentCheck 117 38 81
      { lower := 73205, upper := 73283, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good277_checked :
    goodSegmentCheck 117 38 81
      { lower := 73728, upper := 73811, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good278_checked :
    goodSegmentCheck 117 38 81
      { lower := 85264, upper := 85285, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good279_checked :
    goodSegmentCheck 117 38 81
      { lower := 89383, upper := 89489, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good280_checked :
    goodSegmentCheck 117 38 81
      { lower := 95052, upper := 95143, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good281_checked :
    goodSegmentCheck 117 38 81
      { lower := 95144, upper := 95164, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good282_checked :
    goodSegmentCheck 117 38 81
      { lower := 102973, upper := 103001, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good283_checked :
    goodSegmentCheck 117 38 81
      { lower := 103041, upper := 103089, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good284_checked :
    goodSegmentCheck 117 38 81
      { lower := 106097, upper := 106203, witness := RowWitness.topPrime 106087 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good285_checked :
    goodSegmentCheck 117 38 81
      { lower := 106204, upper := 106206, witness := RowWitness.topPrime 106189 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good286_checked :
    goodSegmentCheck 117 38 81
      { lower := 122412, upper := 122433, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good287_checked :
    goodSegmentCheck 117 38 81
      { lower := 131769, upper := 131842, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_good288_checked :
    goodSegmentCheck 117 38 81
      { lower := 137917, upper := 137958, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good289_checked :
    goodSegmentCheck 117 38 81
      { lower := 146410, upper := 146450, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good290_checked :
    goodSegmentCheck 117 38 81
      { lower := 148877, upper := 148953, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good291_checked :
    goodSegmentCheck 117 38 81
      { lower := 148955, upper := 148993, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good292_checked :
    goodSegmentCheck 117 38 81
      { lower := 178766, upper := 178862, witness := RowWitness.topPrime 178757 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row117_good293_checked :
    goodSegmentCheck 117 38 81
      { lower := 327701, upper := 327796, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 117) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_good293_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_goods_checked :
    row117.goods.all (goodSegmentCheck row117.height.i row117.height.r row117.height.s) = true := by
  change row117_goods.all (goodSegmentCheck 117 38 81) = true
  simp only [row117_goods, List.all_cons, List.all_nil,
    row117_good000_checked,
    row117_good001_checked,
    row117_good002_checked,
    row117_good003_checked,
    row117_good004_checked,
    row117_good005_checked,
    row117_good006_checked,
    row117_good007_checked,
    row117_good008_checked,
    row117_good009_checked,
    row117_good010_checked,
    row117_good011_checked,
    row117_good012_checked,
    row117_good013_checked,
    row117_good014_checked,
    row117_good015_checked,
    row117_good016_checked,
    row117_good017_checked,
    row117_good018_checked,
    row117_good019_checked,
    row117_good020_checked,
    row117_good021_checked,
    row117_good022_checked,
    row117_good023_checked,
    row117_good024_checked,
    row117_good025_checked,
    row117_good026_checked,
    row117_good027_checked,
    row117_good028_checked,
    row117_good029_checked,
    row117_good030_checked,
    row117_good031_checked,
    row117_good032_checked,
    row117_good033_checked,
    row117_good034_checked,
    row117_good035_checked,
    row117_good036_checked,
    row117_good037_checked,
    row117_good038_checked,
    row117_good039_checked,
    row117_good040_checked,
    row117_good041_checked,
    row117_good042_checked,
    row117_good043_checked,
    row117_good044_checked,
    row117_good045_checked,
    row117_good046_checked,
    row117_good047_checked,
    row117_good048_checked,
    row117_good049_checked,
    row117_good050_checked,
    row117_good051_checked,
    row117_good052_checked,
    row117_good053_checked,
    row117_good054_checked,
    row117_good055_checked,
    row117_good056_checked,
    row117_good057_checked,
    row117_good058_checked,
    row117_good059_checked,
    row117_good060_checked,
    row117_good061_checked,
    row117_good062_checked,
    row117_good063_checked,
    row117_good064_checked,
    row117_good065_checked,
    row117_good066_checked,
    row117_good067_checked,
    row117_good068_checked,
    row117_good069_checked,
    row117_good070_checked,
    row117_good071_checked,
    row117_good072_checked,
    row117_good073_checked,
    row117_good074_checked,
    row117_good075_checked,
    row117_good076_checked,
    row117_good077_checked,
    row117_good078_checked,
    row117_good079_checked,
    row117_good080_checked,
    row117_good081_checked,
    row117_good082_checked,
    row117_good083_checked,
    row117_good084_checked,
    row117_good085_checked,
    row117_good086_checked,
    row117_good087_checked,
    row117_good088_checked,
    row117_good089_checked,
    row117_good090_checked,
    row117_good091_checked,
    row117_good092_checked,
    row117_good093_checked,
    row117_good094_checked,
    row117_good095_checked,
    row117_good096_checked,
    row117_good097_checked,
    row117_good098_checked,
    row117_good099_checked,
    row117_good100_checked,
    row117_good101_checked,
    row117_good102_checked,
    row117_good103_checked,
    row117_good104_checked,
    row117_good105_checked,
    row117_good106_checked,
    row117_good107_checked,
    row117_good108_checked,
    row117_good109_checked,
    row117_good110_checked,
    row117_good111_checked,
    row117_good112_checked,
    row117_good113_checked,
    row117_good114_checked,
    row117_good115_checked,
    row117_good116_checked,
    row117_good117_checked,
    row117_good118_checked,
    row117_good119_checked,
    row117_good120_checked,
    row117_good121_checked,
    row117_good122_checked,
    row117_good123_checked,
    row117_good124_checked,
    row117_good125_checked,
    row117_good126_checked,
    row117_good127_checked,
    row117_good128_checked,
    row117_good129_checked,
    row117_good130_checked,
    row117_good131_checked,
    row117_good132_checked,
    row117_good133_checked,
    row117_good134_checked,
    row117_good135_checked,
    row117_good136_checked,
    row117_good137_checked,
    row117_good138_checked,
    row117_good139_checked,
    row117_good140_checked,
    row117_good141_checked,
    row117_good142_checked,
    row117_good143_checked,
    row117_good144_checked,
    row117_good145_checked,
    row117_good146_checked,
    row117_good147_checked,
    row117_good148_checked,
    row117_good149_checked,
    row117_good150_checked,
    row117_good151_checked,
    row117_good152_checked,
    row117_good153_checked,
    row117_good154_checked,
    row117_good155_checked,
    row117_good156_checked,
    row117_good157_checked,
    row117_good158_checked,
    row117_good159_checked,
    row117_good160_checked,
    row117_good161_checked,
    row117_good162_checked,
    row117_good163_checked,
    row117_good164_checked,
    row117_good165_checked,
    row117_good166_checked,
    row117_good167_checked,
    row117_good168_checked,
    row117_good169_checked,
    row117_good170_checked,
    row117_good171_checked,
    row117_good172_checked,
    row117_good173_checked,
    row117_good174_checked,
    row117_good175_checked,
    row117_good176_checked,
    row117_good177_checked,
    row117_good178_checked,
    row117_good179_checked,
    row117_good180_checked,
    row117_good181_checked,
    row117_good182_checked,
    row117_good183_checked,
    row117_good184_checked,
    row117_good185_checked,
    row117_good186_checked,
    row117_good187_checked,
    row117_good188_checked,
    row117_good189_checked,
    row117_good190_checked,
    row117_good191_checked,
    row117_good192_checked,
    row117_good193_checked,
    row117_good194_checked,
    row117_good195_checked,
    row117_good196_checked,
    row117_good197_checked,
    row117_good198_checked,
    row117_good199_checked,
    row117_good200_checked,
    row117_good201_checked,
    row117_good202_checked,
    row117_good203_checked,
    row117_good204_checked,
    row117_good205_checked,
    row117_good206_checked,
    row117_good207_checked,
    row117_good208_checked,
    row117_good209_checked,
    row117_good210_checked,
    row117_good211_checked,
    row117_good212_checked,
    row117_good213_checked,
    row117_good214_checked,
    row117_good215_checked,
    row117_good216_checked,
    row117_good217_checked,
    row117_good218_checked,
    row117_good219_checked,
    row117_good220_checked,
    row117_good221_checked,
    row117_good222_checked,
    row117_good223_checked,
    row117_good224_checked,
    row117_good225_checked,
    row117_good226_checked,
    row117_good227_checked,
    row117_good228_checked,
    row117_good229_checked,
    row117_good230_checked,
    row117_good231_checked,
    row117_good232_checked,
    row117_good233_checked,
    row117_good234_checked,
    row117_good235_checked,
    row117_good236_checked,
    row117_good237_checked,
    row117_good238_checked,
    row117_good239_checked,
    row117_good240_checked,
    row117_good241_checked,
    row117_good242_checked,
    row117_good243_checked,
    row117_good244_checked,
    row117_good245_checked,
    row117_good246_checked,
    row117_good247_checked,
    row117_good248_checked,
    row117_good249_checked,
    row117_good250_checked,
    row117_good251_checked,
    row117_good252_checked,
    row117_good253_checked,
    row117_good254_checked,
    row117_good255_checked,
    row117_good256_checked,
    row117_good257_checked,
    row117_good258_checked,
    row117_good259_checked,
    row117_good260_checked,
    row117_good261_checked,
    row117_good262_checked,
    row117_good263_checked,
    row117_good264_checked,
    row117_good265_checked,
    row117_good266_checked,
    row117_good267_checked,
    row117_good268_checked,
    row117_good269_checked,
    row117_good270_checked,
    row117_good271_checked,
    row117_good272_checked,
    row117_good273_checked,
    row117_good274_checked,
    row117_good275_checked,
    row117_good276_checked,
    row117_good277_checked,
    row117_good278_checked,
    row117_good279_checked,
    row117_good280_checked,
    row117_good281_checked,
    row117_good282_checked,
    row117_good283_checked,
    row117_good284_checked,
    row117_good285_checked,
    row117_good286_checked,
    row117_good287_checked,
    row117_good288_checked,
    row117_good289_checked,
    row117_good290_checked,
    row117_good291_checked,
    row117_good292_checked,
    row117_good293_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_registered :
    decide (row117.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row117_small_checked :
    coverCheck (2 * row117.height.i + 2) (row117.height.i * (row117.height.i - 1) - 1)
      (row117.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row117_layerCover_checked :
    coverCheck (row117.height.i * (row117.height.i - 1)) (row117.height.n0 - 1)
      (row117.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row117_bounds : List NatInterval :=
  [(236, 349), (350, 465), (466, 579), (580, 693), (694, 807), (808, 913), (914, 1027), (1028, 1137), (1138, 1245), (1246, 1353), (1354, 1443), (1444, 1555), (1556, 1669), (1670, 1785), (1786, 1899), (1900, 2005), (2006, 2119), (2120, 2229), (2230, 2337), (2338, 2449), (2450, 2563), (2564, 2673), (2674, 2787), (2788, 2893), (2894, 3003), (3004, 3117), (3118, 3225), (3226, 3337), (3338, 3447), (3448, 3549), (3550, 3663), (3664, 3775), (3776, 3885), (3886, 3997), (3998, 4105), (4106, 4215), (4216, 4327), (4328, 4443), (4444, 4557), (4558, 4665), (4666, 4779), (4780, 4875), (4876, 4987), (4988, 5103), (5104, 5217), (5218, 5325), (5326, 5439), (5440, 5553), (5554, 5647), (5648, 5763), (5764, 5865), (5866, 5977), (5978, 6069), (6070, 6183), (6184, 6289), (6290, 6403), (6404, 6513), (6514, 6607), (6608, 6723), (6724, 6835), (6836, 6949), (6950, 7065), (7066, 7173), (7174, 7275), (7276, 7369), (7370, 7485), (7486, 7597), (7598, 7707), (7708, 7819), (7820, 7933), (7934, 8049), (8050, 8155), (8156, 8263), (8264, 8379), (8380, 8493), (8494, 8583), (8584, 8697), (8698, 8809), (8810, 8923), (8924, 9039), (9040, 9145), (9146, 9253), (9254, 9357), (9358, 9465), (9466, 9579), (9580, 9667), (9668, 9777), (9778, 9885), (9886, 9999), (10000, 10089), (10090, 10195), (10196, 10309), (10310, 10419), (10420, 10515), (10516, 10629), (10630, 10743), (10744, 10855), (10856, 10969), (10970, 11073), (11074, 11187), (11188, 11293), (11294, 11403), (11404, 11515), (11516, 11619), (11620, 11733), (11734, 11847), (11848, 11955), (11956, 12069), (12070, 12165), (12166, 12279), (12280, 12393), (12394, 12507), (12508, 12619), (12620, 12735), (12736, 12837), (12838, 12945), (12946, 13057), (13058, 13165), (13166, 13279), (13280, 13383), (13384, 13497), (13498, 13572), (13718, 13827), (13828, 13870), (14336, 14443), (14444, 14522), (14739, 14757), (14792, 14855), (14884, 14908), (15000, 15000), (15059, 15116), (15123, 15237), (15238, 15245), (15376, 15489), (15490, 15492), (15979, 16089), (16090, 16095), (16337, 16366), (16384, 16497), (16498, 16500), (16810, 16903), (16904, 16936), (17303, 17415), (17416, 17517), (17518, 17521), (17672, 17777), (18490, 18597), (18598, 18618), (18634, 18721), (18723, 18835), (18836, 18866), (19208, 19323), (19324, 19324), (19456, 19459), (19663, 19777), (19778, 19779), (19965, 19997), (20172, 20277), (20278, 20297), (20402, 20455), (20480, 20518), (20535, 20649), (20650, 20651), (20667, 20693), (21218, 21258), (21296, 21399), (21400, 21412), (21609, 21620), (21866, 21979), (21980, 21991), (22103, 22209), (22210, 22219), (22472, 22585), (22586, 22588), (22627, 22644), (23552, 23650), (23763, 23877), (23878, 23878), (24010, 24123), (24124, 24141), (24334, 24445), (24446, 24483), (24576, 24687), (24688, 24692), (24986, 25095), (25096, 25102), (25215, 25305), (25306, 25397), (25600, 25654), (26047, 26127), (26508, 26527), (26620, 26713), (26714, 26740), (26934, 27012), (27436, 27496), (27848, 27851), (27951, 27964), (28125, 28206), (28227, 28241), (28577, 28689), (28690, 28693), (28717, 28827), (28828, 28865), (29584, 29594), (29791, 29884), (30258, 30362), (30926, 31015), (31213, 31309), (31310, 31366), (31423, 31513), (31514, 31539), (31939, 31943), (31974, 32055), (33620, 33735), (33736, 33736), (34347, 34453), (34454, 34507), (34816, 34923), (34924, 34926), (35301, 35407), (35408, 35417), (36015, 36028), (36517, 36613), (36614, 36617), (36980, 36980), (37303, 37326), (37500, 37609), (37610, 37616), (37636, 37669), (38307, 38407), (38416, 38423), (38912, 38945), (39326, 39439), (39440, 39442), (40401, 40444), (40817, 40920), (40931, 40933), (40960, 41047), (43750, 43803), (44217, 44296), (44944, 45006), (45056, 45060), (45369, 45369), (47526, 47637), (47638, 47640), (48013, 48097), (48098, 48129), (48734, 48849), (48850, 48850), (49152, 49246), (50000, 50044), (50421, 50526), (50653, 50678), (51076, 51121), (53125, 53161), (53290, 53364), (53371, 53406), (55451, 55557), (55558, 55563), (57344, 57361), (58619, 58680), (59049, 59072), (59582, 59652), (62500, 62526), (63368, 63373), (63869, 63979), (63980, 63985), (65536, 65637), (65638, 65649), (67335, 67344), (68651, 68755), (68756, 68767), (68782, 68810), (68890, 68898), (68921, 69006), (71289, 71402), (73205, 73283), (73728, 73811), (85264, 85285), (89383, 89489), (95052, 95143), (95144, 95164), (102973, 103001), (103041, 103089), (106097, 106203), (106204, 106206), (122412, 122433), (131769, 131842), (137917, 137958), (146410, 146450), (148877, 148953), (148955, 148993), (178766, 178862), (327701, 327796)]

theorem row117_bounds_eq : row117.goods.map goodSegmentBounds = row117_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row117_layer000_intervals : List ColouredInterval :=
  [(2, 14336, 14452), (2, 15360, 15476), (2, 16384, 16500), (2, 17408, 17524), (2, 18432, 18548), (2, 19456, 19572), (2, 20480, 20596), (2, 21504, 21620), (2, 22528, 22644), (2, 23552, 23668), (2, 24576, 24692), (2, 25600, 25716), (2, 26624, 26740), (2, 14336, 14452), (2, 16384, 16500), (2, 18432, 18548), (2, 20480, 20596), (2, 22528, 22644), (2, 24576, 24692), (2, 26624, 26740), (2, 16384, 16500), (2, 20480, 20596), (2, 24576, 24692), (2, 16384, 16500), (2, 24576, 24692), (2, 16384, 16500), (3, 19683, 19799), (5, 13750, 13866), (5, 14375, 14491), (5, 15000, 15116), (5, 15625, 15741), (5, 16250, 16366), (5, 15625, 15741), (5, 18750, 18866), (5, 21875, 21991), (5, 25000, 25116), (5, 15625, 15741), (7, 14406, 14522), (7, 16807, 16923), (7, 19208, 19324), (7, 21609, 21725), (7, 24010, 24126), (7, 26411, 26527), (7, 16807, 16923), (11, 14641, 14757), (11, 15972, 16088), (11, 17303, 17419), (11, 18634, 18750), (11, 19965, 20081), (11, 21296, 21412), (11, 22627, 22743), (11, 23958, 24074), (11, 25289, 25405), (11, 26620, 26736), (11, 14641, 14757), (17, 14739, 14855), (17, 19652, 19768), (17, 24565, 24681), (19, 13718, 13834), (19, 20577, 20693), (23, 13754, 13870), (23, 24334, 24450), (29, 13572, 13572), (29, 14297, 14413), (29, 15138, 15254), (29, 15979, 16095), (29, 16820, 16936), (29, 17661, 17777), (29, 18502, 18618), (29, 19343, 19459), (29, 20184, 20300), (29, 21025, 21141), (29, 21866, 21982), (29, 24389, 24505), (31, 14415, 14531), (31, 15376, 15492), (31, 16337, 16453), (31, 17298, 17414), (31, 18259, 18375), (31, 19220, 19336), (31, 20181, 20297), (31, 21142, 21258), (31, 22103, 22219), (31, 23064, 23180), (31, 24025, 24141), (31, 24986, 25102), (37, 13690, 13806), (37, 15059, 15175), (37, 16428, 16544), (37, 17797, 17913), (37, 19166, 19282), (37, 20535, 20651), (37, 21904, 22020), (37, 23273, 23389), (37, 24642, 24758), (37, 26011, 26127), (41, 15129, 15245), (41, 16810, 16926), (41, 18491, 18607), (41, 20172, 20288), (41, 21853, 21969), (41, 23534, 23650), (41, 25215, 25331), (41, 26896, 27012), (43, 14792, 14908), (43, 16641, 16757), (43, 18490, 18606), (43, 20339, 20455), (43, 22188, 22304), (43, 24037, 24153), (43, 25886, 26002), (47, 15463, 15579), (47, 17672, 17788), (47, 19881, 19997), (47, 22090, 22206), (47, 24299, 24415), (47, 26508, 26624), (53, 14045, 14161), (53, 16854, 16970), (53, 19663, 19779), (53, 22472, 22588), (53, 25281, 25397), (59, 13924, 14040), (59, 17405, 17521), (59, 20886, 21002), (59, 24367, 24483), (61, 14884, 15000), (61, 18605, 18721), (61, 22326, 22442), (61, 26047, 26163), (67, 13572, 13583), (67, 17956, 18072), (67, 22445, 22561), (67, 26934, 27050), (71, 15123, 15239), (71, 20164, 20280), (71, 25205, 25321), (73, 15987, 16103), (73, 21316, 21432), (73, 26645, 26761), (79, 18723, 18839), (79, 24964, 25080), (83, 13778, 13894), (83, 20667, 20783), (89, 15842, 15958), (89, 23763, 23879), (97, 18818, 18934), (101, 20402, 20518), (103, 21218, 21334), (107, 22898, 23014), (109, 23762, 23878), (113, 25538, 25654)]

def row117_layer000_block000 : List ColouredInterval :=
  [(2, 14336, 14452), (2, 15360, 15476), (2, 16384, 16500), (2, 17408, 17524), (2, 18432, 18548), (2, 19456, 19572), (2, 20480, 20596), (2, 21504, 21620), (2, 22528, 22644), (2, 23552, 23668), (2, 24576, 24692), (2, 25600, 25716), (2, 26624, 26740)]

def row117_layer000_block001 : List ColouredInterval :=
  [(2, 14336, 14452), (2, 16384, 16500), (2, 18432, 18548), (2, 20480, 20596), (2, 22528, 22644), (2, 24576, 24692), (2, 26624, 26740), (2, 16384, 16500), (2, 20480, 20596), (2, 24576, 24692), (2, 16384, 16500), (2, 24576, 24692), (2, 16384, 16500)]

def row117_layer000_block002 : List ColouredInterval :=
  [(3, 19683, 19799), (5, 13750, 13866), (5, 14375, 14491), (5, 15000, 15116), (5, 15625, 15741), (5, 16250, 16366), (5, 15625, 15741), (5, 18750, 18866), (5, 21875, 21991), (5, 25000, 25116), (5, 15625, 15741), (7, 14406, 14522), (7, 16807, 16923)]

def row117_layer000_block003 : List ColouredInterval :=
  [(7, 19208, 19324), (7, 21609, 21725), (7, 24010, 24126), (7, 26411, 26527), (7, 16807, 16923), (11, 14641, 14757), (11, 15972, 16088), (11, 17303, 17419), (11, 18634, 18750), (11, 19965, 20081), (11, 21296, 21412), (11, 22627, 22743), (11, 23958, 24074)]

def row117_layer000_block004 : List ColouredInterval :=
  [(11, 25289, 25405), (11, 26620, 26736), (11, 14641, 14757), (17, 14739, 14855), (17, 19652, 19768), (17, 24565, 24681), (19, 13718, 13834), (19, 20577, 20693), (23, 13754, 13870), (23, 24334, 24450), (29, 13572, 13572), (29, 14297, 14413), (29, 15138, 15254)]

def row117_layer000_block005 : List ColouredInterval :=
  [(29, 15979, 16095), (29, 16820, 16936), (29, 17661, 17777), (29, 18502, 18618), (29, 19343, 19459), (29, 20184, 20300), (29, 21025, 21141), (29, 21866, 21982), (29, 24389, 24505), (31, 14415, 14531), (31, 15376, 15492), (31, 16337, 16453), (31, 17298, 17414)]

def row117_layer000_block006 : List ColouredInterval :=
  [(31, 18259, 18375), (31, 19220, 19336), (31, 20181, 20297), (31, 21142, 21258), (31, 22103, 22219), (31, 23064, 23180), (31, 24025, 24141), (31, 24986, 25102), (37, 13690, 13806), (37, 15059, 15175), (37, 16428, 16544), (37, 17797, 17913), (37, 19166, 19282)]

def row117_layer000_block007 : List ColouredInterval :=
  [(37, 20535, 20651), (37, 21904, 22020), (37, 23273, 23389), (37, 24642, 24758), (37, 26011, 26127), (41, 15129, 15245), (41, 16810, 16926), (41, 18491, 18607), (41, 20172, 20288), (41, 21853, 21969), (41, 23534, 23650), (41, 25215, 25331), (41, 26896, 27012)]

def row117_layer000_block008 : List ColouredInterval :=
  [(43, 14792, 14908), (43, 16641, 16757), (43, 18490, 18606), (43, 20339, 20455), (43, 22188, 22304), (43, 24037, 24153), (43, 25886, 26002), (47, 15463, 15579), (47, 17672, 17788), (47, 19881, 19997), (47, 22090, 22206), (47, 24299, 24415), (47, 26508, 26624)]

def row117_layer000_block009 : List ColouredInterval :=
  [(53, 14045, 14161), (53, 16854, 16970), (53, 19663, 19779), (53, 22472, 22588), (53, 25281, 25397), (59, 13924, 14040), (59, 17405, 17521), (59, 20886, 21002), (59, 24367, 24483), (61, 14884, 15000), (61, 18605, 18721), (61, 22326, 22442), (61, 26047, 26163)]

def row117_layer000_block010 : List ColouredInterval :=
  [(67, 13572, 13583), (67, 17956, 18072), (67, 22445, 22561), (67, 26934, 27050), (71, 15123, 15239), (71, 20164, 20280), (71, 25205, 25321), (73, 15987, 16103), (73, 21316, 21432), (73, 26645, 26761), (79, 18723, 18839), (79, 24964, 25080), (83, 13778, 13894)]

def row117_layer000_block011 : List ColouredInterval :=
  [(83, 20667, 20783), (89, 15842, 15958), (89, 23763, 23879), (97, 18818, 18934), (101, 20402, 20518), (103, 21218, 21334), (107, 22898, 23014), (109, 23762, 23878), (113, 25538, 25654)]

def row117_layer000_chunks : List (List ColouredInterval) :=
  [row117_layer000_block000, row117_layer000_block001, row117_layer000_block002, row117_layer000_block003, row117_layer000_block004, row117_layer000_block005, row117_layer000_block006, row117_layer000_block007, row117_layer000_block008, row117_layer000_block009, row117_layer000_block010, row117_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_arithmetic : LayerArithmeticValid row117.height { lower := 13572, upper := 27144, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_enumeration :
    activePowerIntervalList 117 26 13572 27144 = row117_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs000 :
    row117_layer000_block000.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs001 :
    row117_layer000_block001.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs002 :
    row117_layer000_block002.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs003 :
    row117_layer000_block003.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs004 :
    row117_layer000_block004.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs005 :
    row117_layer000_block005.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs005
