import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CountIntervals

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0960

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699CountData

open B699LargePrimeStructure B699CountIntervals

theorem count_1022 : smallPrimeCount 1022 = 172 :=
  count_extend (start := 999) (length := 23) (t := 168) (d := 4)
    B699Middle.Counts.count_999 (by decide +kernel)

theorem count_1046 : smallPrimeCount 1046 = 175 :=
  count_extend (start := 1022) (length := 24) (t := 172) (d := 3)
    count_1022 (by decide +kernel)

theorem count_1069 : smallPrimeCount 1069 = 179 :=
  count_extend (start := 1046) (length := 23) (t := 175) (d := 4)
    count_1046 (by decide +kernel)

theorem count_1093 : smallPrimeCount 1093 = 182 :=
  count_extend (start := 1069) (length := 24) (t := 179) (d := 3)
    count_1069 (by decide +kernel)

theorem count_1117 : smallPrimeCount 1117 = 186 :=
  count_extend (start := 1093) (length := 24) (t := 182) (d := 4)
    count_1093 (by decide +kernel)

theorem count_1143 : smallPrimeCount 1143 = 189 :=
  count_extend (start := 1117) (length := 26) (t := 186) (d := 3)
    count_1117 (by decide +kernel)

theorem count_1170 : smallPrimeCount 1170 = 192 :=
  count_extend (start := 1143) (length := 27) (t := 189) (d := 3)
    count_1143 (by decide +kernel)

theorem count_1198 : smallPrimeCount 1198 = 196 :=
  count_extend (start := 1170) (length := 28) (t := 192) (d := 4)
    count_1170 (by decide +kernel)

theorem count_1227 : smallPrimeCount 1227 = 200 :=
  count_extend (start := 1198) (length := 29) (t := 196) (d := 4)
    count_1198 (by decide +kernel)

theorem count_1257 : smallPrimeCount 1257 = 204 :=
  count_extend (start := 1227) (length := 30) (t := 200) (d := 4)
    count_1227 (by decide +kernel)

theorem count_1287 : smallPrimeCount 1287 = 208 :=
  count_extend (start := 1257) (length := 30) (t := 204) (d := 4)
    count_1257 (by decide +kernel)

theorem count_1317 : smallPrimeCount 1317 = 214 :=
  count_extend (start := 1287) (length := 30) (t := 208) (d := 6)
    count_1287 (by decide +kernel)

theorem count_1349 : smallPrimeCount 1349 = 217 :=
  count_extend (start := 1317) (length := 32) (t := 214) (d := 3)
    count_1317 (by decide +kernel)

theorem count_1383 : smallPrimeCount 1383 = 221 :=
  count_extend (start := 1349) (length := 34) (t := 217) (d := 4)
    count_1349 (by decide +kernel)

theorem count_1420 : smallPrimeCount 1420 = 223 :=
  count_extend (start := 1383) (length := 37) (t := 221) (d := 2)
    count_1383 (by decide +kernel)

theorem count_1456 : smallPrimeCount 1456 = 231 :=
  count_extend (start := 1420) (length := 36) (t := 223) (d := 8)
    count_1420 (by decide +kernel)

theorem count_1491 : smallPrimeCount 1491 = 237 :=
  count_extend (start := 1456) (length := 35) (t := 231) (d := 6)
    count_1456 (by decide +kernel)

theorem count_1528 : smallPrimeCount 1528 = 241 :=
  count_extend (start := 1491) (length := 37) (t := 237) (d := 4)
    count_1491 (by decide +kernel)

theorem count_1566 : smallPrimeCount 1566 = 246 :=
  count_extend (start := 1528) (length := 38) (t := 241) (d := 5)
    count_1528 (by decide +kernel)

theorem count_1605 : smallPrimeCount 1605 = 252 :=
  count_extend (start := 1566) (length := 39) (t := 246) (d := 6)
    count_1566 (by decide +kernel)

theorem count_1644 : smallPrimeCount 1644 = 259 :=
  count_extend (start := 1605) (length := 39) (t := 252) (d := 7)
    count_1605 (by decide +kernel)

theorem count_1685 : smallPrimeCount 1685 = 263 :=
  count_extend (start := 1644) (length := 41) (t := 259) (d := 4)
    count_1644 (by decide +kernel)

theorem count_1726 : smallPrimeCount 1726 = 269 :=
  count_extend (start := 1685) (length := 41) (t := 263) (d := 6)
    count_1685 (by decide +kernel)

theorem count_1769 : smallPrimeCount 1769 = 274 :=
  count_extend (start := 1726) (length := 43) (t := 269) (d := 5)
    count_1726 (by decide +kernel)

theorem count_1813 : smallPrimeCount 1813 = 280 :=
  count_extend (start := 1769) (length := 44) (t := 274) (d := 6)
    count_1769 (by decide +kernel)

theorem count_1860 : smallPrimeCount 1860 = 283 :=
  count_extend (start := 1813) (length := 47) (t := 280) (d := 3)
    count_1813 (by decide +kernel)

theorem count_1907 : smallPrimeCount 1907 = 291 :=
  count_extend (start := 1860) (length := 47) (t := 283) (d := 8)
    count_1860 (by decide +kernel)

theorem count_1956 : smallPrimeCount 1956 = 297 :=
  count_extend (start := 1907) (length := 49) (t := 291) (d := 6)
    count_1907 (by decide +kernel)

theorem count_2006 : smallPrimeCount 2006 = 304 :=
  count_extend (start := 1956) (length := 50) (t := 297) (d := 7)
    count_1956 (by decide +kernel)

theorem count_2058 : smallPrimeCount 2058 = 310 :=
  count_extend (start := 2006) (length := 52) (t := 304) (d := 6)
    count_2006 (by decide +kernel)

theorem count_2111 : smallPrimeCount 2111 = 317 :=
  count_extend (start := 2058) (length := 53) (t := 310) (d := 7)
    count_2058 (by decide +kernel)

theorem count_2164 : smallPrimeCount 2164 = 326 :=
  count_extend (start := 2111) (length := 53) (t := 317) (d := 9)
    count_2111 (by decide +kernel)

theorem count_2220 : smallPrimeCount 2220 = 330 :=
  count_extend (start := 2164) (length := 56) (t := 326) (d := 4)
    count_2164 (by decide +kernel)

theorem count_2278 : smallPrimeCount 2278 = 338 :=
  count_extend (start := 2220) (length := 58) (t := 330) (d := 8)
    count_2220 (by decide +kernel)

theorem count_2337 : smallPrimeCount 2337 = 345 :=
  count_extend (start := 2278) (length := 59) (t := 338) (d := 7)
    count_2278 (by decide +kernel)

theorem count_2396 : smallPrimeCount 2396 = 356 :=
  count_extend (start := 2337) (length := 59) (t := 345) (d := 11)
    count_2337 (by decide +kernel)

theorem count_2457 : smallPrimeCount 2457 = 363 :=
  count_extend (start := 2396) (length := 61) (t := 356) (d := 7)
    count_2396 (by decide +kernel)

theorem count_2521 : smallPrimeCount 2521 = 368 :=
  count_extend (start := 2457) (length := 64) (t := 363) (d := 5)
    count_2457 (by decide +kernel)

theorem count_2588 : smallPrimeCount 2588 = 376 :=
  count_extend (start := 2521) (length := 67) (t := 368) (d := 8)
    count_2521 (by decide +kernel)

theorem count_2657 : smallPrimeCount 2657 = 383 :=
  count_extend (start := 2588) (length := 69) (t := 376) (d := 7)
    count_2588 (by decide +kernel)

theorem count_2724 : smallPrimeCount 2724 = 397 :=
  count_extend (start := 2657) (length := 67) (t := 383) (d := 14)
    count_2657 (by decide +kernel)

theorem count_2793 : smallPrimeCount 2793 = 406 :=
  count_extend (start := 2724) (length := 69) (t := 397) (d := 9)
    count_2724 (by decide +kernel)

theorem count_2863 : smallPrimeCount 2863 = 416 :=
  count_extend (start := 2793) (length := 70) (t := 406) (d := 10)
    count_2793 (by decide +kernel)

theorem count_2936 : smallPrimeCount 2936 = 423 :=
  count_extend (start := 2863) (length := 73) (t := 416) (d := 7)
    count_2863 (by decide +kernel)

theorem count_3011 : smallPrimeCount 3011 = 431 :=
  count_extend (start := 2936) (length := 75) (t := 423) (d := 8)
    count_2936 (by decide +kernel)

theorem count_3087 : smallPrimeCount 3087 = 441 :=
  count_extend (start := 3011) (length := 76) (t := 431) (d := 10)
    count_3011 (by decide +kernel)

theorem count_3168 : smallPrimeCount 3168 = 448 :=
  count_extend (start := 3087) (length := 81) (t := 441) (d := 7)
    count_3087 (by decide +kernel)

theorem count_3251 : smallPrimeCount 3251 = 457 :=
  count_extend (start := 3168) (length := 83) (t := 448) (d := 9)
    count_3168 (by decide +kernel)

theorem count_3335 : smallPrimeCount 3335 = 470 :=
  count_extend (start := 3251) (length := 84) (t := 457) (d := 13)
    count_3251 (by decide +kernel)

theorem count_3422 : smallPrimeCount 3422 = 480 :=
  count_extend (start := 3335) (length := 87) (t := 470) (d := 10)
    count_3335 (by decide +kernel)

theorem count_3512 : smallPrimeCount 3512 = 490 :=
  count_extend (start := 3422) (length := 90) (t := 480) (d := 10)
    count_3422 (by decide +kernel)

theorem count_3602 : smallPrimeCount 3602 = 503 :=
  count_extend (start := 3512) (length := 90) (t := 490) (d := 13)
    count_3512 (by decide +kernel)

theorem count_3694 : smallPrimeCount 3694 = 515 :=
  count_extend (start := 3602) (length := 92) (t := 503) (d := 12)
    count_3602 (by decide +kernel)

theorem count_3788 : smallPrimeCount 3788 = 526 :=
  count_extend (start := 3694) (length := 94) (t := 515) (d := 11)
    count_3694 (by decide +kernel)

theorem count_3884 : smallPrimeCount 3884 = 538 :=
  count_extend (start := 3788) (length := 96) (t := 526) (d := 12)
    count_3788 (by decide +kernel)

theorem count_3983 : smallPrimeCount 3983 = 549 :=
  count_extend (start := 3884) (length := 99) (t := 538) (d := 11)
    count_3884 (by decide +kernel)

theorem count_4084 : smallPrimeCount 4084 = 562 :=
  count_extend (start := 3983) (length := 101) (t := 549) (d := 13)
    count_3983 (by decide +kernel)

theorem count_4187 : smallPrimeCount 4187 = 574 :=
  count_extend (start := 4084) (length := 103) (t := 562) (d := 12)
    count_4084 (by decide +kernel)

theorem count_4291 : smallPrimeCount 4291 = 589 :=
  count_extend (start := 4187) (length := 104) (t := 574) (d := 15)
    count_4187 (by decide +kernel)

theorem count_4399 : smallPrimeCount 4399 = 599 :=
  count_extend (start := 4291) (length := 108) (t := 589) (d := 10)
    count_4291 (by decide +kernel)

theorem count_4511 : smallPrimeCount 4511 = 611 :=
  count_extend (start := 4399) (length := 112) (t := 599) (d := 12)
    count_4399 (by decide +kernel)

theorem count_4626 : smallPrimeCount 4626 = 624 :=
  count_extend (start := 4511) (length := 115) (t := 611) (d := 13)
    count_4511 (by decide +kernel)

theorem count_4742 : smallPrimeCount 4742 = 639 :=
  count_extend (start := 4626) (length := 116) (t := 624) (d := 15)
    count_4626 (by decide +kernel)

theorem count_4863 : smallPrimeCount 4863 = 651 :=
  count_extend (start := 4742) (length := 121) (t := 639) (d := 12)
    count_4742 (by decide +kernel)

theorem count_4880 : smallPrimeCount 4880 = 653 :=
  count_extend (start := 4863) (length := 17) (t := 651) (d := 2)
    count_4863 (by decide +kernel)

theorem count_4881 : smallPrimeCount 4881 = 653 :=
  count_extend (start := 4880) (length := 1) (t := 653) (d := 0)
    count_4880 (by decide +kernel)

theorem count_4882 : smallPrimeCount 4882 = 653 :=
  count_extend (start := 4881) (length := 1) (t := 653) (d := 0)
    count_4881 (by decide +kernel)

end B699CountData

#print axioms B699CountData.count_4882
