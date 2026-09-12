import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA33B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA33B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA33B3 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA33B4 : CellData where
  inverse := 62
  bounds := fun _d => ⟨0, -1⟩

def cellA33B5 : CellData where
  inverse := 143
  bounds := fun _d => ⟨0, -1⟩

def cellA33B6 : CellData where
  inverse := 386
  bounds := fun _d => ⟨0, -1⟩

def cellA33B7 : CellData where
  inverse := 386
  bounds := fun _d => ⟨0, -1⟩

def cellA33B8 : CellData where
  inverse := 2573
  bounds := fun _d => ⟨0, -1⟩

def cellA33B9 : CellData where
  inverse := 9134
  bounds := fun _d => ⟨0, -1⟩

def cellA33B10 : CellData where
  inverse := 9134
  bounds := fun _d => ⟨0, -1⟩

def cellA33B11 : CellData where
  inverse := 127232
  bounds := fun _d => ⟨0, -1⟩

def cellA33B12 : CellData where
  inverse := 304379
  bounds := fun d => if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA33B13 : CellData where
  inverse := 304379
  bounds := fun _d => ⟨0, -1⟩

def cellA33B14 : CellData where
  inverse := 3493025
  bounds := fun _d => ⟨0, -1⟩

def cellA33B15 : CellData where
  inverse := 13058963
  bounds := fun _d => ⟨0, -1⟩

def cellA33B16 : CellData where
  inverse := 41756777
  bounds := fun _d => ⟨0, -1⟩

def cellA33B17 : CellData where
  inverse := 41756777
  bounds := fun _d => ⟨0, -1⟩

def cellA33B18 : CellData where
  inverse := 170896940
  bounds := fun _d => ⟨0, -1⟩

def cellA33B19 : CellData where
  inverse := 945737918
  bounds := fun _d => ⟨0, -1⟩

def cellA33B20 : CellData where
  inverse := 2107999385
  bounds := fun _d => ⟨0, -1⟩

def cellA33B21 : CellData where
  inverse := 9081568187
  bounds := fun _d => ⟨0, -1⟩

def cellA33B22 : CellData where
  inverse := 30002274593
  bounds := fun _d => ⟨0, -1⟩

def cellA33B23 : CellData where
  inverse := 92764393811
  bounds := fun _d => ⟨0, -1⟩

def cellA33B24 : CellData where
  inverse := 186907572638
  bounds := fun _d => ⟨0, -1⟩

def cellA33B25 : CellData where
  inverse := 751766645600
  bounds := fun _d => ⟨0, -1⟩

def cellA33B26 : CellData where
  inverse := 1599055255043
  bounds := fun _d => ⟨0, -1⟩

def cellA33B27 : CellData where
  inverse := 6682786911701
  bounds := fun _d => ⟨0, -1⟩

def cellA33B28 : CellData where
  inverse := 14308384396688
  bounds := fun _d => ⟨0, -1⟩

def cellA33B29 : CellData where
  inverse := 60061969306610
  bounds := fun _d => ⟨0, -1⟩

def cellA33B30 : CellData where
  inverse := 60061969306610
  bounds := fun _d => ⟨0, -1⟩

def cellA33B31 : CellData where
  inverse := 265953101401259
  bounds := fun _d => ⟨0, -1⟩

def cellA33B32 : CellData where
  inverse := 265953101401259
  bounds := fun _d => ⟨0, -1⟩

def cellA33B33 : CellData where
  inverse := 2118973290253100
  bounds := fun _d => ⟨0, -1⟩

def cellA33B34 : CellData where
  inverse := 13237094423364146
  bounds := fun _d => ⟨0, -1⟩

def cellA33B35 : CellData where
  inverse := 29914276123030715
  bounds := fun _d => ⟨0, -1⟩

def cellA33B36 : CellData where
  inverse := 79945821222030422
  bounds := fun _d => ⟨0, -1⟩

def cellA33B37 : CellData where
  inverse := 380135091816028664
  bounds := fun _d => ⟨0, -1⟩

def cellA33B38 : CellData where
  inverse := 1280702903598023390
  bounds := fun _d => ⟨0, -1⟩

def cellA33B39 : CellData where
  inverse := 3982406338944007568
  bounds := fun _d => ⟨0, -1⟩

def cellA33B40 : CellData where
  inverse := 3982406338944007568
  bounds := fun _d => ⟨0, -1⟩

def cellA33B41 : CellData where
  inverse := 3982406338944007568
  bounds := fun _d => ⟨0, -1⟩

def cellA33B42 : CellData where
  inverse := 3982406338944007568
  bounds := fun _d => ⟨0, -1⟩

def cellA33B43 : CellData where
  inverse := 113401395470456366777
  bounds := fun _d => ⟨0, -1⟩

def cellA33B44 : CellData where
  inverse := 769915330259530522031
  bounds := fun _d => ⟨0, -1⟩

def cellA33B45 : CellData where
  inverse := 1754686232443141754912
  bounds := fun _d => ⟨0, -1⟩

def cellA33B46 : CellData where
  inverse := 4708998938993975453555
  bounds := fun _d => ⟨0, -1⟩

def cellA33B47 : CellData where
  inverse := 4708998938993975453555
  bounds := fun _d => ⟨0, -1⟩

def cellA33B48 : CellData where
  inverse := 57886627656908982029129
  bounds := fun _d => ⟨0, -1⟩

def cellA33B49 : CellData where
  inverse := 137653070733781491892490
  bounds := fun _d => ⟨0, -1⟩

def cellA33B50 : CellData where
  inverse := 137653070733781491892490
  bounds := fun _d => ⟨0, -1⟩

def cellA33B51 : CellData where
  inverse := 137653070733781491892490
  bounds := fun _d => ⟨0, -1⟩

def cellA33B52 : CellData where
  inverse := 4445040996884897024513984
  bounds := fun _d => ⟨0, -1⟩

def cellA33B53 : CellData where
  inverse := 10906122886111570323446225
  bounds := fun _d => ⟨0, -1⟩

def cellA33B54 : CellData where
  inverse := 10906122886111570323446225
  bounds := fun _d => ⟨0, -1⟩

def cellA33B55 : CellData where
  inverse := 10906122886111570323446225
  bounds := fun _d => ⟨0, -1⟩

def cellA33B56 : CellData where
  inverse := 359804544904351928465787239
  bounds := fun _d => ⟨0, -1⟩

def cellA33B57 : CellData where
  inverse := 359804544904351928465787239
  bounds := fun _d => ⟨0, -1⟩

def cellA33B58 : CellData where
  inverse := 1929847443986433540106321802
  bounds := fun _d => ⟨0, -1⟩

def cellA33B59 : CellData where
  inverse := 11350104838478923209949529180
  bounds := fun _d => ⟨0, -1⟩

def cellA33B60 : CellData where
  inverse := 25480490930217657714714340247
  bounds := fun _d => ⟨0, -1⟩

def cellA33B61 : CellData where
  inverse := 110262807480650064743303206649
  bounds := fun _d => ⟨0, -1⟩

def cellA33B62 : CellData where
  inverse := 237436282306298675286186506252
  bounds := fun _d => ⟨0, -1⟩

def cellA33B63 : CellData where
  inverse := 618956706783244506914836405061
  bounds := fun _d => ⟨0, -1⟩

def cellA33B64 : CellData where
  inverse := 1763517980214082001800786101488
  bounds := fun _d => ⟨0, -1⟩

def cellA33B65 : CellData where
  inverse := 8630885620799106971116484280050
  bounds := fun _d => ⟨0, -1⟩

def cellA33B66 : CellData where
  inverse := 18931937081676644425090031547893
  bounds := fun _d => ⟨0, -1⟩

def cellA33B67 : CellData where
  inverse := 80738245846941869148931315154951
  bounds := fun _d => ⟨0, -1⟩

def cellA33B68 : CellData where
  inverse := 266157172142737543320455165976125
  bounds := fun _d => ⟨0, -1⟩

def cellA34B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA34B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA34B3 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA34B4 : CellData where
  inverse := 31
  bounds := fun _d => ⟨0, -1⟩

def cellA34B5 : CellData where
  inverse := 193
  bounds := fun _d => ⟨0, -1⟩

def cellA34B6 : CellData where
  inverse := 193
  bounds := fun _d => ⟨0, -1⟩

def cellA34B7 : CellData where
  inverse := 193
  bounds := fun _d => ⟨0, -1⟩

def cellA34B8 : CellData where
  inverse := 4567
  bounds := fun _d => ⟨0, -1⟩

def cellA34B9 : CellData where
  inverse := 4567
  bounds := fun _d => ⟨0, -1⟩

def cellA34B10 : CellData where
  inverse := 4567
  bounds := fun _d => ⟨0, -1⟩

def cellA34B11 : CellData where
  inverse := 63616
  bounds := fun _d => ⟨0, -1⟩

def cellA34B12 : CellData where
  inverse := 417910
  bounds := fun _d => ⟨0, -1⟩

def cellA34B13 : CellData where
  inverse := 949351
  bounds := fun _d => ⟨0, -1⟩

def cellA34B14 : CellData where
  inverse := 4137997
  bounds := fun _d => ⟨0, -1⟩

def cellA34B15 : CellData where
  inverse := 13703935
  bounds := fun _d => ⟨0, -1⟩

def cellA34B16 : CellData where
  inverse := 42401749
  bounds := fun _d => ⟨0, -1⟩

def cellA34B17 : CellData where
  inverse := 85448470
  bounds := fun _d => ⟨0, -1⟩

def cellA34B18 : CellData where
  inverse := 85448470
  bounds := fun _d => ⟨0, -1⟩

def cellA34B19 : CellData where
  inverse := 472868959
  bounds := fun _d => ⟨0, -1⟩

def cellA34B20 : CellData where
  inverse := 2797391893
  bounds := fun _d => ⟨0, -1⟩

def cellA34B21 : CellData where
  inverse := 9770960695
  bounds := fun _d => ⟨0, -1⟩

def cellA34B22 : CellData where
  inverse := 30691667101
  bounds := fun _d => ⟨0, -1⟩

def cellA34B23 : CellData where
  inverse := 93453786319
  bounds := fun _d => ⟨0, -1⟩

def cellA34B24 : CellData where
  inverse := 93453786319
  bounds := fun _d => ⟨0, -1⟩

def cellA34B25 : CellData where
  inverse := 375883322800
  bounds := fun _d => ⟨0, -1⟩

def cellA34B26 : CellData where
  inverse := 2070460541686
  bounds := fun _d => ⟨0, -1⟩

def cellA34B27 : CellData where
  inverse := 7154192198344
  bounds := fun _d => ⟨0, -1⟩

def cellA34B28 : CellData where
  inverse := 7154192198344
  bounds := fun _d => ⟨0, -1⟩

def cellA34B29 : CellData where
  inverse := 30030984653305
  bounds := fun _d => ⟨0, -1⟩

def cellA34B30 : CellData where
  inverse := 30030984653305
  bounds := fun _d => ⟨0, -1⟩

def cellA34B31 : CellData where
  inverse := 441813248842603
  bounds := fun _d => ⟨0, -1⟩

def cellA34B32 : CellData where
  inverse := 1059486645126550
  bounds := fun _d => ⟨0, -1⟩

def cellA34B33 : CellData where
  inverse := 1059486645126550
  bounds := fun _d => ⟨0, -1⟩

def cellA34B34 : CellData where
  inverse := 6618547211682073
  bounds := fun _d => ⟨0, -1⟩

def cellA34B35 : CellData where
  inverse := 39972910611015211
  bounds := fun _d => ⟨0, -1⟩

def cellA34B36 : CellData where
  inverse := 39972910611015211
  bounds := fun _d => ⟨0, -1⟩

def cellA34B37 : CellData where
  inverse := 190067545908014332
  bounds := fun _d => ⟨0, -1⟩

def cellA34B38 : CellData where
  inverse := 640351451799011695
  bounds := fun _d => ⟨0, -1⟩

def cellA34B39 : CellData where
  inverse := 1991203169472003784
  bounds := fun _d => ⟨0, -1⟩

def cellA34B40 : CellData where
  inverse := 1991203169472003784
  bounds := fun _d => ⟨0, -1⟩

def cellA34B41 : CellData where
  inverse := 1991203169472003784
  bounds := fun _d => ⟨0, -1⟩

def cellA34B42 : CellData where
  inverse := 1991203169472003784
  bounds := fun _d => ⟨0, -1⟩

def cellA34B43 : CellData where
  inverse := 220829181432496722202
  bounds := fun _d => ⟨0, -1⟩

def cellA34B44 : CellData where
  inverse := 877343116221570877456
  bounds := fun _d => ⟨0, -1⟩

def cellA34B45 : CellData where
  inverse := 877343116221570877456
  bounds := fun _d => ⟨0, -1⟩

def cellA34B46 : CellData where
  inverse := 6785968529323238274742
  bounds := fun _d => ⟨0, -1⟩

def cellA34B47 : CellData where
  inverse := 15648906648975739370671
  bounds := fun _d => ⟨0, -1⟩

def cellA34B48 : CellData where
  inverse := 68826535366890745946245
  bounds := fun _d => ⟨0, -1⟩

def cellA34B49 : CellData where
  inverse := 68826535366890745946245
  bounds := fun _d => ⟨0, -1⟩

def cellA34B50 : CellData where
  inverse := 68826535366890745946245
  bounds := fun _d => ⟨0, -1⟩

def cellA34B51 : CellData where
  inverse := 68826535366890745946245
  bounds := fun _d => ⟨0, -1⟩

def cellA34B52 : CellData where
  inverse := 2222520498442448512256992
  bounds := fun _d => ⟨0, -1⟩

def cellA34B53 : CellData where
  inverse := 15144684276895795110121474
  bounds := fun _d => ⟨0, -1⟩

def cellA34B54 : CellData where
  inverse := 34527929944575815006918197
  bounds := fun _d => ⟨0, -1⟩

def cellA34B55 : CellData where
  inverse := 92677666947615874697308366
  bounds := fun _d => ⟨0, -1⟩

def cellA34B56 : CellData where
  inverse := 441576088965856232839649380
  bounds := fun _d => ⟨0, -1⟩

def cellA34B57 : CellData where
  inverse := 964923721993216770053160901
  bounds := fun _d => ⟨0, -1⟩

def cellA34B58 : CellData where
  inverse := 964923721993216770053160901
  bounds := fun _d => ⟨0, -1⟩

def cellA34B59 : CellData where
  inverse := 5675052419239461604974764590
  bounds := fun _d => ⟨0, -1⟩

def cellA34B60 : CellData where
  inverse := 33935824602716930614504386724
  bounds := fun _d => ⟨0, -1⟩

def cellA34B61 : CellData where
  inverse := 118718141153149337643093253126
  bounds := fun _d => ⟨0, -1⟩

def cellA34B62 : CellData where
  inverse := 118718141153149337643093253126
  bounds := fun _d => ⟨0, -1⟩

def cellA34B63 : CellData where
  inverse := 881758990107041000900393050744
  bounds := fun _d => ⟨0, -1⟩

def cellA34B64 : CellData where
  inverse := 881758990107041000900393050744
  bounds := fun _d => ⟨0, -1⟩

def cellA34B65 : CellData where
  inverse := 4315442810399553485558242140025
  bounds := fun _d => ⟨0, -1⟩

def cellA34B66 : CellData where
  inverse := 24917545732154628393505336675711
  bounds := fun _d => ⟨0, -1⟩

def cellA34B67 : CellData where
  inverse := 86723854497419853117346620282769
  bounds := fun _d => ⟨0, -1⟩

def cellA34B68 : CellData where
  inverse := 272142780793215527288870471103943
  bounds := fun _d => ⟨0, -1⟩

def cellA35B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA35B2 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA35B3 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA35B4 : CellData where
  inverse := 56
  bounds := fun _d => ⟨0, -1⟩

def cellA35B5 : CellData where
  inverse := 218
  bounds := fun _d => ⟨0, -1⟩

def cellA35B6 : CellData where
  inverse := 461
  bounds := fun _d => ⟨0, -1⟩

def cellA35B7 : CellData where
  inverse := 1190
  bounds := fun _d => ⟨0, -1⟩

def cellA35B8 : CellData where
  inverse := 5564
  bounds := fun _d => ⟨0, -1⟩

def cellA35B9 : CellData where
  inverse := 12125
  bounds := fun _d => ⟨0, -1⟩

def cellA35B10 : CellData where
  inverse := 31808
  bounds := fun _d => ⟨0, -1⟩

def cellA35B11 : CellData where
  inverse := 31808
  bounds := fun _d => ⟨0, -1⟩

def cellA35B12 : CellData where
  inverse := 208955
  bounds := fun _d => ⟨0, -1⟩

def cellA35B13 : CellData where
  inverse := 1271837
  bounds := fun _d => ⟨0, -1⟩

def cellA35B14 : CellData where
  inverse := 4460483
  bounds := fun _d => ⟨0, -1⟩

def cellA35B15 : CellData where
  inverse := 14026421
  bounds := fun _d => ⟨0, -1⟩

def cellA35B16 : CellData where
  inverse := 42724235
  bounds := fun _d => ⟨0, -1⟩

def cellA35B17 : CellData where
  inverse := 42724235
  bounds := fun _d => ⟨0, -1⟩

def cellA35B18 : CellData where
  inverse := 42724235
  bounds := fun _d => ⟨0, -1⟩

def cellA35B19 : CellData where
  inverse := 817565213
  bounds := fun _d => ⟨0, -1⟩

def cellA35B20 : CellData where
  inverse := 3142088147
  bounds := fun _d => ⟨0, -1⟩

def cellA35B21 : CellData where
  inverse := 10115656949
  bounds := fun _d => ⟨0, -1⟩

def cellA35B22 : CellData where
  inverse := 31036363355
  bounds := fun _d => ⟨0, -1⟩

def cellA35B23 : CellData where
  inverse := 93798482573
  bounds := fun _d => ⟨0, -1⟩

def cellA35B24 : CellData where
  inverse := 187941661400
  bounds := fun _d => ⟨0, -1⟩

def cellA35B25 : CellData where
  inverse := 187941661400
  bounds := fun _d => ⟨0, -1⟩

def cellA35B26 : CellData where
  inverse := 1035230270843
  bounds := fun _d => ⟨0, -1⟩

def cellA35B27 : CellData where
  inverse := 3577096099172
  bounds := fun _d => ⟨0, -1⟩

def cellA35B28 : CellData where
  inverse := 3577096099172
  bounds := fun _d => ⟨0, -1⟩

def cellA35B29 : CellData where
  inverse := 49330681009094
  bounds := fun _d => ⟨0, -1⟩

def cellA35B30 : CellData where
  inverse := 117961058373977
  bounds := fun _d => ⟨0, -1⟩

def cellA35B31 : CellData where
  inverse := 529743322563275
  bounds := fun _d => ⟨0, -1⟩

def cellA35B32 : CellData where
  inverse := 529743322563275
  bounds := fun _d => ⟨0, -1⟩

def cellA35B33 : CellData where
  inverse := 529743322563275
  bounds := fun _d => ⟨0, -1⟩

def cellA35B34 : CellData where
  inverse := 11647864455674321
  bounds := fun _d => ⟨0, -1⟩

def cellA35B35 : CellData where
  inverse := 45002227855007459
  bounds := fun _d => ⟨0, -1⟩

def cellA35B36 : CellData where
  inverse := 95033772954007166
  bounds := fun _d => ⟨0, -1⟩

def cellA35B37 : CellData where
  inverse := 95033772954007166
  bounds := fun _d => ⟨0, -1⟩

def cellA35B38 : CellData where
  inverse := 995601584736001892
  bounds := fun _d => ⟨0, -1⟩

def cellA35B39 : CellData where
  inverse := 995601584736001892
  bounds := fun _d => ⟨0, -1⟩

def cellA35B40 : CellData where
  inverse := 995601584736001892
  bounds := fun _d => ⟨0, -1⟩

def cellA35B41 : CellData where
  inverse := 995601584736001892
  bounds := fun _d => ⟨0, -1⟩

def cellA35B42 : CellData where
  inverse := 995601584736001892
  bounds := fun _d => ⟨0, -1⟩

def cellA35B43 : CellData where
  inverse := 110414590716248361101
  bounds := fun _d => ⟨0, -1⟩

def cellA35B44 : CellData where
  inverse := 438671558110785438728
  bounds := fun _d => ⟨0, -1⟩

def cellA35B45 : CellData where
  inverse := 438671558110785438728
  bounds := fun _d => ⟨0, -1⟩

def cellA35B46 : CellData where
  inverse := 3392984264661619137371
  bounds := fun _d => ⟨0, -1⟩

def cellA35B47 : CellData where
  inverse := 21118860503966621329229
  bounds := fun _d => ⟨0, -1⟩

def cellA35B48 : CellData where
  inverse := 74296489221881627904803
  bounds := fun _d => ⟨0, -1⟩

def cellA35B49 : CellData where
  inverse := 154062932298754137768164
  bounds := fun _d => ⟨0, -1⟩

def cellA35B50 : CellData where
  inverse := 393362261529371667358247
  bounds := fun _d => ⟨0, -1⟩

def cellA35B51 : CellData where
  inverse := 1111260249221224256128496
  bounds := fun _d => ⟨0, -1⟩

def cellA35B52 : CellData where
  inverse := 1111260249221224256128496
  bounds := fun _d => ⟨0, -1⟩

def cellA35B53 : CellData where
  inverse := 7572342138447897555060737
  bounds := fun _d => ⟨0, -1⟩

def cellA35B54 : CellData where
  inverse := 46338833473807937348654183
  bounds := fun _d => ⟨0, -1⟩

def cellA35B55 : CellData where
  inverse := 46338833473807937348654183
  bounds := fun _d => ⟨0, -1⟩

def cellA35B56 : CellData where
  inverse := 220788044482928116419824690
  bounds := fun _d => ⟨0, -1⟩

def cellA35B57 : CellData where
  inverse := 1267483310537649190846847732
  bounds := fun _d => ⟨0, -1⟩

def cellA35B58 : CellData where
  inverse := 2837526209619730802487382295
  bounds := fun _d => ⟨0, -1⟩

def cellA35B59 : CellData where
  inverse := 2837526209619730802487382295
  bounds := fun _d => ⟨0, -1⟩

def cellA35B60 : CellData where
  inverse := 16967912301358465307252193362
  bounds := fun _d => ⟨0, -1⟩

def cellA35B61 : CellData where
  inverse := 59359070576574668821546626563
  bounds := fun _d => ⟨0, -1⟩

def cellA35B62 : CellData where
  inverse := 59359070576574668821546626563
  bounds := fun _d => ⟨0, -1⟩

def cellA35B63 : CellData where
  inverse := 440879495053520500450196525372
  bounds := fun _d => ⟨0, -1⟩

def cellA35B64 : CellData where
  inverse := 440879495053520500450196525372
  bounds := fun _d => ⟨0, -1⟩

def cellA35B65 : CellData where
  inverse := 7308247135638545469765894703934
  bounds := fun _d => ⟨0, -1⟩

def cellA35B66 : CellData where
  inverse := 27910350057393620377712989239620
  bounds := fun _d => ⟨0, -1⟩

def cellA35B67 : CellData where
  inverse := 89716658822658845101554272846678
  bounds := fun _d => ⟨0, -1⟩

def cellA35B68 : CellData where
  inverse := 275135585118454519273078123667852
  bounds := fun _d => ⟨0, -1⟩

def cellA36B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA36B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA36B3 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA36B4 : CellData where
  inverse := 28
  bounds := fun _d => ⟨0, -1⟩

def cellA36B5 : CellData where
  inverse := 109
  bounds := fun _d => ⟨0, -1⟩

def cellA36B6 : CellData where
  inverse := 595
  bounds := fun _d => ⟨0, -1⟩

def cellA36B7 : CellData where
  inverse := 595
  bounds := fun _d => ⟨0, -1⟩

def cellA36B8 : CellData where
  inverse := 2782
  bounds := fun _d => ⟨0, -1⟩

def cellA36B9 : CellData where
  inverse := 15904
  bounds := fun _d => ⟨0, -1⟩

def cellA36B10 : CellData where
  inverse := 15904
  bounds := fun _d => ⟨0, -1⟩

def cellA36B11 : CellData where
  inverse := 15904
  bounds := fun _d => ⟨0, -1⟩

def cellA36B12 : CellData where
  inverse := 370198
  bounds := fun _d => ⟨0, -1⟩

def cellA36B13 : CellData where
  inverse := 1433080
  bounds := fun _d => ⟨0, -1⟩

def cellA36B14 : CellData where
  inverse := 4621726
  bounds := fun _d => ⟨0, -1⟩

def cellA36B15 : CellData where
  inverse := 14187664
  bounds := fun _d => ⟨0, -1⟩

def cellA36B16 : CellData where
  inverse := 42885478
  bounds := fun _d => ⟨0, -1⟩

def cellA36B17 : CellData where
  inverse := 85932199
  bounds := fun _d => ⟨0, -1⟩

def cellA36B18 : CellData where
  inverse := 215072362
  bounds := fun _d => ⟨0, -1⟩

def cellA36B19 : CellData where
  inverse := 989913340
  bounds := fun _d => ⟨0, -1⟩

def cellA36B20 : CellData where
  inverse := 3314436274
  bounds := fun _d => ⟨0, -1⟩

def cellA36B21 : CellData where
  inverse := 10288005076
  bounds := fun _d => ⟨0, -1⟩

def cellA36B22 : CellData where
  inverse := 31208711482
  bounds := fun _d => ⟨0, -1⟩

def cellA36B23 : CellData where
  inverse := 93970830700
  bounds := fun _d => ⟨0, -1⟩

def cellA36B24 : CellData where
  inverse := 93970830700
  bounds := fun _d => ⟨0, -1⟩

def cellA36B25 : CellData where
  inverse := 93970830700
  bounds := fun _d => ⟨0, -1⟩

def cellA36B26 : CellData where
  inverse := 1788548049586
  bounds := fun _d => ⟨0, -1⟩

def cellA36B27 : CellData where
  inverse := 1788548049586
  bounds := fun _d => ⟨0, -1⟩

def cellA36B28 : CellData where
  inverse := 1788548049586
  bounds := fun _d => ⟨0, -1⟩

def cellA36B29 : CellData where
  inverse := 24665340504547
  bounds := fun _d => ⟨0, -1⟩

def cellA36B30 : CellData where
  inverse := 161926095234313
  bounds := fun _d => ⟨0, -1⟩

def cellA36B31 : CellData where
  inverse := 573708359423611
  bounds := fun _d => ⟨0, -1⟩

def cellA36B32 : CellData where
  inverse := 1191381755707558
  bounds := fun _d => ⟨0, -1⟩

def cellA36B33 : CellData where
  inverse := 3044401944559399
  bounds := fun _d => ⟨0, -1⟩

def cellA36B34 : CellData where
  inverse := 14162523077670445
  bounds := fun _d => ⟨0, -1⟩

def cellA36B35 : CellData where
  inverse := 47516886477003583
  bounds := fun _d => ⟨0, -1⟩

def cellA36B36 : CellData where
  inverse := 47516886477003583
  bounds := fun _d => ⟨0, -1⟩

def cellA36B37 : CellData where
  inverse := 47516886477003583
  bounds := fun _d => ⟨0, -1⟩

def cellA36B38 : CellData where
  inverse := 497800792368000946
  bounds := fun _d => ⟨0, -1⟩

def cellA36B39 : CellData where
  inverse := 497800792368000946
  bounds := fun _d => ⟨0, -1⟩

def cellA36B40 : CellData where
  inverse := 497800792368000946
  bounds := fun _d => ⟨0, -1⟩

def cellA36B41 : CellData where
  inverse := 497800792368000946
  bounds := fun _d => ⟨0, -1⟩

def cellA36B42 : CellData where
  inverse := 497800792368000946
  bounds := fun _d => ⟨0, -1⟩

def cellA36B43 : CellData where
  inverse := 219335779055392719364
  bounds := fun _d => ⟨0, -1⟩

def cellA36B44 : CellData where
  inverse := 219335779055392719364
  bounds := fun _d => ⟨0, -1⟩

def cellA36B45 : CellData where
  inverse := 219335779055392719364
  bounds := fun _d => ⟨0, -1⟩

def cellA36B46 : CellData where
  inverse := 6127961192157060116650
  bounds := fun _d => ⟨0, -1⟩

def cellA36B47 : CellData where
  inverse := 23853837431462062308508
  bounds := fun _d => ⟨0, -1⟩

def cellA36B48 : CellData where
  inverse := 77031466149377068884082
  bounds := fun _d => ⟨0, -1⟩

def cellA36B49 : CellData where
  inverse := 77031466149377068884082
  bounds := fun _d => ⟨0, -1⟩

def cellA36B50 : CellData where
  inverse := 555630124610612128064248
  bounds := fun _d => ⟨0, -1⟩

def cellA36B51 : CellData where
  inverse := 555630124610612128064248
  bounds := fun _d => ⟨0, -1⟩

def cellA36B52 : CellData where
  inverse := 555630124610612128064248
  bounds := fun _d => ⟨0, -1⟩

def cellA36B53 : CellData where
  inverse := 13477793903063958725928730
  bounds := fun _d => ⟨0, -1⟩

def cellA36B54 : CellData where
  inverse := 52244285238423998519522176
  bounds := fun _d => ⟨0, -1⟩

def cellA36B55 : CellData where
  inverse := 110394022241464058209912345
  bounds := fun _d => ⟨0, -1⟩

def cellA36B56 : CellData where
  inverse := 110394022241464058209912345
  bounds := fun _d => ⟨0, -1⟩

def cellA36B57 : CellData where
  inverse := 633741655268824595423423866
  bounds := fun _d => ⟨0, -1⟩

def cellA36B58 : CellData where
  inverse := 3773827453432987818704492992
  bounds := fun _d => ⟨0, -1⟩

def cellA36B59 : CellData where
  inverse := 8483956150679232653626096681
  bounds := fun _d => ⟨0, -1⟩

def cellA36B60 : CellData where
  inverse := 8483956150679232653626096681
  bounds := fun _d => ⟨0, -1⟩

def cellA36B61 : CellData where
  inverse := 93266272701111639682214963083
  bounds := fun _d => ⟨0, -1⟩

def cellA36B62 : CellData where
  inverse := 220439747526760250225098262686
  bounds := fun _d => ⟨0, -1⟩

def cellA36B63 : CellData where
  inverse := 220439747526760250225098262686
  bounds := fun _d => ⟨0, -1⟩

def cellA36B64 : CellData where
  inverse := 220439747526760250225098262686
  bounds := fun _d => ⟨0, -1⟩

def cellA36B65 : CellData where
  inverse := 3654123567819272734882947351967
  bounds := fun _d => ⟨0, -1⟩

def cellA36B66 : CellData where
  inverse := 13955175028696810188856494619810
  bounds := fun _d => ⟨0, -1⟩

def cellA36B67 : CellData where
  inverse := 44858329411329422550777136423339
  bounds := fun _d => ⟨0, -1⟩

def cellA36B68 : CellData where
  inverse := 137567792559227259636539061833926
  bounds := fun _d => ⟨0, -1⟩

def cellA37B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA37B2 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA37B3 : CellData where
  inverse := 14
  bounds := fun _d => ⟨0, -1⟩

def cellA37B4 : CellData where
  inverse := 14
  bounds := fun _d => ⟨0, -1⟩

def cellA37B5 : CellData where
  inverse := 176
  bounds := fun _d => ⟨0, -1⟩

def cellA37B6 : CellData where
  inverse := 662
  bounds := fun _d => ⟨0, -1⟩

def cellA37B7 : CellData where
  inverse := 1391
  bounds := fun _d => ⟨0, -1⟩

def cellA37B8 : CellData where
  inverse := 1391
  bounds := fun _d => ⟨0, -1⟩

def cellA37B9 : CellData where
  inverse := 7952
  bounds := fun _d => ⟨0, -1⟩

def cellA37B10 : CellData where
  inverse := 7952
  bounds := fun _d => ⟨0, -1⟩

def cellA37B11 : CellData where
  inverse := 7952
  bounds := fun _d => ⟨0, -1⟩

def cellA37B12 : CellData where
  inverse := 185099
  bounds := fun _d => ⟨0, -1⟩

def cellA37B13 : CellData where
  inverse := 716540
  bounds := fun _d => ⟨0, -1⟩

def cellA37B14 : CellData where
  inverse := 2310863
  bounds := fun _d => ⟨0, -1⟩

def cellA37B15 : CellData where
  inverse := 7093832
  bounds := fun _d => ⟨0, -1⟩

def cellA37B16 : CellData where
  inverse := 21442739
  bounds := fun _d => ⟨0, -1⟩

def cellA37B17 : CellData where
  inverse := 107536181
  bounds := fun _d => ⟨0, -1⟩

def cellA37B18 : CellData where
  inverse := 107536181
  bounds := fun _d => ⟨0, -1⟩

def cellA37B19 : CellData where
  inverse := 494956670
  bounds := fun _d => ⟨0, -1⟩

def cellA37B20 : CellData where
  inverse := 1657218137
  bounds := fun _d => ⟨0, -1⟩

def cellA37B21 : CellData where
  inverse := 5144002538
  bounds := fun _d => ⟨0, -1⟩

def cellA37B22 : CellData where
  inverse := 15604355741
  bounds := fun _d => ⟨0, -1⟩

def cellA37B23 : CellData where
  inverse := 46985415350
  bounds := fun _d => ⟨0, -1⟩

def cellA37B24 : CellData where
  inverse := 46985415350
  bounds := fun _d => ⟨0, -1⟩

def cellA37B25 : CellData where
  inverse := 46985415350
  bounds := fun _d => ⟨0, -1⟩

def cellA37B26 : CellData where
  inverse := 894274024793
  bounds := fun _d => ⟨0, -1⟩

def cellA37B27 : CellData where
  inverse := 894274024793
  bounds := fun _d => ⟨0, -1⟩

def cellA37B28 : CellData where
  inverse := 894274024793
  bounds := fun _d => ⟨0, -1⟩

def cellA37B29 : CellData where
  inverse := 46647858934715
  bounds := fun _d => ⟨0, -1⟩

def cellA37B30 : CellData where
  inverse := 183908613664481
  bounds := fun _d => ⟨0, -1⟩

def cellA37B31 : CellData where
  inverse := 595690877853779
  bounds := fun _d => ⟨0, -1⟩

def cellA37B32 : CellData where
  inverse := 595690877853779
  bounds := fun _d => ⟨0, -1⟩

def cellA37B33 : CellData where
  inverse := 4301731255557461
  bounds := fun _d => ⟨0, -1⟩

def cellA37B34 : CellData where
  inverse := 15419852388668507
  bounds := fun _d => ⟨0, -1⟩

def cellA37B35 : CellData where
  inverse := 48774215788001645
  bounds := fun _d => ⟨0, -1⟩

def cellA37B36 : CellData where
  inverse := 98805760887001352
  bounds := fun _d => ⟨0, -1⟩

def cellA37B37 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B38 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B39 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B40 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B41 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B42 : CellData where
  inverse := 248900396184000473
  bounds := fun _d => ⟨0, -1⟩

def cellA37B43 : CellData where
  inverse := 109667889527696359682
  bounds := fun _d => ⟨0, -1⟩

def cellA37B44 : CellData where
  inverse := 109667889527696359682
  bounds := fun _d => ⟨0, -1⟩

def cellA37B45 : CellData where
  inverse := 109667889527696359682
  bounds := fun _d => ⟨0, -1⟩

def cellA37B46 : CellData where
  inverse := 3063980596078530058325
  bounds := fun _d => ⟨0, -1⟩

def cellA37B47 : CellData where
  inverse := 11926918715731031154254
  bounds := fun _d => ⟨0, -1⟩

def cellA37B48 : CellData where
  inverse := 38515733074688534442041
  bounds := fun _d => ⟨0, -1⟩

def cellA37B49 : CellData where
  inverse := 38515733074688534442041
  bounds := fun _d => ⟨0, -1⟩

def cellA37B50 : CellData where
  inverse := 277815062305306064032124
  bounds := fun _d => ⟨0, -1⟩

def cellA37B51 : CellData where
  inverse := 277815062305306064032124
  bounds := fun _d => ⟨0, -1⟩

def cellA37B52 : CellData where
  inverse := 277815062305306064032124
  bounds := fun _d => ⟨0, -1⟩

def cellA37B53 : CellData where
  inverse := 6738896951531979362964365
  bounds := fun _d => ⟨0, -1⟩

def cellA37B54 : CellData where
  inverse := 26122142619211999259761088
  bounds := fun _d => ⟨0, -1⟩

def cellA37B55 : CellData where
  inverse := 142421616625292118640541426
  bounds := fun _d => ⟨0, -1⟩

def cellA37B56 : CellData where
  inverse := 316870827634412297711711933
  bounds := fun _d => ⟨0, -1⟩

def cellA37B57 : CellData where
  inverse := 316870827634412297711711933
  bounds := fun _d => ⟨0, -1⟩

def cellA37B58 : CellData where
  inverse := 1886913726716493909352246496
  bounds := fun _d => ⟨0, -1⟩

def cellA37B59 : CellData where
  inverse := 11307171121208983579195453874
  bounds := fun _d => ⟨0, -1⟩

def cellA37B60 : CellData where
  inverse := 25437557212947718083960264941
  bounds := fun _d => ⟨0, -1⟩

def cellA37B61 : CellData where
  inverse := 110219873763380125112549131343
  bounds := fun _d => ⟨0, -1⟩

def cellA37B62 : CellData where
  inverse := 110219873763380125112549131343
  bounds := fun _d => ⟨0, -1⟩

def cellA37B63 : CellData where
  inverse := 110219873763380125112549131343
  bounds := fun _d => ⟨0, -1⟩

def cellA37B64 : CellData where
  inverse := 110219873763380125112549131343
  bounds := fun _d => ⟨0, -1⟩

def cellA37B65 : CellData where
  inverse := 6977587514348405094428247309905
  bounds := fun _d => ⟨0, -1⟩

def cellA37B66 : CellData where
  inverse := 6977587514348405094428247309905
  bounds := fun _d => ⟨0, -1⟩

def cellA37B67 : CellData where
  inverse := 68783896279613629818269530916963
  bounds := fun _d => ⟨0, -1⟩

def cellA37B68 : CellData where
  inverse := 68783896279613629818269530916963
  bounds := fun _d => ⟨0, -1⟩

def cellA38B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA38B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA38B3 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA38B4 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA38B5 : CellData where
  inverse := 88
  bounds := fun _d => ⟨0, -1⟩

def cellA38B6 : CellData where
  inverse := 331
  bounds := fun _d => ⟨0, -1⟩

def cellA38B7 : CellData where
  inverse := 1789
  bounds := fun _d => ⟨0, -1⟩

def cellA38B8 : CellData where
  inverse := 3976
  bounds := fun _d => ⟨0, -1⟩

def cellA38B9 : CellData where
  inverse := 3976
  bounds := fun _d => ⟨0, -1⟩

def cellA38B10 : CellData where
  inverse := 3976
  bounds := fun _d => ⟨0, -1⟩

def cellA38B11 : CellData where
  inverse := 3976
  bounds := fun _d => ⟨0, -1⟩

def cellA38B12 : CellData where
  inverse := 358270
  bounds := fun _d => ⟨0, -1⟩

def cellA38B13 : CellData where
  inverse := 358270
  bounds := fun _d => ⟨0, -1⟩

def cellA38B14 : CellData where
  inverse := 3546916
  bounds := fun _d => ⟨0, -1⟩

def cellA38B15 : CellData where
  inverse := 3546916
  bounds := fun _d => ⟨0, -1⟩

def cellA38B16 : CellData where
  inverse := 32244730
  bounds := fun _d => ⟨0, -1⟩

def cellA38B17 : CellData where
  inverse := 118338172
  bounds := fun _d => ⟨0, -1⟩

def cellA38B18 : CellData where
  inverse := 247478335
  bounds := fun _d => ⟨0, -1⟩

def cellA38B19 : CellData where
  inverse := 247478335
  bounds := fun _d => ⟨0, -1⟩

def cellA38B20 : CellData where
  inverse := 2572001269
  bounds := fun _d => ⟨0, -1⟩

def cellA38B21 : CellData where
  inverse := 2572001269
  bounds := fun _d => ⟨0, -1⟩

def cellA38B22 : CellData where
  inverse := 23492707675
  bounds := fun _d => ⟨0, -1⟩

def cellA38B23 : CellData where
  inverse := 23492707675
  bounds := fun _d => ⟨0, -1⟩

def cellA38B24 : CellData where
  inverse := 23492707675
  bounds := fun _d => ⟨0, -1⟩

def cellA38B25 : CellData where
  inverse := 23492707675
  bounds := fun _d => ⟨0, -1⟩

def cellA38B26 : CellData where
  inverse := 1718069926561
  bounds := fun _d => ⟨0, -1⟩

def cellA38B27 : CellData where
  inverse := 4259935754890
  bounds := fun _d => ⟨0, -1⟩

def cellA38B28 : CellData where
  inverse := 11885533239877
  bounds := fun _d => ⟨0, -1⟩

def cellA38B29 : CellData where
  inverse := 57639118149799
  bounds := fun _d => ⟨0, -1⟩

def cellA38B30 : CellData where
  inverse := 194899872879565
  bounds := fun _d => ⟨0, -1⟩

def cellA38B31 : CellData where
  inverse := 606682137068863
  bounds := fun _d => ⟨0, -1⟩

def cellA38B32 : CellData where
  inverse := 1224355533352810
  bounds := fun _d => ⟨0, -1⟩

def cellA38B33 : CellData where
  inverse := 4930395911056492
  bounds := fun _d => ⟨0, -1⟩

def cellA38B34 : CellData where
  inverse := 16048517044167538
  bounds := fun _d => ⟨0, -1⟩

def cellA38B35 : CellData where
  inverse := 49402880443500676
  bounds := fun _d => ⟨0, -1⟩

def cellA38B36 : CellData where
  inverse := 49402880443500676
  bounds := fun _d => ⟨0, -1⟩

def cellA38B37 : CellData where
  inverse := 349592151037498918
  bounds := fun _d => ⟨0, -1⟩

def cellA38B38 : CellData where
  inverse := 799876056928496281
  bounds := fun _d => ⟨0, -1⟩

def cellA38B39 : CellData where
  inverse := 2150727774601488370
  bounds := fun _d => ⟨0, -1⟩

def cellA38B40 : CellData where
  inverse := 6203282927620464637
  bounds := fun _d => ⟨0, -1⟩

def cellA38B41 : CellData where
  inverse := 18360948386677393438
  bounds := fun _d => ⟨0, -1⟩

def cellA38B42 : CellData where
  inverse := 54833944763848179841
  bounds := fun _d => ⟨0, -1⟩

def cellA38B43 : CellData where
  inverse := 54833944763848179841
  bounds := fun _d => ⟨0, -1⟩

def cellA38B44 : CellData where
  inverse := 54833944763848179841
  bounds := fun _d => ⟨0, -1⟩

def cellA38B45 : CellData where
  inverse := 54833944763848179841
  bounds := fun _d => ⟨0, -1⟩

def cellA38B46 : CellData where
  inverse := 5963459357865515577127
  bounds := fun _d => ⟨0, -1⟩

def cellA38B47 : CellData where
  inverse := 5963459357865515577127
  bounds := fun _d => ⟨0, -1⟩

def cellA38B48 : CellData where
  inverse := 59141088075780522152701
  bounds := fun _d => ⟨0, -1⟩

def cellA38B49 : CellData where
  inverse := 138907531152653032016062
  bounds := fun _d => ⟨0, -1⟩

def cellA38B50 : CellData where
  inverse := 138907531152653032016062
  bounds := fun _d => ⟨0, -1⟩

def cellA38B51 : CellData where
  inverse := 138907531152653032016062
  bounds := fun _d => ⟨0, -1⟩

def cellA38B52 : CellData where
  inverse := 138907531152653032016062
  bounds := fun _d => ⟨0, -1⟩

def cellA38B53 : CellData where
  inverse := 13061071309605999629880544
  bounds := fun _d => ⟨0, -1⟩

def cellA38B54 : CellData where
  inverse := 13061071309605999629880544
  bounds := fun _d => ⟨0, -1⟩

def cellA38B55 : CellData where
  inverse := 71210808312646059320270713
  bounds := fun _d => ⟨0, -1⟩

def cellA38B56 : CellData where
  inverse := 420109230330886417462611727
  bounds := fun _d => ⟨0, -1⟩

def cellA38B57 : CellData where
  inverse := 943456863358246954676123248
  bounds := fun _d => ⟨0, -1⟩

def cellA38B58 : CellData where
  inverse := 943456863358246954676123248
  bounds := fun _d => ⟨0, -1⟩

def cellA38B59 : CellData where
  inverse := 5653585560604491789597726937
  bounds := fun _d => ⟨0, -1⟩

def cellA38B60 : CellData where
  inverse := 33914357744081960799127349071
  bounds := fun _d => ⟨0, -1⟩

def cellA38B61 : CellData where
  inverse := 118696674294514367827716215473
  bounds := fun _d => ⟨0, -1⟩

def cellA38B62 : CellData where
  inverse := 245870149120162978370599515076
  bounds := fun _d => ⟨0, -1⟩

def cellA38B63 : CellData where
  inverse := 627390573597108809999249413885
  bounds := fun _d => ⟨0, -1⟩

def cellA38B64 : CellData where
  inverse := 1771951847027946304885199110312
  bounds := fun _d => ⟨0, -1⟩

def cellA38B65 : CellData where
  inverse := 8639319487612971274200897288874
  bounds := fun _d => ⟨0, -1⟩

def cellA38B66 : CellData where
  inverse := 18940370948490508728174444556717
  bounds := fun _d => ⟨0, -1⟩

def cellA38B67 : CellData where
  inverse := 80746679713755733452015728163775
  bounds := fun _d => ⟨0, -1⟩

def cellA38B68 : CellData where
  inverse := 173456142861653570537777653574362
  bounds := fun _d => ⟨0, -1⟩

def cellA39B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA39B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA39B3 : CellData where
  inverse := 17
  bounds := fun _d => ⟨0, -1⟩

def cellA39B4 : CellData where
  inverse := 44
  bounds := fun _d => ⟨0, -1⟩

def cellA39B5 : CellData where
  inverse := 44
  bounds := fun _d => ⟨0, -1⟩

def cellA39B6 : CellData where
  inverse := 530
  bounds := fun _d => ⟨0, -1⟩

def cellA39B7 : CellData where
  inverse := 1988
  bounds := fun _d => ⟨0, -1⟩

def cellA39B8 : CellData where
  inverse := 1988
  bounds := fun _d => ⟨0, -1⟩

def cellA39B9 : CellData where
  inverse := 1988
  bounds := fun _d => ⟨0, -1⟩

def cellA39B10 : CellData where
  inverse := 1988
  bounds := fun _d => ⟨0, -1⟩

def cellA39B11 : CellData where
  inverse := 1988
  bounds := fun _d => ⟨0, -1⟩

def cellA39B12 : CellData where
  inverse := 179135
  bounds := fun _d => ⟨0, -1⟩

def cellA39B13 : CellData where
  inverse := 179135
  bounds := fun _d => ⟨0, -1⟩

def cellA39B14 : CellData where
  inverse := 1773458
  bounds := fun _d => ⟨0, -1⟩

def cellA39B15 : CellData where
  inverse := 1773458
  bounds := fun _d => ⟨0, -1⟩

def cellA39B16 : CellData where
  inverse := 16122365
  bounds := fun _d => ⟨0, -1⟩

def cellA39B17 : CellData where
  inverse := 59169086
  bounds := fun _d => ⟨0, -1⟩

def cellA39B18 : CellData where
  inverse := 317449412
  bounds := fun _d => ⟨0, -1⟩

def cellA39B19 : CellData where
  inverse := 704869901
  bounds := fun _d => ⟨0, -1⟩

def cellA39B20 : CellData where
  inverse := 3029392835
  bounds := fun _d => ⟨0, -1⟩

def cellA39B21 : CellData where
  inverse := 6516177236
  bounds := fun _d => ⟨0, -1⟩

def cellA39B22 : CellData where
  inverse := 27436883642
  bounds := fun _d => ⟨0, -1⟩

def cellA39B23 : CellData where
  inverse := 58817943251
  bounds := fun _d => ⟨0, -1⟩

def cellA39B24 : CellData where
  inverse := 152961122078
  bounds := fun _d => ⟨0, -1⟩

def cellA39B25 : CellData where
  inverse := 435390658559
  bounds := fun _d => ⟨0, -1⟩

def cellA39B26 : CellData where
  inverse := 2129967877445
  bounds := fun _d => ⟨0, -1⟩

def cellA39B27 : CellData where
  inverse := 2129967877445
  bounds := fun _d => ⟨0, -1⟩

def cellA39B28 : CellData where
  inverse := 17381162847419
  bounds := fun _d => ⟨0, -1⟩

def cellA39B29 : CellData where
  inverse := 63134747757341
  bounds := fun _d => ⟨0, -1⟩

def cellA39B30 : CellData where
  inverse := 200395502487107
  bounds := fun _d => ⟨0, -1⟩

def cellA39B31 : CellData where
  inverse := 612177766676405
  bounds := fun _d => ⟨0, -1⟩

def cellA39B32 : CellData where
  inverse := 612177766676405
  bounds := fun _d => ⟨0, -1⟩

def cellA39B33 : CellData where
  inverse := 2465197955528246
  bounds := fun _d => ⟨0, -1⟩

def cellA39B34 : CellData where
  inverse := 8024258522083769
  bounds := fun _d => ⟨0, -1⟩

def cellA39B35 : CellData where
  inverse := 24701440221750338
  bounds := fun _d => ⟨0, -1⟩

def cellA39B36 : CellData where
  inverse := 24701440221750338
  bounds := fun _d => ⟨0, -1⟩

def cellA39B37 : CellData where
  inverse := 174796075518749459
  bounds := fun _d => ⟨0, -1⟩

def cellA39B38 : CellData where
  inverse := 1075363887300744185
  bounds := fun _d => ⟨0, -1⟩

def cellA39B39 : CellData where
  inverse := 1075363887300744185
  bounds := fun _d => ⟨0, -1⟩

def cellA39B40 : CellData where
  inverse := 9180474193338696719
  bounds := fun _d => ⟨0, -1⟩

def cellA39B41 : CellData where
  inverse := 9180474193338696719
  bounds := fun _d => ⟨0, -1⟩

def cellA39B42 : CellData where
  inverse := 82126466947680269525
  bounds := fun _d => ⟨0, -1⟩

def cellA39B43 : CellData where
  inverse := 191545456079192628734
  bounds := fun _d => ⟨0, -1⟩

def cellA39B44 : CellData where
  inverse := 519802423473729706361
  bounds := fun _d => ⟨0, -1⟩

def cellA39B45 : CellData where
  inverse := 1504573325657340939242
  bounds := fun _d => ⟨0, -1⟩

def cellA39B46 : CellData where
  inverse := 7413198738759008336528
  bounds := fun _d => ⟨0, -1⟩

def cellA39B47 : CellData where
  inverse := 16276136858411509432457
  bounds := fun _d => ⟨0, -1⟩

def cellA39B48 : CellData where
  inverse := 69453765576326516008031
  bounds := fun _d => ⟨0, -1⟩

def cellA39B49 : CellData where
  inverse := 69453765576326516008031
  bounds := fun _d => ⟨0, -1⟩

def cellA39B50 : CellData where
  inverse := 69453765576326516008031
  bounds := fun _d => ⟨0, -1⟩

def cellA39B51 : CellData where
  inverse := 69453765576326516008031
  bounds := fun _d => ⟨0, -1⟩

def cellA39B52 : CellData where
  inverse := 69453765576326516008031
  bounds := fun _d => ⟨0, -1⟩

def cellA39B53 : CellData where
  inverse := 6530535654802999814940272
  bounds := fun _d => ⟨0, -1⟩

def cellA39B54 : CellData where
  inverse := 6530535654802999814940272
  bounds := fun _d => ⟨0, -1⟩

def cellA39B55 : CellData where
  inverse := 122830009660883119195720610
  bounds := fun _d => ⟨0, -1⟩

def cellA39B56 : CellData where
  inverse := 471728431679123477338061624
  bounds := fun _d => ⟨0, -1⟩

def cellA39B57 : CellData where
  inverse := 471728431679123477338061624
  bounds := fun _d => ⟨0, -1⟩

def cellA39B58 : CellData where
  inverse := 471728431679123477338061624
  bounds := fun _d => ⟨0, -1⟩

def cellA39B59 : CellData where
  inverse := 9891985826171613147181269002
  bounds := fun _d => ⟨0, -1⟩

def cellA39B60 : CellData where
  inverse := 38152758009649082156710891136
  bounds := fun _d => ⟨0, -1⟩

def cellA39B61 : CellData where
  inverse := 122935074560081489185299757538
  bounds := fun _d => ⟨0, -1⟩

def cellA39B62 : CellData where
  inverse := 122935074560081489185299757538
  bounds := fun _d => ⟨0, -1⟩

def cellA39B63 : CellData where
  inverse := 885975923513973152442599555156
  bounds := fun _d => ⟨0, -1⟩

def cellA39B64 : CellData where
  inverse := 885975923513973152442599555156
  bounds := fun _d => ⟨0, -1⟩

def cellA39B65 : CellData where
  inverse := 4319659743806485637100448644437
  bounds := fun _d => ⟨0, -1⟩

def cellA39B66 : CellData where
  inverse := 24921762665561560545047543180123
  bounds := fun _d => ⟨0, -1⟩

def cellA39B67 : CellData where
  inverse := 86728071430826785268888826787181
  bounds := fun _d => ⟨0, -1⟩

def cellA39B68 : CellData where
  inverse := 86728071430826785268888826787181
  bounds := fun _d => ⟨0, -1⟩

def cellA40B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA40B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA40B3 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA40B4 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA40B5 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA40B6 : CellData where
  inverse := 265
  bounds := fun _d => ⟨0, -1⟩

def cellA40B7 : CellData where
  inverse := 994
  bounds := fun _d => ⟨0, -1⟩

def cellA40B8 : CellData where
  inverse := 994
  bounds := fun _d => ⟨0, -1⟩

def cellA40B9 : CellData where
  inverse := 994
  bounds := fun _d => ⟨0, -1⟩

def cellA40B10 : CellData where
  inverse := 994
  bounds := fun _d => ⟨0, -1⟩

def cellA40B11 : CellData where
  inverse := 994
  bounds := fun _d => ⟨0, -1⟩

def cellA40B12 : CellData where
  inverse := 355288
  bounds := fun _d => ⟨0, -1⟩

def cellA40B13 : CellData where
  inverse := 886729
  bounds := fun _d => ⟨0, -1⟩

def cellA40B14 : CellData where
  inverse := 886729
  bounds := fun _d => ⟨0, -1⟩

def cellA40B15 : CellData where
  inverse := 886729
  bounds := fun _d => ⟨0, -1⟩

def cellA40B16 : CellData where
  inverse := 29584543
  bounds := fun _d => ⟨0, -1⟩

def cellA40B17 : CellData where
  inverse := 29584543
  bounds := fun _d => ⟨0, -1⟩

def cellA40B18 : CellData where
  inverse := 158724706
  bounds := fun _d => ⟨0, -1⟩

def cellA40B19 : CellData where
  inverse := 933565684
  bounds := fun _d => ⟨0, -1⟩

def cellA40B20 : CellData where
  inverse := 3258088618
  bounds := fun _d => ⟨0, -1⟩

def cellA40B21 : CellData where
  inverse := 3258088618
  bounds := fun _d => ⟨0, -1⟩

def cellA40B22 : CellData where
  inverse := 13718441821
  bounds := fun _d => ⟨0, -1⟩

def cellA40B23 : CellData where
  inverse := 76480561039
  bounds := fun _d => ⟨0, -1⟩

def cellA40B24 : CellData where
  inverse := 76480561039
  bounds := fun _d => ⟨0, -1⟩

def cellA40B25 : CellData where
  inverse := 641339634001
  bounds := fun _d => ⟨0, -1⟩

def cellA40B26 : CellData where
  inverse := 2335916852887
  bounds := fun _d => ⟨0, -1⟩

def cellA40B27 : CellData where
  inverse := 4877782681216
  bounds := fun _d => ⟨0, -1⟩

def cellA40B28 : CellData where
  inverse := 20128977651190
  bounds := fun _d => ⟨0, -1⟩

def cellA40B29 : CellData where
  inverse := 65882562561112
  bounds := fun _d => ⟨0, -1⟩

def cellA40B30 : CellData where
  inverse := 203143317290878
  bounds := fun _d => ⟨0, -1⟩

def cellA40B31 : CellData where
  inverse := 614925581480176
  bounds := fun _d => ⟨0, -1⟩

def cellA40B32 : CellData where
  inverse := 1232598977764123
  bounds := fun _d => ⟨0, -1⟩

def cellA40B33 : CellData where
  inverse := 1232598977764123
  bounds := fun _d => ⟨0, -1⟩

def cellA40B34 : CellData where
  inverse := 12350720110875169
  bounds := fun _d => ⟨0, -1⟩

def cellA40B35 : CellData where
  inverse := 12350720110875169
  bounds := fun _d => ⟨0, -1⟩

def cellA40B36 : CellData where
  inverse := 12350720110875169
  bounds := fun _d => ⟨0, -1⟩

def cellA40B37 : CellData where
  inverse := 312539990704873411
  bounds := fun _d => ⟨0, -1⟩

def cellA40B38 : CellData where
  inverse := 1213107802486868137
  bounds := fun _d => ⟨0, -1⟩

def cellA40B39 : CellData where
  inverse := 2563959520159860226
  bounds := fun _d => ⟨0, -1⟩

def cellA40B40 : CellData where
  inverse := 10669069826197812760
  bounds := fun _d => ⟨0, -1⟩

def cellA40B41 : CellData where
  inverse := 22826735285254741561
  bounds := fun _d => ⟨0, -1⟩

def cellA40B42 : CellData where
  inverse := 95772728039596314367
  bounds := fun _d => ⟨0, -1⟩

def cellA40B43 : CellData where
  inverse := 95772728039596314367
  bounds := fun _d => ⟨0, -1⟩

def cellA40B44 : CellData where
  inverse := 752286662828670469621
  bounds := fun _d => ⟨0, -1⟩

def cellA40B45 : CellData where
  inverse := 752286662828670469621
  bounds := fun _d => ⟨0, -1⟩

def cellA40B46 : CellData where
  inverse := 3706599369379504168264
  bounds := fun _d => ⟨0, -1⟩

def cellA40B47 : CellData where
  inverse := 21432475608684506360122
  bounds := fun _d => ⟨0, -1⟩

def cellA40B48 : CellData where
  inverse := 74610104326599512935696
  bounds := fun _d => ⟨0, -1⟩

def cellA40B49 : CellData where
  inverse := 154376547403472022799057
  bounds := fun _d => ⟨0, -1⟩

def cellA40B50 : CellData where
  inverse := 393675876634089552389140
  bounds := fun _d => ⟨0, -1⟩

def cellA40B51 : CellData where
  inverse := 1111573864325942141159389
  bounds := fun _d => ⟨0, -1⟩

def cellA40B52 : CellData where
  inverse := 3265267827401499907470136
  bounds := fun _d => ⟨0, -1⟩

def cellA40B53 : CellData where
  inverse := 3265267827401499907470136
  bounds := fun _d => ⟨0, -1⟩

def cellA40B54 : CellData where
  inverse := 3265267827401499907470136
  bounds := fun _d => ⟨0, -1⟩

def cellA40B55 : CellData where
  inverse := 61415004830441559597860305
  bounds := fun _d => ⟨0, -1⟩

def cellA40B56 : CellData where
  inverse := 235864215839561738669030812
  bounds := fun _d => ⟨0, -1⟩

def cellA40B57 : CellData where
  inverse := 235864215839561738669030812
  bounds := fun _d => ⟨0, -1⟩

def cellA40B58 : CellData where
  inverse := 235864215839561738669030812
  bounds := fun _d => ⟨0, -1⟩

def cellA40B59 : CellData where
  inverse := 4945992913085806573590634501
  bounds := fun _d => ⟨0, -1⟩

def cellA40B60 : CellData where
  inverse := 19076379004824541078355445568
  bounds := fun _d => ⟨0, -1⟩

def cellA40B61 : CellData where
  inverse := 61467537280040744592649878769
  bounds := fun _d => ⟨0, -1⟩

def cellA40B62 : CellData where
  inverse := 61467537280040744592649878769
  bounds := fun _d => ⟨0, -1⟩

def cellA40B63 : CellData where
  inverse := 442987961756986576221299777578
  bounds := fun _d => ⟨0, -1⟩

def cellA40B64 : CellData where
  inverse := 442987961756986576221299777578
  bounds := fun _d => ⟨0, -1⟩

def cellA40B65 : CellData where
  inverse := 7310355602342011545536997956140
  bounds := fun _d => ⟨0, -1⟩

def cellA40B66 : CellData where
  inverse := 27912458524097086453484092491826
  bounds := fun _d => ⟨0, -1⟩

def cellA40B67 : CellData where
  inverse := 89718767289362311177325376098884
  bounds := fun _d => ⟨0, -1⟩

def cellA40B68 : CellData where
  inverse := 182428230437260148263087301509471
  bounds := fun _d => ⟨0, -1⟩

def rowA33 (b : ℕ) : CellData :=
  if b = 1 then cellA33B1
  else if b = 2 then cellA33B2
  else if b = 3 then cellA33B3
  else if b = 4 then cellA33B4
  else if b = 5 then cellA33B5
  else if b = 6 then cellA33B6
  else if b = 7 then cellA33B7
  else if b = 8 then cellA33B8
  else if b = 9 then cellA33B9
  else if b = 10 then cellA33B10
  else if b = 11 then cellA33B11
  else if b = 12 then cellA33B12
  else if b = 13 then cellA33B13
  else if b = 14 then cellA33B14
  else if b = 15 then cellA33B15
  else if b = 16 then cellA33B16
  else if b = 17 then cellA33B17
  else if b = 18 then cellA33B18
  else if b = 19 then cellA33B19
  else if b = 20 then cellA33B20
  else if b = 21 then cellA33B21
  else if b = 22 then cellA33B22
  else if b = 23 then cellA33B23
  else if b = 24 then cellA33B24
  else if b = 25 then cellA33B25
  else if b = 26 then cellA33B26
  else if b = 27 then cellA33B27
  else if b = 28 then cellA33B28
  else if b = 29 then cellA33B29
  else if b = 30 then cellA33B30
  else if b = 31 then cellA33B31
  else if b = 32 then cellA33B32
  else if b = 33 then cellA33B33
  else if b = 34 then cellA33B34
  else if b = 35 then cellA33B35
  else if b = 36 then cellA33B36
  else if b = 37 then cellA33B37
  else if b = 38 then cellA33B38
  else if b = 39 then cellA33B39
  else if b = 40 then cellA33B40
  else if b = 41 then cellA33B41
  else if b = 42 then cellA33B42
  else if b = 43 then cellA33B43
  else if b = 44 then cellA33B44
  else if b = 45 then cellA33B45
  else if b = 46 then cellA33B46
  else if b = 47 then cellA33B47
  else if b = 48 then cellA33B48
  else if b = 49 then cellA33B49
  else if b = 50 then cellA33B50
  else if b = 51 then cellA33B51
  else if b = 52 then cellA33B52
  else if b = 53 then cellA33B53
  else if b = 54 then cellA33B54
  else if b = 55 then cellA33B55
  else if b = 56 then cellA33B56
  else if b = 57 then cellA33B57
  else if b = 58 then cellA33B58
  else if b = 59 then cellA33B59
  else if b = 60 then cellA33B60
  else if b = 61 then cellA33B61
  else if b = 62 then cellA33B62
  else if b = 63 then cellA33B63
  else if b = 64 then cellA33B64
  else if b = 65 then cellA33B65
  else if b = 66 then cellA33B66
  else if b = 67 then cellA33B67
  else if b = 68 then cellA33B68
  else outsideCell

def rowA34 (b : ℕ) : CellData :=
  if b = 1 then cellA34B1
  else if b = 2 then cellA34B2
  else if b = 3 then cellA34B3
  else if b = 4 then cellA34B4
  else if b = 5 then cellA34B5
  else if b = 6 then cellA34B6
  else if b = 7 then cellA34B7
  else if b = 8 then cellA34B8
  else if b = 9 then cellA34B9
  else if b = 10 then cellA34B10
  else if b = 11 then cellA34B11
  else if b = 12 then cellA34B12
  else if b = 13 then cellA34B13
  else if b = 14 then cellA34B14
  else if b = 15 then cellA34B15
  else if b = 16 then cellA34B16
  else if b = 17 then cellA34B17
  else if b = 18 then cellA34B18
  else if b = 19 then cellA34B19
  else if b = 20 then cellA34B20
  else if b = 21 then cellA34B21
  else if b = 22 then cellA34B22
  else if b = 23 then cellA34B23
  else if b = 24 then cellA34B24
  else if b = 25 then cellA34B25
  else if b = 26 then cellA34B26
  else if b = 27 then cellA34B27
  else if b = 28 then cellA34B28
  else if b = 29 then cellA34B29
  else if b = 30 then cellA34B30
  else if b = 31 then cellA34B31
  else if b = 32 then cellA34B32
  else if b = 33 then cellA34B33
  else if b = 34 then cellA34B34
  else if b = 35 then cellA34B35
  else if b = 36 then cellA34B36
  else if b = 37 then cellA34B37
  else if b = 38 then cellA34B38
  else if b = 39 then cellA34B39
  else if b = 40 then cellA34B40
  else if b = 41 then cellA34B41
  else if b = 42 then cellA34B42
  else if b = 43 then cellA34B43
  else if b = 44 then cellA34B44
  else if b = 45 then cellA34B45
  else if b = 46 then cellA34B46
  else if b = 47 then cellA34B47
  else if b = 48 then cellA34B48
  else if b = 49 then cellA34B49
  else if b = 50 then cellA34B50
  else if b = 51 then cellA34B51
  else if b = 52 then cellA34B52
  else if b = 53 then cellA34B53
  else if b = 54 then cellA34B54
  else if b = 55 then cellA34B55
  else if b = 56 then cellA34B56
  else if b = 57 then cellA34B57
  else if b = 58 then cellA34B58
  else if b = 59 then cellA34B59
  else if b = 60 then cellA34B60
  else if b = 61 then cellA34B61
  else if b = 62 then cellA34B62
  else if b = 63 then cellA34B63
  else if b = 64 then cellA34B64
  else if b = 65 then cellA34B65
  else if b = 66 then cellA34B66
  else if b = 67 then cellA34B67
  else if b = 68 then cellA34B68
  else outsideCell

def rowA35 (b : ℕ) : CellData :=
  if b = 1 then cellA35B1
  else if b = 2 then cellA35B2
  else if b = 3 then cellA35B3
  else if b = 4 then cellA35B4
  else if b = 5 then cellA35B5
  else if b = 6 then cellA35B6
  else if b = 7 then cellA35B7
  else if b = 8 then cellA35B8
  else if b = 9 then cellA35B9
  else if b = 10 then cellA35B10
  else if b = 11 then cellA35B11
  else if b = 12 then cellA35B12
  else if b = 13 then cellA35B13
  else if b = 14 then cellA35B14
  else if b = 15 then cellA35B15
  else if b = 16 then cellA35B16
  else if b = 17 then cellA35B17
  else if b = 18 then cellA35B18
  else if b = 19 then cellA35B19
  else if b = 20 then cellA35B20
  else if b = 21 then cellA35B21
  else if b = 22 then cellA35B22
  else if b = 23 then cellA35B23
  else if b = 24 then cellA35B24
  else if b = 25 then cellA35B25
  else if b = 26 then cellA35B26
  else if b = 27 then cellA35B27
  else if b = 28 then cellA35B28
  else if b = 29 then cellA35B29
  else if b = 30 then cellA35B30
  else if b = 31 then cellA35B31
  else if b = 32 then cellA35B32
  else if b = 33 then cellA35B33
  else if b = 34 then cellA35B34
  else if b = 35 then cellA35B35
  else if b = 36 then cellA35B36
  else if b = 37 then cellA35B37
  else if b = 38 then cellA35B38
  else if b = 39 then cellA35B39
  else if b = 40 then cellA35B40
  else if b = 41 then cellA35B41
  else if b = 42 then cellA35B42
  else if b = 43 then cellA35B43
  else if b = 44 then cellA35B44
  else if b = 45 then cellA35B45
  else if b = 46 then cellA35B46
  else if b = 47 then cellA35B47
  else if b = 48 then cellA35B48
  else if b = 49 then cellA35B49
  else if b = 50 then cellA35B50
  else if b = 51 then cellA35B51
  else if b = 52 then cellA35B52
  else if b = 53 then cellA35B53
  else if b = 54 then cellA35B54
  else if b = 55 then cellA35B55
  else if b = 56 then cellA35B56
  else if b = 57 then cellA35B57
  else if b = 58 then cellA35B58
  else if b = 59 then cellA35B59
  else if b = 60 then cellA35B60
  else if b = 61 then cellA35B61
  else if b = 62 then cellA35B62
  else if b = 63 then cellA35B63
  else if b = 64 then cellA35B64
  else if b = 65 then cellA35B65
  else if b = 66 then cellA35B66
  else if b = 67 then cellA35B67
  else if b = 68 then cellA35B68
  else outsideCell

def rowA36 (b : ℕ) : CellData :=
  if b = 1 then cellA36B1
  else if b = 2 then cellA36B2
  else if b = 3 then cellA36B3
  else if b = 4 then cellA36B4
  else if b = 5 then cellA36B5
  else if b = 6 then cellA36B6
  else if b = 7 then cellA36B7
  else if b = 8 then cellA36B8
  else if b = 9 then cellA36B9
  else if b = 10 then cellA36B10
  else if b = 11 then cellA36B11
  else if b = 12 then cellA36B12
  else if b = 13 then cellA36B13
  else if b = 14 then cellA36B14
  else if b = 15 then cellA36B15
  else if b = 16 then cellA36B16
  else if b = 17 then cellA36B17
  else if b = 18 then cellA36B18
  else if b = 19 then cellA36B19
  else if b = 20 then cellA36B20
  else if b = 21 then cellA36B21
  else if b = 22 then cellA36B22
  else if b = 23 then cellA36B23
  else if b = 24 then cellA36B24
  else if b = 25 then cellA36B25
  else if b = 26 then cellA36B26
  else if b = 27 then cellA36B27
  else if b = 28 then cellA36B28
  else if b = 29 then cellA36B29
  else if b = 30 then cellA36B30
  else if b = 31 then cellA36B31
  else if b = 32 then cellA36B32
  else if b = 33 then cellA36B33
  else if b = 34 then cellA36B34
  else if b = 35 then cellA36B35
  else if b = 36 then cellA36B36
  else if b = 37 then cellA36B37
  else if b = 38 then cellA36B38
  else if b = 39 then cellA36B39
  else if b = 40 then cellA36B40
  else if b = 41 then cellA36B41
  else if b = 42 then cellA36B42
  else if b = 43 then cellA36B43
  else if b = 44 then cellA36B44
  else if b = 45 then cellA36B45
  else if b = 46 then cellA36B46
  else if b = 47 then cellA36B47
  else if b = 48 then cellA36B48
  else if b = 49 then cellA36B49
  else if b = 50 then cellA36B50
  else if b = 51 then cellA36B51
  else if b = 52 then cellA36B52
  else if b = 53 then cellA36B53
  else if b = 54 then cellA36B54
  else if b = 55 then cellA36B55
  else if b = 56 then cellA36B56
  else if b = 57 then cellA36B57
  else if b = 58 then cellA36B58
  else if b = 59 then cellA36B59
  else if b = 60 then cellA36B60
  else if b = 61 then cellA36B61
  else if b = 62 then cellA36B62
  else if b = 63 then cellA36B63
  else if b = 64 then cellA36B64
  else if b = 65 then cellA36B65
  else if b = 66 then cellA36B66
  else if b = 67 then cellA36B67
  else if b = 68 then cellA36B68
  else outsideCell

def rowA37 (b : ℕ) : CellData :=
  if b = 1 then cellA37B1
  else if b = 2 then cellA37B2
  else if b = 3 then cellA37B3
  else if b = 4 then cellA37B4
  else if b = 5 then cellA37B5
  else if b = 6 then cellA37B6
  else if b = 7 then cellA37B7
  else if b = 8 then cellA37B8
  else if b = 9 then cellA37B9
  else if b = 10 then cellA37B10
  else if b = 11 then cellA37B11
  else if b = 12 then cellA37B12
  else if b = 13 then cellA37B13
  else if b = 14 then cellA37B14
  else if b = 15 then cellA37B15
  else if b = 16 then cellA37B16
  else if b = 17 then cellA37B17
  else if b = 18 then cellA37B18
  else if b = 19 then cellA37B19
  else if b = 20 then cellA37B20
  else if b = 21 then cellA37B21
  else if b = 22 then cellA37B22
  else if b = 23 then cellA37B23
  else if b = 24 then cellA37B24
  else if b = 25 then cellA37B25
  else if b = 26 then cellA37B26
  else if b = 27 then cellA37B27
  else if b = 28 then cellA37B28
  else if b = 29 then cellA37B29
  else if b = 30 then cellA37B30
  else if b = 31 then cellA37B31
  else if b = 32 then cellA37B32
  else if b = 33 then cellA37B33
  else if b = 34 then cellA37B34
  else if b = 35 then cellA37B35
  else if b = 36 then cellA37B36
  else if b = 37 then cellA37B37
  else if b = 38 then cellA37B38
  else if b = 39 then cellA37B39
  else if b = 40 then cellA37B40
  else if b = 41 then cellA37B41
  else if b = 42 then cellA37B42
  else if b = 43 then cellA37B43
  else if b = 44 then cellA37B44
  else if b = 45 then cellA37B45
  else if b = 46 then cellA37B46
  else if b = 47 then cellA37B47
  else if b = 48 then cellA37B48
  else if b = 49 then cellA37B49
  else if b = 50 then cellA37B50
  else if b = 51 then cellA37B51
  else if b = 52 then cellA37B52
  else if b = 53 then cellA37B53
  else if b = 54 then cellA37B54
  else if b = 55 then cellA37B55
  else if b = 56 then cellA37B56
  else if b = 57 then cellA37B57
  else if b = 58 then cellA37B58
  else if b = 59 then cellA37B59
  else if b = 60 then cellA37B60
  else if b = 61 then cellA37B61
  else if b = 62 then cellA37B62
  else if b = 63 then cellA37B63
  else if b = 64 then cellA37B64
  else if b = 65 then cellA37B65
  else if b = 66 then cellA37B66
  else if b = 67 then cellA37B67
  else if b = 68 then cellA37B68
  else outsideCell

def rowA38 (b : ℕ) : CellData :=
  if b = 1 then cellA38B1
  else if b = 2 then cellA38B2
  else if b = 3 then cellA38B3
  else if b = 4 then cellA38B4
  else if b = 5 then cellA38B5
  else if b = 6 then cellA38B6
  else if b = 7 then cellA38B7
  else if b = 8 then cellA38B8
  else if b = 9 then cellA38B9
  else if b = 10 then cellA38B10
  else if b = 11 then cellA38B11
  else if b = 12 then cellA38B12
  else if b = 13 then cellA38B13
  else if b = 14 then cellA38B14
  else if b = 15 then cellA38B15
  else if b = 16 then cellA38B16
  else if b = 17 then cellA38B17
  else if b = 18 then cellA38B18
  else if b = 19 then cellA38B19
  else if b = 20 then cellA38B20
  else if b = 21 then cellA38B21
  else if b = 22 then cellA38B22
  else if b = 23 then cellA38B23
  else if b = 24 then cellA38B24
  else if b = 25 then cellA38B25
  else if b = 26 then cellA38B26
  else if b = 27 then cellA38B27
  else if b = 28 then cellA38B28
  else if b = 29 then cellA38B29
  else if b = 30 then cellA38B30
  else if b = 31 then cellA38B31
  else if b = 32 then cellA38B32
  else if b = 33 then cellA38B33
  else if b = 34 then cellA38B34
  else if b = 35 then cellA38B35
  else if b = 36 then cellA38B36
  else if b = 37 then cellA38B37
  else if b = 38 then cellA38B38
  else if b = 39 then cellA38B39
  else if b = 40 then cellA38B40
  else if b = 41 then cellA38B41
  else if b = 42 then cellA38B42
  else if b = 43 then cellA38B43
  else if b = 44 then cellA38B44
  else if b = 45 then cellA38B45
  else if b = 46 then cellA38B46
  else if b = 47 then cellA38B47
  else if b = 48 then cellA38B48
  else if b = 49 then cellA38B49
  else if b = 50 then cellA38B50
  else if b = 51 then cellA38B51
  else if b = 52 then cellA38B52
  else if b = 53 then cellA38B53
  else if b = 54 then cellA38B54
  else if b = 55 then cellA38B55
  else if b = 56 then cellA38B56
  else if b = 57 then cellA38B57
  else if b = 58 then cellA38B58
  else if b = 59 then cellA38B59
  else if b = 60 then cellA38B60
  else if b = 61 then cellA38B61
  else if b = 62 then cellA38B62
  else if b = 63 then cellA38B63
  else if b = 64 then cellA38B64
  else if b = 65 then cellA38B65
  else if b = 66 then cellA38B66
  else if b = 67 then cellA38B67
  else if b = 68 then cellA38B68
  else outsideCell

def rowA39 (b : ℕ) : CellData :=
  if b = 1 then cellA39B1
  else if b = 2 then cellA39B2
  else if b = 3 then cellA39B3
  else if b = 4 then cellA39B4
  else if b = 5 then cellA39B5
  else if b = 6 then cellA39B6
  else if b = 7 then cellA39B7
  else if b = 8 then cellA39B8
  else if b = 9 then cellA39B9
  else if b = 10 then cellA39B10
  else if b = 11 then cellA39B11
  else if b = 12 then cellA39B12
  else if b = 13 then cellA39B13
  else if b = 14 then cellA39B14
  else if b = 15 then cellA39B15
  else if b = 16 then cellA39B16
  else if b = 17 then cellA39B17
  else if b = 18 then cellA39B18
  else if b = 19 then cellA39B19
  else if b = 20 then cellA39B20
  else if b = 21 then cellA39B21
  else if b = 22 then cellA39B22
  else if b = 23 then cellA39B23
  else if b = 24 then cellA39B24
  else if b = 25 then cellA39B25
  else if b = 26 then cellA39B26
  else if b = 27 then cellA39B27
  else if b = 28 then cellA39B28
  else if b = 29 then cellA39B29
  else if b = 30 then cellA39B30
  else if b = 31 then cellA39B31
  else if b = 32 then cellA39B32
  else if b = 33 then cellA39B33
  else if b = 34 then cellA39B34
  else if b = 35 then cellA39B35
  else if b = 36 then cellA39B36
  else if b = 37 then cellA39B37
  else if b = 38 then cellA39B38
  else if b = 39 then cellA39B39
  else if b = 40 then cellA39B40
  else if b = 41 then cellA39B41
  else if b = 42 then cellA39B42
  else if b = 43 then cellA39B43
  else if b = 44 then cellA39B44
  else if b = 45 then cellA39B45
  else if b = 46 then cellA39B46
  else if b = 47 then cellA39B47
  else if b = 48 then cellA39B48
  else if b = 49 then cellA39B49
  else if b = 50 then cellA39B50
  else if b = 51 then cellA39B51
  else if b = 52 then cellA39B52
  else if b = 53 then cellA39B53
  else if b = 54 then cellA39B54
  else if b = 55 then cellA39B55
  else if b = 56 then cellA39B56
  else if b = 57 then cellA39B57
  else if b = 58 then cellA39B58
  else if b = 59 then cellA39B59
  else if b = 60 then cellA39B60
  else if b = 61 then cellA39B61
  else if b = 62 then cellA39B62
  else if b = 63 then cellA39B63
  else if b = 64 then cellA39B64
  else if b = 65 then cellA39B65
  else if b = 66 then cellA39B66
  else if b = 67 then cellA39B67
  else if b = 68 then cellA39B68
  else outsideCell

def rowA40 (b : ℕ) : CellData :=
  if b = 1 then cellA40B1
  else if b = 2 then cellA40B2
  else if b = 3 then cellA40B3
  else if b = 4 then cellA40B4
  else if b = 5 then cellA40B5
  else if b = 6 then cellA40B6
  else if b = 7 then cellA40B7
  else if b = 8 then cellA40B8
  else if b = 9 then cellA40B9
  else if b = 10 then cellA40B10
  else if b = 11 then cellA40B11
  else if b = 12 then cellA40B12
  else if b = 13 then cellA40B13
  else if b = 14 then cellA40B14
  else if b = 15 then cellA40B15
  else if b = 16 then cellA40B16
  else if b = 17 then cellA40B17
  else if b = 18 then cellA40B18
  else if b = 19 then cellA40B19
  else if b = 20 then cellA40B20
  else if b = 21 then cellA40B21
  else if b = 22 then cellA40B22
  else if b = 23 then cellA40B23
  else if b = 24 then cellA40B24
  else if b = 25 then cellA40B25
  else if b = 26 then cellA40B26
  else if b = 27 then cellA40B27
  else if b = 28 then cellA40B28
  else if b = 29 then cellA40B29
  else if b = 30 then cellA40B30
  else if b = 31 then cellA40B31
  else if b = 32 then cellA40B32
  else if b = 33 then cellA40B33
  else if b = 34 then cellA40B34
  else if b = 35 then cellA40B35
  else if b = 36 then cellA40B36
  else if b = 37 then cellA40B37
  else if b = 38 then cellA40B38
  else if b = 39 then cellA40B39
  else if b = 40 then cellA40B40
  else if b = 41 then cellA40B41
  else if b = 42 then cellA40B42
  else if b = 43 then cellA40B43
  else if b = 44 then cellA40B44
  else if b = 45 then cellA40B45
  else if b = 46 then cellA40B46
  else if b = 47 then cellA40B47
  else if b = 48 then cellA40B48
  else if b = 49 then cellA40B49
  else if b = 50 then cellA40B50
  else if b = 51 then cellA40B51
  else if b = 52 then cellA40B52
  else if b = 53 then cellA40B53
  else if b = 54 then cellA40B54
  else if b = 55 then cellA40B55
  else if b = 56 then cellA40B56
  else if b = 57 then cellA40B57
  else if b = 58 then cellA40B58
  else if b = 59 then cellA40B59
  else if b = 60 then cellA40B60
  else if b = 61 then cellA40B61
  else if b = 62 then cellA40B62
  else if b = 63 then cellA40B63
  else if b = 64 then cellA40B64
  else if b = 65 then cellA40B65
  else if b = 66 then cellA40B66
  else if b = 67 then cellA40B67
  else if b = 68 then cellA40B68
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 33 then rowA33 b
  else if a = 34 then rowA34 b
  else if a = 35 then rowA35 b
  else if a = 36 then rowA36 b
  else if a = 37 then rowA37 b
  else if a = 38 then rowA38 b
  else if a = 39 then rowA39 b
  else if a = 40 then rowA40 b
  else outsideCell

theorem chunk_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      33 8 1 68 chunkData = true := by
  decide +kernel

end Math.B699.CRTStage0Pair23.Chunk004
#print axioms Math.B699.CRTStage0Pair23.Chunk004.chunk_check
