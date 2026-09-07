import research.tasks.«B686-Four».round5.worker.ContactTail

set_option maxRecDepth 200000
set_option maxHeartbeats 12000000
namespace B686Round6AHeight
def auxiliary1235 (z d : ℤ) : ℤ :=
  (696100165617781800 : ℤ) * z ^ 0 * d ^ 3 + (2709750696211685700 : ℤ) * z ^ 0 * d ^ 4 + (9706709740858246620 : ℤ) * z ^ 0 * d ^ 5 + (17636919966593601480 : ℤ) * z ^ 0 * d ^ 6 + (28757725159638329820 : ℤ) * z ^ 0 * d ^ 7 + (22429240061746277520 : ℤ) * z ^ 0 * d ^ 8 + (14306215103737340040 : ℤ) * z ^ 0 * d ^ 9 + (-8766537296147494560 : ℤ) * z ^ 0 * d ^ 10 + (-7288489894869250020 : ℤ) * z ^ 0 * d ^ 11 + (-6321529963146391500 : ℤ) * z ^ 0 * d ^ 12 + (2109359927254622300 : ℤ) * z ^ 0 * d ^ 13 + (200136998853169400 : ℤ) * z ^ 0 * d ^ 14 + (-50077071238884000 : ℤ) * z ^ 0 * d ^ 15 + (250596059622401448 : ℤ) * z ^ 1 * d ^ 0 + (975510250636206852 : ℤ) * z ^ 1 * d ^ 1 + (4006745228603656188 : ℤ) * z ^ 1 * d ^ 2 + (8111634311846236608 : ℤ) * z ^ 1 * d ^ 3 + (16462369234542823416 : ℤ) * z ^ 1 * d ^ 4 + (17394548698086051096 : ℤ) * z ^ 1 * d ^ 5 + (19034214073436841732 : ℤ) * z ^ 1 * d ^ 6 + (1647812625259600080 : ℤ) * z ^ 1 * d ^ 7 + (-2997793189172064780 : ℤ) * z ^ 1 * d ^ 8 + (-16294554946978938000 : ℤ) * z ^ 1 * d ^ 9 + (-5168373277903133940 : ℤ) * z ^ 1 * d ^ 10 + (-4159143048656488320 : ℤ) * z ^ 1 * d ^ 11 + (2053731732441683800 : ℤ) * z ^ 1 * d ^ 12 + (46349896082464900 : ℤ) * z ^ 1 * d ^ 13 + (-26250956169504000 : ℤ) * z ^ 1 * d ^ 14 + (-83532019874133816 : ℤ) * z ^ 2 * d ^ 0 + (-325170083545402284 : ℤ) * z ^ 2 * d ^ 1 + (-1304643957729317316 : ℤ) * z ^ 2 * d ^ 2 + (-2686570690134564216 : ℤ) * z ^ 2 * d ^ 3 + (-5521811674536316512 : ℤ) * z ^ 2 * d ^ 4 + (-6715846860404122152 : ℤ) * z ^ 2 * d ^ 5 + (-8640971107182335484 : ℤ) * z ^ 2 * d ^ 6 + (-5779583173096122240 : ℤ) * z ^ 2 * d ^ 7 + (-5176820215019156580 : ℤ) * z ^ 2 * d ^ 8 + (-974061997461116280 : ℤ) * z ^ 2 * d ^ 9 + (-901854639913474740 : ℤ) * z ^ 2 * d ^ 10 + (601139205984824160 : ℤ) * z ^ 2 * d ^ 11 + (-14848228970053200 : ℤ) * z ^ 2 * d ^ 12 + (136818260497500 : ℤ) * z ^ 2 * d ^ 13 + (-6961001656177818 : ℤ) * z ^ 3 * d ^ 0 + (-27097506962116857 : ℤ) * z ^ 3 * d ^ 1 + (-104853106668455433 : ℤ) * z ^ 3 * d ^ 2 + (-215272092213906003 : ℤ) * z ^ 3 * d ^ 3 + (-414146530863136476 : ℤ) * z ^ 3 * d ^ 4 + (-488788986983615811 : ℤ) * z ^ 3 * d ^ 5 + (-528129049845754962 : ℤ) * z ^ 3 * d ^ 6 + (-300941399568915495 : ℤ) * z ^ 3 * d ^ 7 + (-137680359211062405 : ℤ) * z ^ 3 * d ^ 8 + (16336297090585620 : ℤ) * z ^ 3 * d ^ 9 + (30917298390882620 : ℤ) * z ^ 3 * d ^ 10 + (210267534014990 : ℤ) * z ^ 3 * d ^ 11 + (1425541708515200 : ℤ) * z ^ 3 * d ^ 12 + (2320333885392606 : ℤ) * z ^ 4 * d ^ 0 + (9032502320705619 : ℤ) * z ^ 4 * d ^ 1 + (34091652635636031 : ℤ) * z ^ 4 * d ^ 2 + (66979687973884731 : ℤ) * z ^ 4 * d ^ 3 + (123072025259717532 : ℤ) * z ^ 4 * d ^ 4 + (129446170368522957 : ℤ) * z ^ 4 * d ^ 5 + (128751456311673894 : ℤ) * z ^ 4 * d ^ 6 + (47093622763791195 : ℤ) * z ^ 4 * d ^ 7 + (19185558540638325 : ℤ) * z ^ 4 * d ^ 8 + (-16130212712425760 : ℤ) * z ^ 4 * d ^ 9 + (67003083441130 : ℤ) * z ^ 4 * d ^ 10 + (-117298287059800 : ℤ) * z ^ 4 * d ^ 11

def auxiliary1345 (z d : ℤ) : ℤ :=
  (370378326593476800 : ℤ) * z ^ 0 * d ^ 3 + (-1441724770163036700 : ℤ) * z ^ 0 * d ^ 4 + (5164446593961103320 : ℤ) * z ^ 0 * d ^ 5 + (-9383306717920649580 : ℤ) * z ^ 0 * d ^ 6 + (15299758638205504200 : ℤ) * z ^ 0 * d ^ 7 + (-11931747244135650900 : ℤ) * z ^ 0 * d ^ 8 + (7610175285639158340 : ℤ) * z ^ 0 * d ^ 9 + (4665514063846811580 : ℤ) * z ^ 0 * d ^ 10 + (-3877770148280463240 : ℤ) * z ^ 0 * d ^ 11 + (3363113304818255520 : ℤ) * z ^ 0 * d ^ 12 + (1122595670798375160 : ℤ) * z ^ 0 * d ^ 13 + (-106594944162246220 : ℤ) * z ^ 0 * d ^ 14 + (-26632927916227220 : ℤ) * z ^ 0 * d ^ 15 + (133336197573651648 : ℤ) * z ^ 1 * d ^ 0 + (-519020917258693212 : ℤ) * z ^ 1 * d ^ 1 + (2131799222198796120 : ℤ) * z ^ 1 * d ^ 2 + (-4315640407093603260 : ℤ) * z ^ 1 * d ^ 3 + (8758509296496665076 : ℤ) * z ^ 1 * d ^ 4 + (-9253844943642951408 : ℤ) * z ^ 1 * d ^ 5 + (10126195252474329504 : ℤ) * z ^ 1 * d ^ 6 + (-875316965043250332 : ℤ) * z ^ 1 * d ^ 7 + (-1595345762182791996 : ℤ) * z ^ 1 * d ^ 8 + (8669684464733661912 : ℤ) * z ^ 1 * d ^ 9 + (-2749082858108762328 : ℤ) * z ^ 1 * d ^ 10 + (2212431983895257892 : ℤ) * z ^ 1 * d ^ 11 + (1093005006356435400 : ℤ) * z ^ 1 * d ^ 12 + (-24748335450707420 : ℤ) * z ^ 1 * d ^ 13 + (-13964132842091600 : ℤ) * z ^ 1 * d ^ 14 + (44445399191217216 : ℤ) * z ^ 2 * d ^ 0 + (-173006972419564404 : ℤ) * z ^ 2 * d ^ 1 + (694138481773221960 : ℤ) * z ^ 2 * d ^ 2 + (-1429341009111877500 : ℤ) * z ^ 2 * d ^ 3 + (2937784154542242012 : ℤ) * z ^ 2 * d ^ 4 + (-3572875892083868136 : ℤ) * z ^ 2 * d ^ 5 + (4597082207276549688 : ℤ) * z ^ 2 * d ^ 6 + (-3074484023928246564 : ℤ) * z ^ 2 * d ^ 7 + (2753929047777842268 : ℤ) * z ^ 2 * d ^ 8 + (-517848557528956536 : ℤ) * z ^ 2 * d ^ 9 + (479660073018466464 : ℤ) * z ^ 2 * d ^ 10 + (319934947101416004 : ℤ) * z ^ 2 * d ^ 11 + (7880160630636720 : ℤ) * z ^ 2 * d ^ 12 + (72335806602860 : ℤ) * z ^ 2 * d ^ 13 + (-3703783265934768 : ℤ) * z ^ 3 * d ^ 0 + (14417247701630367 : ℤ) * z ^ 3 * d ^ 1 + (-55787216111138070 : ℤ) * z ^ 3 * d ^ 2 + (114531597652801410 : ℤ) * z ^ 3 * d ^ 3 + (-220338297077295636 : ℤ) * z ^ 3 * d ^ 4 + (260038274675383503 : ℤ) * z ^ 3 * d ^ 5 + (-280963666352321469 : ℤ) * z ^ 3 * d ^ 6 + (160081813362208212 : ℤ) * z ^ 3 * d ^ 7 + (-73228234100881779 : ℤ) * z ^ 3 * d ^ 8 + (-8705960230018032 : ℤ) * z ^ 3 * d ^ 9 + (16455089369135943 : ℤ) * z ^ 3 * d ^ 10 + (-112024573930957 : ℤ) * z ^ 3 * d ^ 11 + (758382491891860 : ℤ) * z ^ 3 * d ^ 12 + (-1234594421978256 : ℤ) * z ^ 4 * d ^ 0 + (4805749233876789 : ℤ) * z ^ 4 * d ^ 1 + (-18138481510387410 : ℤ) * z ^ 4 * d ^ 2 + (35635196771733600 : ℤ) * z ^ 4 * d ^ 3 + (-65477756800646982 : ℤ) * z ^ 4 * d ^ 4 + (68865024601736001 : ℤ) * z ^ 4 * d ^ 5 + (-68494757235494193 : ℤ) * z ^ 4 * d ^ 6 + (25047316222783524 : ℤ) * z ^ 4 * d ^ 7 + (-10202967134563293 : ℤ) * z ^ 4 * d ^ 8 + (-8584743671664054 : ℤ) * z ^ 4 * d ^ 9 + (-35177583742559 : ℤ) * z ^ 4 * d ^ 10 + (-62399554553059 : ℤ) * z ^ 4 * d ^ 11

def auxiliary1234 (z d : ℤ) : ℤ :=
  (253259890379649907200 : ℤ) * z ^ 0 * d ^ 3 + (1812685948980042355200 : ℤ) * z ^ 0 * d ^ 4 + (6552474988140697870080 : ℤ) * z ^ 0 * d ^ 5 + (14425239624363200177280 : ℤ) * z ^ 0 * d ^ 6 + (20063956567278380073120 : ℤ) * z ^ 0 * d ^ 7 + (15857088304713571026720 : ℤ) * z ^ 0 * d ^ 8 + (2761895290851522531360 : ℤ) * z ^ 0 * d ^ 9 + (-7327230366440041375320 : ℤ) * z ^ 0 * d ^ 10 + (-6509543350338456219360 : ℤ) * z ^ 0 * d ^ 11 + (-1028411781208443999360 : ℤ) * z ^ 0 * d ^ 12 + (880276569123285846225 : ℤ) * z ^ 0 * d ^ 13 + (211955020139305705115 : ℤ) * z ^ 0 * d ^ 14 + (15791093755593831250 : ℤ) * z ^ 0 * d ^ 15 + (4187124807971662900 : ℤ) * z ^ 0 * d ^ 16 + (502663440868229800 : ℤ) * z ^ 0 * d ^ 17 + (91173560536673966592 : ℤ) * z ^ 1 * d ^ 0 + (652566941632815247872 : ℤ) * z ^ 1 * d ^ 1 + (2545290275050073564928 : ℤ) * z ^ 1 * d ^ 2 + (6485013141490121586048 : ℤ) * z ^ 1 * d ^ 3 + (11695761187338597434784 : ℤ) * z ^ 1 * d ^ 4 + (14911077794858777585952 : ℤ) * z ^ 1 * d ^ 5 + (12220227870656021008416 : ℤ) * z ^ 1 * d ^ 6 + (3181720585435953768216 : ℤ) * z ^ 1 * d ^ 7 + (-6646507591618221708240 : ℤ) * z ^ 1 * d ^ 8 + (-9808113151695260019024 : ℤ) * z ^ 1 * d ^ 9 + (-5338651312640919780135 : ℤ) * z ^ 1 * d ^ 10 + (-48005983649963391525 : ℤ) * z ^ 1 * d ^ 11 + (1052204838169390399830 : ℤ) * z ^ 1 * d ^ 12 + (178261767041315521780 : ℤ) * z ^ 1 * d ^ 13 + (9162928500337696520 : ℤ) * z ^ 1 * d ^ 14 + (2063954713690020200 : ℤ) * z ^ 1 * d ^ 15 + (-14730234941225100 : ℤ) * z ^ 1 * d ^ 16 + (-15195593422778994432 : ℤ) * z ^ 2 * d ^ 0 + (-108761156938802541312 : ℤ) * z ^ 2 * d ^ 1 + (-417180048886688652288 : ℤ) * z ^ 2 * d ^ 2 + (-1094970608197429943808 : ℤ) * z ^ 2 * d ^ 3 + (-2214326608178286965904 : ℤ) * z ^ 2 * d ^ 4 + (-3676147545548566343952 : ℤ) * z ^ 2 * d ^ 5 + (-4991525973971459948016 : ℤ) * z ^ 2 * d ^ 6 + (-5192934694770737261376 : ℤ) * z ^ 2 * d ^ 7 + (-3589238396545708111920 : ℤ) * z ^ 2 * d ^ 8 + (-1092100020387280850376 : ℤ) * z ^ 2 * d ^ 9 + (392593272576050483370 : ℤ) * z ^ 2 * d ^ 10 + (374894568115120168545 : ℤ) * z ^ 2 * d ^ 11 + (36683129246587928385 : ℤ) * z ^ 2 * d ^ 12 + (82185416781393600 : ℤ) * z ^ 2 * d ^ 13 + (-200061512207308355 : ℤ) * z ^ 2 * d ^ 14 + (-60803705702956650 : ℤ) * z ^ 2 * d ^ 15 + (-10130395615185996288 : ℤ) * z ^ 3 * d ^ 0 + (-72507437959201694208 : ℤ) * z ^ 3 * d ^ 1 + (-275306033809129658112 : ℤ) * z ^ 3 * d ^ 2 + (-660594471791354232192 : ℤ) * z ^ 3 * d ^ 3 + (-1077614466924253270176 : ℤ) * z ^ 3 * d ^ 4 + (-1186588982180843885088 : ℤ) * z ^ 3 * d ^ 5 + (-822282029323742630304 : ℤ) * z ^ 3 * d ^ 6 + (-259938243806693744664 : ℤ) * z ^ 3 * d ^ 7 + (67751953223291554320 : ℤ) * z ^ 3 * d ^ 8 + (84393004250850871536 : ℤ) * z ^ 3 * d ^ 9 + (17285820918103752495 : ℤ) * z ^ 3 * d ^ 10 + (-1851533049857219875 : ℤ) * z ^ 3 * d ^ 11 + (-306574748673634250 : ℤ) * z ^ 3 * d ^ 12 + (-68645128863193880 : ℤ) * z ^ 3 * d ^ 13 + (11717992803518440 : ℤ) * z ^ 3 * d ^ 14 + (1688399269197666048 : ℤ) * z ^ 4 * d ^ 0 + (12084572993200282368 : ℤ) * z ^ 4 * d ^ 1 + (45102672639856023552 : ℤ) * z ^ 4 * d ^ 2 + (105416312962539128832 : ℤ) * z ^ 4 * d ^ 3 + (164871865158196989456 : ℤ) * z ^ 4 * d ^ 4 + (169893948644580236688 : ℤ) * z ^ 4 * d ^ 5 + (104009527350859693104 : ℤ) * z ^ 4 * d ^ 6 + (21534934708875825504 : ℤ) * z ^ 4 * d ^ 7 + (-14958949934193306480 : ℤ) * z ^ 4 * d ^ 8 + (-9342960861024606936 : ℤ) * z ^ 4 * d ^ 9 + (-645202297580335010 : ℤ) * z ^ 4 * d ^ 10 + (16669529120214695 : ℤ) * z ^ 4 * d ^ 11 + (6684123843665215 : ℤ) * z ^ 4 * d ^ 12 + (-609379057248465 : ℤ) * z ^ 4 * d ^ 13

def auxiliary2345 (z d : ℤ) : ℤ :=
  (253259890379649907200 : ℤ) * z ^ 0 * d ^ 3 + (-1812685948980042355200 : ℤ) * z ^ 0 * d ^ 4 + (6552474988140697870080 : ℤ) * z ^ 0 * d ^ 5 + (-14425239624363200177280 : ℤ) * z ^ 0 * d ^ 6 + (20063956567278380073120 : ℤ) * z ^ 0 * d ^ 7 + (-15857088304713571026720 : ℤ) * z ^ 0 * d ^ 8 + (2761895290851522531360 : ℤ) * z ^ 0 * d ^ 9 + (7327230366440041375320 : ℤ) * z ^ 0 * d ^ 10 + (-6509543350338456219360 : ℤ) * z ^ 0 * d ^ 11 + (1028411781208443999360 : ℤ) * z ^ 0 * d ^ 12 + (880276569123285846225 : ℤ) * z ^ 0 * d ^ 13 + (-211955020139305705115 : ℤ) * z ^ 0 * d ^ 14 + (15791093755593831250 : ℤ) * z ^ 0 * d ^ 15 + (-4187124807971662900 : ℤ) * z ^ 0 * d ^ 16 + (502663440868229800 : ℤ) * z ^ 0 * d ^ 17 + (91173560536673966592 : ℤ) * z ^ 1 * d ^ 0 + (-652566941632815247872 : ℤ) * z ^ 1 * d ^ 1 + (2545290275050073564928 : ℤ) * z ^ 1 * d ^ 2 + (-6485013141490121586048 : ℤ) * z ^ 1 * d ^ 3 + (11695761187338597434784 : ℤ) * z ^ 1 * d ^ 4 + (-14911077794858777585952 : ℤ) * z ^ 1 * d ^ 5 + (12220227870656021008416 : ℤ) * z ^ 1 * d ^ 6 + (-3181720585435953768216 : ℤ) * z ^ 1 * d ^ 7 + (-6646507591618221708240 : ℤ) * z ^ 1 * d ^ 8 + (9808113151695260019024 : ℤ) * z ^ 1 * d ^ 9 + (-5338651312640919780135 : ℤ) * z ^ 1 * d ^ 10 + (48005983649963391525 : ℤ) * z ^ 1 * d ^ 11 + (1052204838169390399830 : ℤ) * z ^ 1 * d ^ 12 + (-178261767041315521780 : ℤ) * z ^ 1 * d ^ 13 + (9162928500337696520 : ℤ) * z ^ 1 * d ^ 14 + (-2063954713690020200 : ℤ) * z ^ 1 * d ^ 15 + (-14730234941225100 : ℤ) * z ^ 1 * d ^ 16 + (15195593422778994432 : ℤ) * z ^ 2 * d ^ 0 + (-108761156938802541312 : ℤ) * z ^ 2 * d ^ 1 + (417180048886688652288 : ℤ) * z ^ 2 * d ^ 2 + (-1094970608197429943808 : ℤ) * z ^ 2 * d ^ 3 + (2214326608178286965904 : ℤ) * z ^ 2 * d ^ 4 + (-3676147545548566343952 : ℤ) * z ^ 2 * d ^ 5 + (4991525973971459948016 : ℤ) * z ^ 2 * d ^ 6 + (-5192934694770737261376 : ℤ) * z ^ 2 * d ^ 7 + (3589238396545708111920 : ℤ) * z ^ 2 * d ^ 8 + (-1092100020387280850376 : ℤ) * z ^ 2 * d ^ 9 + (-392593272576050483370 : ℤ) * z ^ 2 * d ^ 10 + (374894568115120168545 : ℤ) * z ^ 2 * d ^ 11 + (-36683129246587928385 : ℤ) * z ^ 2 * d ^ 12 + (82185416781393600 : ℤ) * z ^ 2 * d ^ 13 + (200061512207308355 : ℤ) * z ^ 2 * d ^ 14 + (-60803705702956650 : ℤ) * z ^ 2 * d ^ 15 + (-10130395615185996288 : ℤ) * z ^ 3 * d ^ 0 + (72507437959201694208 : ℤ) * z ^ 3 * d ^ 1 + (-275306033809129658112 : ℤ) * z ^ 3 * d ^ 2 + (660594471791354232192 : ℤ) * z ^ 3 * d ^ 3 + (-1077614466924253270176 : ℤ) * z ^ 3 * d ^ 4 + (1186588982180843885088 : ℤ) * z ^ 3 * d ^ 5 + (-822282029323742630304 : ℤ) * z ^ 3 * d ^ 6 + (259938243806693744664 : ℤ) * z ^ 3 * d ^ 7 + (67751953223291554320 : ℤ) * z ^ 3 * d ^ 8 + (-84393004250850871536 : ℤ) * z ^ 3 * d ^ 9 + (17285820918103752495 : ℤ) * z ^ 3 * d ^ 10 + (1851533049857219875 : ℤ) * z ^ 3 * d ^ 11 + (-306574748673634250 : ℤ) * z ^ 3 * d ^ 12 + (68645128863193880 : ℤ) * z ^ 3 * d ^ 13 + (11717992803518440 : ℤ) * z ^ 3 * d ^ 14 + (-1688399269197666048 : ℤ) * z ^ 4 * d ^ 0 + (12084572993200282368 : ℤ) * z ^ 4 * d ^ 1 + (-45102672639856023552 : ℤ) * z ^ 4 * d ^ 2 + (105416312962539128832 : ℤ) * z ^ 4 * d ^ 3 + (-164871865158196989456 : ℤ) * z ^ 4 * d ^ 4 + (169893948644580236688 : ℤ) * z ^ 4 * d ^ 5 + (-104009527350859693104 : ℤ) * z ^ 4 * d ^ 6 + (21534934708875825504 : ℤ) * z ^ 4 * d ^ 7 + (14958949934193306480 : ℤ) * z ^ 4 * d ^ 8 + (-9342960861024606936 : ℤ) * z ^ 4 * d ^ 9 + (645202297580335010 : ℤ) * z ^ 4 * d ^ 10 + (16669529120214695 : ℤ) * z ^ 4 * d ^ 11 + (-6684123843665215 : ℤ) * z ^ 4 * d ^ 12 + (-609379057248465 : ℤ) * z ^ 4 * d ^ 13


theorem high_offset_monomial_bounds (w d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 0 ≤ w) (hu : w ≤ 3 * d) :
    0 ≤ w ^ a * d ^ b ∧ w ^ a * d ^ b ≤ 3 ^ a * d ^ (a + b) := by
  have hw := pow_le_pow_left₀ hl hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have ht := mul_le_mul_of_nonneg_right hw hb
  simp only [mul_pow, pow_add] at ht ⊢
  exact ⟨mul_nonneg (pow_nonneg hl a) hb, by nlinarith only [ht]⟩

def fourPart1235_0 (z d : ℤ) : ℤ :=
  0

theorem fourPart1235_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ fourPart1235_0 z d ∧ fourPart1235_0 z d ≤ 0 * d ^ 0 := by
  norm_num [fourPart1235_0]

def fourPart1235_1 (z d : ℤ) : ℤ :=
  (250596059622401448 : ℤ) * z ^ 1 * d ^ 0

theorem fourPart1235_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    2102360280663682094 * d ^ 1 ≤ fourPart1235_1 z d ∧ fourPart1235_1 z d ≤ 2102360355842499982 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * fourPart1235_1 z d =
      (21023602806636820947872376000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (250596059622401448000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, fourPart1235_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def fourPart1235_2 (z d : ℤ) : ℤ :=
  (975510250636206852 : ℤ) * z ^ 1 * d ^ 1 + (-83532019874133816 : ℤ) * z ^ 2 * d ^ 0

theorem fourPart1235_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    2304775754467519508 * d ^ 2 ≤ fourPart1235_2 z d ∧ fourPart1235_2 z d ≤ 2304775882286507969 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * fourPart1235_2 z d =
      (23047758822865079685389326041549600000000000000 : ℤ) * w ^ 0 * d ^ 2 + (-426063269806247877858158400000000000000 : ℤ) * w ^ 1 * d ^ 1 + (-8353201987413381600000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, fourPart1235_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def fourPart1235_3 (z d : ℤ) : ℤ :=
  (696100165617781800 : ℤ) * z ^ 0 * d ^ 3 + (4006745228603656188 : ℤ) * z ^ 1 * d ^ 2 + (-325170083545402284 : ℤ) * z ^ 2 * d ^ 1 + (-6961001656177818 : ℤ) * z ^ 3 * d ^ 0

theorem fourPart1235_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    7313829325829015785 * d ^ 3 ≤ fourPart1235_3 z d ∧ fourPart1235_3 z d ≤ 7313830201542749524 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * fourPart1235_3 z d =
      (73138302015427495230822433932941668517460000000 : ℤ) * w ^ 0 * d ^ 3 + (-2919045629014302423124741548961260000000 : ℤ) * w ^ 1 * d ^ 2 + (-50036677360070912523226980000000 : ℤ) * w ^ 2 * d ^ 1 + (-69610016561778180000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, fourPart1235_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def fourPart1235_4 (z d : ℤ) : ℤ :=
  (2709750696211685700 : ℤ) * z ^ 0 * d ^ 4 + (8111634311846236608 : ℤ) * z ^ 1 * d ^ 3 + (-1304643957729317316 : ℤ) * z ^ 2 * d ^ 2 + (-27097506962116857 : ℤ) * z ^ 3 * d ^ 1 + (2320333885392606 : ℤ) * z ^ 4 * d ^ 0

theorem fourPart1235_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -25568543640358341530 * d ^ 4 ≤ fourPart1235_4 z d ∧ fourPart1235_4 z d ≤ -25568539434342935422 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * fourPart1235_4 z d =
      (-255685394343429354227185793472165564106200183234 : ℤ) * w ^ 0 * d ^ 4 + (-14020051051658014938411202748851825802328 : ℤ) * w ^ 1 * d ^ 3 + (-100677465069922752864199106735916 : ℤ) * w ^ 2 * d ^ 2 + (507676886180195168810088 : ℤ) * w ^ 3 * d ^ 1 + (2320333885392606 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, fourPart1235_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_5 (z d : ℤ) : ℤ :=
  (9706709740858246620 : ℤ) * z ^ 0 * d ^ 5 + (16462369234542823416 : ℤ) * z ^ 1 * d ^ 4 + (-2686570690134564216 : ℤ) * z ^ 2 * d ^ 3 + (-104853106668455433 : ℤ) * z ^ 3 * d ^ 2 + (9032502320705619 : ℤ) * z ^ 4 * d ^ 1

theorem fourPart1235_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -58439545933205463907 * d ^ 5 ≤ fourPart1235_5 z d ∧ fourPart1235_5 z d ≤ -58439537106884391182 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * fourPart1235_5 z d =
      (-584395371068843911823062075473376283786567132541 : ℤ) * w ^ 0 * d ^ 5 + (-29421069789065685440330332353879633078972 : ℤ) * w ^ 1 * d ^ 4 + (-151115640801953751935801474303934 : ℤ) * w ^ 2 * d ^ 3 + (1982573914402146923842212 : ℤ) * w ^ 3 * d ^ 2 + (9032502320705619 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, fourPart1235_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_6 (z d : ℤ) : ℤ :=
  (17636919966593601480 : ℤ) * z ^ 0 * d ^ 6 + (17394548698086051096 : ℤ) * z ^ 1 * d ^ 5 + (-5521811674536316512 : ℤ) * z ^ 2 * d ^ 4 + (-215272092213906003 : ℤ) * z ^ 3 * d ^ 3 + (34091652635636031 : ℤ) * z ^ 4 * d ^ 2

theorem fourPart1235_6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -183303909125840736327 * d ^ 6 ≤ fourPart1235_6 z d ∧ fourPart1235_6 z d ≤ -183303897069146861122 * d ^ 6 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 5 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 4 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 3 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 2 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  have hid : 10000000000000000000000000000 * fourPart1235_6 z d =
      (-1833038970691471722455543815408656536302049881809 : ℤ) * w ^ 0 * d ^ 6 + (-40188978546936371881080705054271952061228 : ℤ) * w ^ 1 * d ^ 5 + (345692387781771987081156314177034 : ℤ) * w ^ 2 * d ^ 4 + (9287672276595416673431988 : ℤ) * w ^ 3 * d ^ 3 + (34091652635636031 : ℤ) * w ^ 4 * d ^ 2 := by
    dsimp [w, fourPart1235_6]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_7 (z d : ℤ) : ℤ :=
  (28757725159638329820 : ℤ) * z ^ 0 * d ^ 7 + (19034214073436841732 : ℤ) * z ^ 1 * d ^ 6 + (-6715846860404122152 : ℤ) * z ^ 2 * d ^ 5 + (-414146530863136476 : ℤ) * z ^ 3 * d ^ 4 + (66979687973884731 : ℤ) * z ^ 4 * d ^ 3

theorem fourPart1235_7_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -196978071839311833725 * d ^ 7 ≤ fourPart1235_7 z d ∧ fourPart1235_7 z d ≤ -196978064969886178552 * d ^ 7 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 6 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 5 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 4 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 3 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 7 := pow_nonneg hd 7
  have hid : 10000000000000000000000000000 * fourPart1235_7 z d =
      (-1969780649698871816960616380821937235930087401109 : ℤ) * w ^ 0 * d ^ 7 + (-22898082173429569577465717872564379796828 : ℤ) * w ^ 1 * d ^ 6 + (1114604269372659726640926144678834 : ℤ) * w ^ 2 * d ^ 5 + (18335414147449961303619588 : ℤ) * w ^ 3 * d ^ 4 + (66979687973884731 : ℤ) * w ^ 4 * d ^ 3 := by
    dsimp [w, fourPart1235_7]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_8 (z d : ℤ) : ℤ :=
  (22429240061746277520 : ℤ) * z ^ 0 * d ^ 8 + (1647812625259600080 : ℤ) * z ^ 1 * d ^ 7 + (-8640971107182335484 : ℤ) * z ^ 2 * d ^ 6 + (-488788986983615811 : ℤ) * z ^ 3 * d ^ 5 + (123072025259717532 : ℤ) * z ^ 4 * d ^ 4

theorem fourPart1235_8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -250872487785248427565 * d ^ 8 ≤ fourPart1235_8 z d ∧ fourPart1235_8 z d ≤ -250872474544109220093 * d ^ 8 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 7 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 6 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 5 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 4 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  have hid : 10000000000000000000000000000 * fourPart1235_8 z d =
      (-2508724877852484275649393672660484219929247878948 : ℤ) * w ^ 0 * d ^ 8 + (44137121382610644397783272342121902191184 : ℤ) * w ^ 1 * d ^ 7 + (3102986824317062188616923311852648 : ℤ) * w ^ 2 * d ^ 6 + (36412318594213914451171536 : ℤ) * w ^ 3 * d ^ 5 + (123072025259717532 : ℤ) * w ^ 4 * d ^ 4 := by
    dsimp [w, fourPart1235_8]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_9 (z d : ℤ) : ℤ :=
  (14306215103737340040 : ℤ) * z ^ 0 * d ^ 9 + (-2997793189172064780 : ℤ) * z ^ 1 * d ^ 8 + (-5779583173096122240 : ℤ) * z ^ 2 * d ^ 7 + (-528129049845754962 : ℤ) * z ^ 3 * d ^ 6 + (129446170368522957 : ℤ) * z ^ 4 * d ^ 5

theorem fourPart1235_9_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -88230813523459178317 * d ^ 9 ≤ fourPart1235_9 z d ∧ fourPart1235_9 z d ≤ -88230785248212427565 * d ^ 9 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 8 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 7 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 6 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 5 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 9 := pow_nonneg hd 9
  have hid : 10000000000000000000000000000 * fourPart1235_9 z d =
      (-882308135234591783161053186255139156582284695523 : ℤ) * w ^ 0 * d ^ 9 + (94250811824629925569997066778348941476284 : ℤ) * w ^ 1 * d ^ 8 + (3559290959760508204290573147833598 : ℤ) * w ^ 2 * d ^ 7 + (38157937951801640671769436 : ℤ) * w ^ 3 * d ^ 6 + (129446170368522957 : ℤ) * w ^ 4 * d ^ 5 := by
    dsimp [w, fourPart1235_9]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_10 (z d : ℤ) : ℤ :=
  (-8766537296147494560 : ℤ) * z ^ 0 * d ^ 10 + (-16294554946978938000 : ℤ) * z ^ 1 * d ^ 9 + (-5176820215019156580 : ℤ) * z ^ 2 * d ^ 8 + (-300941399568915495 : ℤ) * z ^ 3 * d ^ 7 + (128751456311673894 : ℤ) * z ^ 4 * d ^ 6

theorem fourPart1235_10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -49725517358944677767 * d ^ 10 ≤ fourPart1235_10 z d ∧ fourPart1235_10 z d ≤ -49725476139802077278 * d ^ 10 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 9 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 8 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 7 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 6 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  have hid : 10000000000000000000000000000 * fourPart1235_10 z d =
      (-497255173589446777668998418342371194087332310266 : ℤ) * w ^ 0 * d ^ 10 + (137397129515560507744886403078331698200328 : ℤ) * w ^ 1 * d ^ 9 + (4162022812184704732821903546566916 : ℤ) * w ^ 2 * d ^ 8 + (40196684014811494174131912 : ℤ) * w ^ 3 * d ^ 7 + (128751456311673894 : ℤ) * w ^ 4 * d ^ 6 := by
    dsimp [w, fourPart1235_10]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_11 (z d : ℤ) : ℤ :=
  (-7288489894869250020 : ℤ) * z ^ 0 * d ^ 11 + (-5168373277903133940 : ℤ) * z ^ 1 * d ^ 10 + (-974061997461116280 : ℤ) * z ^ 2 * d ^ 9 + (-137680359211062405 : ℤ) * z ^ 3 * d ^ 8 + (47093622763791195 : ℤ) * z ^ 4 * d ^ 7

theorem fourPart1235_11_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    32787087393511629832 * d ^ 11 ≤ fourPart1235_11 z d ∧ fourPart1235_11 z d ≤ 32787105587532554471 * d ^ 11 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 10 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 9 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 8 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 7 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 11 := pow_nonneg hd 11
  have hid : 10000000000000000000000000000 * fourPart1235_11 z d =
      (327870873935116298325330836135443571805830416395 : ℤ) * w ^ 0 * d ^ 11 + (60646731780997503031922622449459492402340 : ℤ) * w ^ 1 * d ^ 10 + (1544820796795492099498577435423730 : ℤ) * w ^ 2 * d ^ 9 + (14426758861399408352089860 : ℤ) * w ^ 3 * d ^ 8 + (47093622763791195 : ℤ) * w ^ 4 * d ^ 7 := by
    dsimp [w, fourPart1235_11]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_12 (z d : ℤ) : ℤ :=
  (-6321529963146391500 : ℤ) * z ^ 0 * d ^ 12 + (-4159143048656488320 : ℤ) * z ^ 1 * d ^ 11 + (-901854639913474740 : ℤ) * z ^ 2 * d ^ 10 + (16336297090585620 : ℤ) * z ^ 3 * d ^ 9 + (19185558540638325 : ℤ) * z ^ 4 * d ^ 8

theorem fourPart1235_12_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -3319644130849418 * d ^ 12 ≤ fourPart1235_12 z d ∧ fourPart1235_12 z d ≤ -3310802468867926 * d ^ 12 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 11 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 10 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 9 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 8 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 12 := pow_nonneg hd 12
  have hid : 10000000000000000000000000000 * fourPart1235_12 z d =
      (-33196441308494177602241062437876990250239675 : ℤ) * w ^ 0 * d ^ 12 + (29472204321583712085644623854860199039900 : ℤ) * w ^ 1 * d ^ 11 + (761128880930243117852848349981550 : ℤ) * w ^ 2 * d ^ 10 + (6601605662983723658327100 : ℤ) * w ^ 3 * d ^ 9 + (19185558540638325 : ℤ) * w ^ 4 * d ^ 8 := by
    dsimp [w, fourPart1235_12]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_13 (z d : ℤ) : ℤ :=
  (2109359927254622300 : ℤ) * z ^ 0 * d ^ 13 + (2053731732441683800 : ℤ) * z ^ 1 * d ^ 12 + (601139205984824160 : ℤ) * z ^ 2 * d ^ 11 + (30917298390882620 : ℤ) * z ^ 3 * d ^ 10 + (-16130212712425760 : ℤ) * z ^ 4 * d ^ 9

theorem fourPart1235_13_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -13645111795046 * d ^ 13 ≤ fourPart1235_13 z d ∧ fourPart1235_13 z d ≤ -7816290126255 * d ^ 13 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 12 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 11 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 10 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 9 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 13 := pow_nonneg hd 13
  have hid : 10000000000000000000000000000 * fourPart1235_13 z d =
      (-78162901262552726579859664940723792259360 : ℤ) * w ^ 0 * d ^ 13 + (-19429403932897475865038974809748441653120 : ℤ) * w ^ 1 * d ^ 12 + (-543245021780952069571020361256640 : ℤ) * w ^ 2 * d ^ 11 + (-5103764246845439472836480 : ℤ) * w ^ 3 * d ^ 10 + (-16130212712425760 : ℤ) * w ^ 4 * d ^ 9 := by
    dsimp [w, fourPart1235_13]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_14 (z d : ℤ) : ℤ :=
  (200136998853169400 : ℤ) * z ^ 0 * d ^ 14 + (46349896082464900 : ℤ) * z ^ 1 * d ^ 13 + (-14848228970053200 : ℤ) * z ^ 2 * d ^ 12 + (210267534014990 : ℤ) * z ^ 3 * d ^ 11 + (67003083441130 : ℤ) * z ^ 4 * d ^ 10

theorem fourPart1235_14_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -175766617 * d ^ 14 ≤ fourPart1235_14 z d ∧ fourPart1235_14 z d ≤ -135092123 * d ^ 14 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 13 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 12 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 11 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 10 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 14 := pow_nonneg hd 14
  have hid : 10000000000000000000000000000 * fourPart1235_14 z d =
      (-1350938102790744990414130847336222070 : ℤ) * w ^ 0 * d ^ 14 + (-135576020331088748573619158070634440 : ℤ) * w ^ 1 * d ^ 13 + (1873899096056234227621409273820 : ℤ) * w ^ 2 * d ^ 12 + (24587405789763707749240 : ℤ) * w ^ 3 * d ^ 11 + (67003083441130 : ℤ) * w ^ 4 * d ^ 10 := by
    dsimp [w, fourPart1235_14]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_15 (z d : ℤ) : ℤ :=
  (-50077071238884000 : ℤ) * z ^ 0 * d ^ 15 + (-26250956169504000 : ℤ) * z ^ 1 * d ^ 14 + (136818260497500 : ℤ) * z ^ 2 * d ^ 13 + (1425541708515200 : ℤ) * z ^ 3 * d ^ 12 + (-117298287059800 : ℤ) * z ^ 4 * d ^ 11

theorem fourPart1235_15_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -6827 * d ^ 15 ≤ fourPart1235_15 z d ∧ fourPart1235_15 z d ≤ -3416 * d ^ 15 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 14 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 13 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 12 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 11 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 15 := pow_nonneg hd 15
  have hid : 10000000000000000000000000000 * fourPart1235_15 z d =
      (-56101969091707096279768072387800 : ℤ) * w ^ 0 * d ^ 15 + (7311664555066651502803626162400 : ℤ) * w ^ 1 * d ^ 14 + (-1351930541911306969068167917200 : ℤ) * w ^ 2 * d ^ 13 + (-25107254470975813370400 : ℤ) * w ^ 3 * d ^ 12 + (-117298287059800 : ℤ) * w ^ 4 * d ^ 11 := by
    dsimp [w, fourPart1235_15]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary1235_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 15 < auxiliary1235 z d ∧ auxiliary1235 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := fourPart1235_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := fourPart1235_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := fourPart1235_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := fourPart1235_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := fourPart1235_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := fourPart1235_5_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := fourPart1235_6_bounds z d hd0 hl hu
  obtain ⟨h7l, h7u⟩ := fourPart1235_7_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := fourPart1235_8_bounds z d hd0 hl hu
  obtain ⟨h9l, h9u⟩ := fourPart1235_9_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := fourPart1235_10_bounds z d hd0 hl hu
  obtain ⟨h11l, h11u⟩ := fourPart1235_11_bounds z d hd0 hl hu
  obtain ⟨h12l, h12u⟩ := fourPart1235_12_bounds z d hd0 hl hu
  obtain ⟨h13l, h13u⟩ := fourPart1235_13_bounds z d hd0 hl hu
  obtain ⟨h14l, h14u⟩ := fourPart1235_14_bounds z d hd0 hl hu
  obtain ⟨h15l, h15u⟩ := fourPart1235_15_bounds z d hd0 hl hu
  have hp0 : 30517578125000000000000000000000000000000000000000000000000000000000000 * d ^ 0 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 15
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 0)
    norm_num at hmul
    nlinarith only [hmul]
  have hp1 : 610351562500000000000000000000000000000000000000000000000000000000 * d ^ 1 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 14
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 1)
    norm_num at hmul
    nlinarith only [hmul]
  have hp2 : 12207031250000000000000000000000000000000000000000000000000000 * d ^ 2 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 13
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 2)
    norm_num at hmul
    nlinarith only [hmul]
  have hp3 : 244140625000000000000000000000000000000000000000000000000 * d ^ 3 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 12
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 3)
    norm_num at hmul
    nlinarith only [hmul]
  have hp4 : 4882812500000000000000000000000000000000000000000000 * d ^ 4 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 11
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 4)
    norm_num at hmul
    nlinarith only [hmul]
  have hp5 : 97656250000000000000000000000000000000000000000 * d ^ 5 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 10
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 5)
    norm_num at hmul
    nlinarith only [hmul]
  have hp6 : 1953125000000000000000000000000000000000000 * d ^ 6 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 9
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 6)
    norm_num at hmul
    nlinarith only [hmul]
  have hp7 : 39062500000000000000000000000000000000 * d ^ 7 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 8
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 7)
    norm_num at hmul
    nlinarith only [hmul]
  have hp8 : 781250000000000000000000000000000 * d ^ 8 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 7
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 8)
    norm_num at hmul
    nlinarith only [hmul]
  have hp9 : 15625000000000000000000000000 * d ^ 9 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 6
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 9)
    norm_num at hmul
    nlinarith only [hmul]
  have hp10 : 312500000000000000000000 * d ^ 10 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 5
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 10)
    norm_num at hmul
    nlinarith only [hmul]
  have hp11 : 6250000000000000000 * d ^ 11 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 4
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 11)
    norm_num at hmul
    nlinarith only [hmul]
  have hp12 : 125000000000000 * d ^ 12 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 3
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 12)
    norm_num at hmul
    nlinarith only [hmul]
  have hp13 : 2500000000 * d ^ 13 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 13)
    norm_num at hmul
    nlinarith only [hmul]
  have hp14 : 50000 * d ^ 14 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 1
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 14)
    norm_num at hmul
    nlinarith only [hmul]
  have hdD : 0 < d ^ 15 := by positivity
  have hid : auxiliary1235 z d = fourPart1235_0 z d + fourPart1235_1 z d + fourPart1235_2 z d + fourPart1235_3 z d + fourPart1235_4 z d + fourPart1235_5 z d + fourPart1235_6 z d + fourPart1235_7 z d + fourPart1235_8 z d + fourPart1235_9 z d + fourPart1235_10 z d + fourPart1235_11 z d + fourPart1235_12 z d + fourPart1235_13 z d + fourPart1235_14 z d + fourPart1235_15 z d := by
    unfold auxiliary1235 fourPart1235_0 fourPart1235_1 fourPart1235_2 fourPart1235_3 fourPart1235_4 fourPart1235_5 fourPart1235_6 fourPart1235_7 fourPart1235_8 fourPart1235_9 fourPart1235_10 fourPart1235_11 fourPart1235_12 fourPart1235_13 fourPart1235_14 fourPart1235_15
    ring
  rw [hid]
  norm_num at h0l h0u
  constructor <;> nlinarith only [h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u, h7l, h7u, h8l, h8u, h9l, h9u, h10l, h10u, h11l, h11u, h12l, h12u, h13l, h13u, h14l, h14u, h15l, h15u, hp0, hp1, hp2, hp3, hp4, hp5, hp6, hp7, hp8, hp9, hp10, hp11, hp12, hp13, hp14, hdD]

def fourPart1345_0 (z d : ℤ) : ℤ :=
  0

theorem fourPart1345_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ fourPart1345_0 z d ∧ fourPart1345_0 z d ≤ 0 * d ^ 0 := by
  norm_num [fourPart1345_0]

def fourPart1345_1 (z d : ℤ) : ℤ :=
  (133336197573651648 : ℤ) * z ^ 1 * d ^ 0

theorem fourPart1345_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    1118615856035239236 * d ^ 1 ≤ fourPart1345_1 z d ∧ fourPart1345_1 z d ≤ 1118615896036098509 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * fourPart1345_1 z d =
      (11186158560352392360499776000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (133336197573651648000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, fourPart1345_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def fourPart1345_2 (z d : ℤ) : ℤ :=
  (-519020917258693212 : ℤ) * z ^ 1 * d ^ 1 + (44445399191217216 : ℤ) * z ^ 2 * d ^ 0

theorem fourPart1345_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -1226107785007690541 * d ^ 2 ≤ fourPart1345_2 z d ∧ fourPart1345_2 z d ≤ -1226107716990790511 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * fourPart1345_2 z d =
      (-12261077850076905406213986628089600000000000000 : ℤ) * w ^ 0 * d ^ 2 + (226722986764799612033318400000000000000 : ℤ) * w ^ 1 * d ^ 1 + (4444539919121721600000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, fourPart1345_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def fourPart1345_3 (z d : ℤ) : ℤ :=
  (370378326593476800 : ℤ) * z ^ 0 * d ^ 3 + (2131799222198796120 : ℤ) * z ^ 1 * d ^ 2 + (-173006972419564404 : ℤ) * z ^ 2 * d ^ 1 + (-3703783265934768 : ℤ) * z ^ 3 * d ^ 0

theorem fourPart1345_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3891304757993784243 * d ^ 3 ≤ fourPart1345_3 z d ∧ fourPart1345_3 z d ≤ 3891305223926854243 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * fourPart1345_3 z d =
      (38913052239268542424131144894080283108960000000 : ℤ) * w ^ 0 * d ^ 3 + (-1553110153462228427009746034297760000000 : ℤ) * w ^ 1 * d ^ 2 + (-26622496042250100700416480000000 : ℤ) * w ^ 2 * d ^ 1 + (-37037832659347680000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, fourPart1345_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def fourPart1345_4 (z d : ℤ) : ℤ :=
  (-1441724770163036700 : ℤ) * z ^ 0 * d ^ 4 + (-4315640407093603260 : ℤ) * z ^ 1 * d ^ 3 + (694138481773221960 : ℤ) * z ^ 2 * d ^ 2 + (14417247701630367 : ℤ) * z ^ 3 * d ^ 1 + (-1234594421978256 : ℤ) * z ^ 4 * d ^ 0

theorem fourPart1345_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    13604934456920726305 * d ^ 4 ≤ fourPart1345_4 z d ∧ fourPart1345_4 z d ≤ 13604936694749167607 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * fourPart1345_4 z d =
      (136049344569207263051317337599056918538805113584 : ℤ) * w ^ 0 * d ^ 4 + (7459427976980577919392436453783074414528 : ℤ) * w ^ 1 * d ^ 3 + (53563193182787215475522441046816 : ℤ) * w ^ 2 * d ^ 2 + (-270129691885636787796288 : ℤ) * w ^ 3 * d ^ 1 + (-1234594421978256 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, fourPart1345_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_5 (z d : ℤ) : ℤ :=
  (5164446593961103320 : ℤ) * z ^ 0 * d ^ 5 + (8758509296496665076 : ℤ) * z ^ 1 * d ^ 4 + (-1429341009111877500 : ℤ) * z ^ 2 * d ^ 3 + (-55787216111138070 : ℤ) * z ^ 3 * d ^ 2 + (4805749233876789 : ℤ) * z ^ 4 * d ^ 1

theorem fourPart1345_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -31091833484852144192 * d ^ 5 ≤ fourPart1345_5 z d ∧ fourPart1345_5 z d ≤ -31091828788962891237 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * fourPart1345_5 z d =
      (-310918287889628912371955565644549326378167570171 : ℤ) * w ^ 0 * d ^ 5 + (-15652963935324535790768116679482257976932 : ℤ) * w ^ 1 * d ^ 4 + (-80396218655770183583048435425554 : ℤ) * w ^ 2 * d ^ 3 + (1054829383095870686733372 : ℤ) * w ^ 3 * d ^ 2 + (4805749233876789 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, fourPart1345_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_6 (z d : ℤ) : ℤ :=
  (-9383306717920649580 : ℤ) * z ^ 0 * d ^ 6 + (-9253844943642951408 : ℤ) * z ^ 1 * d ^ 5 + (2937784154542242012 : ℤ) * z ^ 2 * d ^ 4 + (114531597652801410 : ℤ) * z ^ 3 * d ^ 3 + (-18138481510387410 : ℤ) * z ^ 4 * d ^ 2

theorem fourPart1345_6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    97525871832682714816 * d ^ 6 ≤ fourPart1345_6 z d ∧ fourPart1345_6 z d ≤ 97525878246981333756 * d ^ 6 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 5 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 4 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 3 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 2 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  have hid : 10000000000000000000000000000 * fourPart1345_6 z d =
      (975258718326828803679503895284894415521399934990 : ℤ) * w ^ 0 * d ^ 6 + (21380994844626254297121442232685296047080 : ℤ) * w ^ 1 * d ^ 5 + (-183945821641073732395101095809740 : ℤ) * w ^ 2 * d ^ 4 + (-4941551173171129477870680 : ℤ) * w ^ 3 * d ^ 3 + (-18138481510387410 : ℤ) * w ^ 4 * d ^ 2 := by
    dsimp [w, fourPart1345_6]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_7 (z d : ℤ) : ℤ :=
  (15299758638205504200 : ℤ) * z ^ 0 * d ^ 7 + (10126195252474329504 : ℤ) * z ^ 1 * d ^ 6 + (-3572875892083868136 : ℤ) * z ^ 2 * d ^ 5 + (-220338297077295636 : ℤ) * z ^ 3 * d ^ 4 + (35635196771733600 : ℤ) * z ^ 4 * d ^ 3

theorem fourPart1345_7_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -104792300569448590263 * d ^ 7 ≤ fourPart1345_7 z d ∧ fourPart1345_7 z d ≤ -104792296915321067388 * d ^ 7 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 6 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 5 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 4 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 3 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 7 := pow_nonneg hd 7
  have hid : 10000000000000000000000000000 * fourPart1345_7 z d =
      (-1047922969153216011051229227127511453380862570400 : ℤ) * w ^ 0 * d ^ 7 + (-12180423297190587535282219531874519356800 : ℤ) * w ^ 1 * d ^ 6 + (593018446857595626761314986830400 : ℤ) * w ^ 2 * d ^ 5 + (9754988984382920837212800 : ℤ) * w ^ 3 * d ^ 4 + (35635196771733600 : ℤ) * w ^ 4 * d ^ 3 := by
    dsimp [w, fourPart1345_7]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_8 (z d : ℤ) : ℤ :=
  (-11931747244135650900 : ℤ) * z ^ 0 * d ^ 8 + (-875316965043250332 : ℤ) * z ^ 1 * d ^ 7 + (4597082207276549688 : ℤ) * z ^ 2 * d ^ 6 + (260038274675383503 : ℤ) * z ^ 3 * d ^ 5 + (-65477756800646982 : ℤ) * z ^ 4 * d ^ 4

theorem fourPart1345_8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    133466315143885675560 * d ^ 8 ≤ fourPart1345_8 z d ∧ fourPart1345_8 z d ≤ 133466322189621680406 * d ^ 8 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 7 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 6 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 5 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 4 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  have hid : 10000000000000000000000000000 * fourPart1345_8 z d =
      (1334663221896216804056423131031694832216296897498 : ℤ) * w ^ 0 * d ^ 8 + (-23485781730057578559053969594905224424584 : ℤ) * w ^ 1 * d ^ 7 + (-1650919298998998576034333593834948 : ℤ) * w ^ 2 * d ^ 6 + (-19372482328947604003160136 : ℤ) * w ^ 3 * d ^ 5 + (-65477756800646982 : ℤ) * w ^ 4 * d ^ 4 := by
    dsimp [w, fourPart1345_8]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_9 (z d : ℤ) : ℤ :=
  (7610175285639158340 : ℤ) * z ^ 0 * d ^ 9 + (-1595345762182791996 : ℤ) * z ^ 1 * d ^ 8 + (-3074484023928246564 : ℤ) * z ^ 2 * d ^ 7 + (-280963666352321469 : ℤ) * z ^ 3 * d ^ 6 + (68865024601736001 : ℤ) * z ^ 4 * d ^ 5

theorem fourPart1345_9_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -46927082719591944285 * d ^ 9 ≤ fourPart1345_9 z d ∧ fourPart1345_9 z d ≤ -46927067676213854399 * d ^ 9 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 8 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 7 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 6 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 5 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 9 := pow_nonneg hd 9
  have hid : 10000000000000000000000000000 * fourPart1345_9 z d =
      (-469270827195919442849966995722170710907580222639 : ℤ) * w ^ 0 * d ^ 9 + (50144587952283437260031067013303010906412 : ℤ) * w ^ 1 * d ^ 8 + (1893556424997854517750100020538614 : ℤ) * w ^ 2 * d ^ 7 + (20299919435287029068905548 : ℤ) * w ^ 3 * d ^ 6 + (68865024601736001 : ℤ) * w ^ 4 * d ^ 5 := by
    dsimp [w, fourPart1345_9]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_10 (z d : ℤ) : ℤ :=
  (4665514063846811580 : ℤ) * z ^ 0 * d ^ 10 + (8669684464733661912 : ℤ) * z ^ 1 * d ^ 9 + (2753929047777842268 : ℤ) * z ^ 2 * d ^ 8 + (160081813362208212 : ℤ) * z ^ 3 * d ^ 7 + (-68494757235494193 : ℤ) * z ^ 4 * d ^ 6

theorem fourPart1345_10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    26447911700048677885 * d ^ 10 ≤ fourPart1345_10 z d ∧ fourPart1345_10 z d ≤ 26447933629522666762 * d ^ 10 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 9 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 8 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 7 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 6 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  have hid : 10000000000000000000000000000 * fourPart1345_10 z d =
      (264479336295226667616239268367887143390445963327 : ℤ) * w ^ 0 * d ^ 10 + (-73098239986940402747893681600173442689516 : ℤ) * w ^ 1 * d ^ 9 + (-2214214945184293334575485451796502 : ℤ) * w ^ 2 * d ^ 8 + (-21384484550320317735178764 : ℤ) * w ^ 3 * d ^ 7 + (-68494757235494193 : ℤ) * w ^ 4 * d ^ 6 := by
    dsimp [w, fourPart1345_10]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_11 (z d : ℤ) : ℤ :=
  (-3877770148280463240 : ℤ) * z ^ 0 * d ^ 11 + (-2749082858108762328 : ℤ) * z ^ 1 * d ^ 10 + (-517848557528956536 : ℤ) * z ^ 2 * d ^ 9 + (-73228234100881779 : ℤ) * z ^ 3 * d ^ 8 + (25047316222783524 : ℤ) * z ^ 4 * d ^ 7

theorem fourPart1345_11_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    17449673232450162985 * d ^ 11 ≤ fourPart1345_11 z d ∧ fourPart1345_11 z d ≤ 17449682910113714483 * d ^ 11 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 10 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 9 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 8 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 7 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 11 := pow_nonneg hd 11
  have hid : 10000000000000000000000000000 * fourPart1345_11 z d =
      (174496732324501629853130068382471390538548296164 : ℤ) * w ^ 0 * d ^ 11 + (32258876040039119430464584861522515987888 : ℤ) * w ^ 1 * d ^ 10 + (821650381021871968294957833299736 : ℤ) * w ^ 2 * d ^ 9 + (7673034621013498928719152 : ℤ) * w ^ 3 * d ^ 8 + (25047316222783524 : ℤ) * w ^ 4 * d ^ 7 := by
    dsimp [w, fourPart1345_11]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_12 (z d : ℤ) : ℤ :=
  (3363113304818255520 : ℤ) * z ^ 0 * d ^ 12 + (2212431983895257892 : ℤ) * z ^ 1 * d ^ 11 + (479660073018466464 : ℤ) * z ^ 2 * d ^ 10 + (-8705960230018032 : ℤ) * z ^ 3 * d ^ 9 + (-10202967134563293 : ℤ) * z ^ 4 * d ^ 8

theorem fourPart1345_12_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    653053311457157 * d ^ 12 ≤ fourPart1345_12 z d ∧ fourPart1345_12 z d ≤ 657756078723197 * d ^ 12 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 11 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 10 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 9 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 8 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 12 := pow_nonneg hd 12
  have hid : 10000000000000000000000000000 * fourPart1345_12 z d =
      (6577560787231965822741883111776313264918227 : ℤ) * w ^ 0 * d ^ 12 + (-15675889672360140381046617595168612558716 : ℤ) * w ^ 1 * d ^ 11 + (-404812741543458145026428129623902 : ℤ) * w ^ 2 * d ^ 10 + (-3510946295641516235745564 : ℤ) * w ^ 3 * d ^ 9 + (-10202967134563293 : ℤ) * w ^ 4 * d ^ 8 := by
    dsimp [w, fourPart1345_12]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_13 (z d : ℤ) : ℤ :=
  (1122595670798375160 : ℤ) * z ^ 0 * d ^ 13 + (1093005006356435400 : ℤ) * z ^ 1 * d ^ 12 + (319934947101416004 : ℤ) * z ^ 2 * d ^ 11 + (16455089369135943 : ℤ) * z ^ 3 * d ^ 10 + (-8584743671664054 : ℤ) * z ^ 4 * d ^ 9

theorem fourPart1345_13_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -5713062568804 * d ^ 13 ≤ fourPart1345_13 z d ∧ fourPart1345_13 z d ≤ -2610893960387 * d ^ 13 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 12 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 11 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 10 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 9 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 13 := pow_nonneg hd 13
  have hid : 10000000000000000000000000000 * fourPart1345_13 z d =
      (-26108939603878508009011831195460907097494 : ℤ) * w ^ 0 * d ^ 13 + (-10340561160686660989465184214349781986248 : ℤ) * w ^ 1 * d ^ 12 + (-289122185016982351599058261965156 : ℤ) * w ^ 2 * d ^ 11 + (-2716296337854180891059592 : ℤ) * w ^ 3 * d ^ 10 + (-8584743671664054 : ℤ) * w ^ 4 * d ^ 9 := by
    dsimp [w, fourPart1345_13]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_14 (z d : ℤ) : ℤ :=
  (-106594944162246220 : ℤ) * z ^ 0 * d ^ 14 + (-24748335450707420 : ℤ) * z ^ 1 * d ^ 13 + (7880160630636720 : ℤ) * z ^ 2 * d ^ 12 + (-112024573930957 : ℤ) * z ^ 3 * d ^ 11 + (-35177583742559 : ℤ) * z ^ 4 * d ^ 10

theorem fourPart1345_14_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -215154507 * d ^ 14 ≤ fourPart1345_14 z d ∧ fourPart1345_14 z d ≤ 4669702 * d ^ 14 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 13 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 12 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 11 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 10 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 14 := pow_nonneg hd 14
  have hid : 10000000000000000000000000000 * fourPart1345_14 z d =
      (-2151536247359322308828605961261342799 : ℤ) * w ^ 0 * d ^ 14 + (732744422063737195287719461724299692 : ℤ) * w ^ 1 * d ^ 13 + (-979466533441441626562150337226 : ℤ) * w ^ 2 * d ^ 12 + (-12925053036202182465332 : ℤ) * w ^ 3 * d ^ 11 + (-35177583742559 : ℤ) * w ^ 4 * d ^ 10 := by
    dsimp [w, fourPart1345_14]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1345_15 (z d : ℤ) : ℤ :=
  (-26632927916227220 : ℤ) * z ^ 0 * d ^ 15 + (-13964132842091600 : ℤ) * z ^ 1 * d ^ 14 + (72335806602860 : ℤ) * z ^ 2 * d ^ 13 + (758382491891860 : ℤ) * z ^ 3 * d ^ 12 + (-62399554553059 : ℤ) * z ^ 4 * d ^ 11

theorem fourPart1345_15_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -1874 * d ^ 15 ≤ fourPart1345_15 z d ∧ fourPart1345_15 z d ≤ -162 * d ^ 15 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 14 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 13 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 12 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 11 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 15 := pow_nonneg hd 15
  have hid : 10000000000000000000000000000 * fourPart1345_15 z d =
      (-12265722625551542128475364433299 : ℤ) * w ^ 0 * d ^ 15 + (3545625269372962463781163373692 : ℤ) * w ^ 1 * d ^ 14 + (-719154183113154096210714984226 : ℤ) * w ^ 2 * d ^ 13 + (-13356064594289175119332 : ℤ) * w ^ 3 * d ^ 12 + (-62399554553059 : ℤ) * w ^ 4 * d ^ 11 := by
    dsimp [w, fourPart1345_15]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary1345_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 15 < auxiliary1345 z d ∧ auxiliary1345 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := fourPart1345_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := fourPart1345_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := fourPart1345_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := fourPart1345_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := fourPart1345_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := fourPart1345_5_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := fourPart1345_6_bounds z d hd0 hl hu
  obtain ⟨h7l, h7u⟩ := fourPart1345_7_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := fourPart1345_8_bounds z d hd0 hl hu
  obtain ⟨h9l, h9u⟩ := fourPart1345_9_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := fourPart1345_10_bounds z d hd0 hl hu
  obtain ⟨h11l, h11u⟩ := fourPart1345_11_bounds z d hd0 hl hu
  obtain ⟨h12l, h12u⟩ := fourPart1345_12_bounds z d hd0 hl hu
  obtain ⟨h13l, h13u⟩ := fourPart1345_13_bounds z d hd0 hl hu
  obtain ⟨h14l, h14u⟩ := fourPart1345_14_bounds z d hd0 hl hu
  obtain ⟨h15l, h15u⟩ := fourPart1345_15_bounds z d hd0 hl hu
  have hp0 : 30517578125000000000000000000000000000000000000000000000000000000000000 * d ^ 0 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 15
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 0)
    norm_num at hmul
    nlinarith only [hmul]
  have hp1 : 610351562500000000000000000000000000000000000000000000000000000000 * d ^ 1 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 14
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 1)
    norm_num at hmul
    nlinarith only [hmul]
  have hp2 : 12207031250000000000000000000000000000000000000000000000000000 * d ^ 2 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 13
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 2)
    norm_num at hmul
    nlinarith only [hmul]
  have hp3 : 244140625000000000000000000000000000000000000000000000000 * d ^ 3 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 12
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 3)
    norm_num at hmul
    nlinarith only [hmul]
  have hp4 : 4882812500000000000000000000000000000000000000000000 * d ^ 4 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 11
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 4)
    norm_num at hmul
    nlinarith only [hmul]
  have hp5 : 97656250000000000000000000000000000000000000000 * d ^ 5 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 10
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 5)
    norm_num at hmul
    nlinarith only [hmul]
  have hp6 : 1953125000000000000000000000000000000000000 * d ^ 6 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 9
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 6)
    norm_num at hmul
    nlinarith only [hmul]
  have hp7 : 39062500000000000000000000000000000000 * d ^ 7 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 8
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 7)
    norm_num at hmul
    nlinarith only [hmul]
  have hp8 : 781250000000000000000000000000000 * d ^ 8 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 7
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 8)
    norm_num at hmul
    nlinarith only [hmul]
  have hp9 : 15625000000000000000000000000 * d ^ 9 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 6
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 9)
    norm_num at hmul
    nlinarith only [hmul]
  have hp10 : 312500000000000000000000 * d ^ 10 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 5
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 10)
    norm_num at hmul
    nlinarith only [hmul]
  have hp11 : 6250000000000000000 * d ^ 11 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 4
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 11)
    norm_num at hmul
    nlinarith only [hmul]
  have hp12 : 125000000000000 * d ^ 12 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 3
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 12)
    norm_num at hmul
    nlinarith only [hmul]
  have hp13 : 2500000000 * d ^ 13 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 13)
    norm_num at hmul
    nlinarith only [hmul]
  have hp14 : 50000 * d ^ 14 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 1
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 14)
    norm_num at hmul
    nlinarith only [hmul]
  have hdD : 0 < d ^ 15 := by positivity
  have hid : auxiliary1345 z d = fourPart1345_0 z d + fourPart1345_1 z d + fourPart1345_2 z d + fourPart1345_3 z d + fourPart1345_4 z d + fourPart1345_5 z d + fourPart1345_6 z d + fourPart1345_7 z d + fourPart1345_8 z d + fourPart1345_9 z d + fourPart1345_10 z d + fourPart1345_11 z d + fourPart1345_12 z d + fourPart1345_13 z d + fourPart1345_14 z d + fourPart1345_15 z d := by
    unfold auxiliary1345 fourPart1345_0 fourPart1345_1 fourPart1345_2 fourPart1345_3 fourPart1345_4 fourPart1345_5 fourPart1345_6 fourPart1345_7 fourPart1345_8 fourPart1345_9 fourPart1345_10 fourPart1345_11 fourPart1345_12 fourPart1345_13 fourPart1345_14 fourPart1345_15
    ring
  rw [hid]
  norm_num at h0l h0u
  constructor <;> nlinarith only [h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u, h7l, h7u, h8l, h8u, h9l, h9u, h10l, h10u, h11l, h11u, h12l, h12u, h13l, h13u, h14l, h14u, h15l, h15u, hp0, hp1, hp2, hp3, hp4, hp5, hp6, hp7, hp8, hp9, hp10, hp11, hp12, hp13, hp14, hdD]

def fourPart1234_0 (z d : ℤ) : ℤ :=
  0

theorem fourPart1234_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ fourPart1234_0 z d ∧ fourPart1234_0 z d ≤ 0 * d ^ 0 := by
  norm_num [fourPart1234_0]

def fourPart1234_1 (z d : ℤ) : ℤ :=
  (91173560536673966592 : ℤ) * z ^ 1 * d ^ 0

theorem fourPart1234_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    764894997183165344609 * d ^ 1 ≤ fourPart1234_1 z d ∧ fourPart1234_1 z d ≤ 764895024535233505612 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * fourPart1234_1 z d =
      (7648949971831653446094319104000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (91173560536673966592000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, fourPart1234_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def fourPart1234_2 (z d : ℤ) : ℤ :=
  (652566941632815247872 : ℤ) * z ^ 1 * d ^ 1 + (-15195593422778994432 : ℤ) * z ^ 2 * d ^ 0

theorem fourPart1234_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    4405163739340840341083 * d ^ 2 ≤ fourPart1234_2 z d ∧ fourPart1234_2 z d ≤ 4405163858621424480215 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * fourPart1234_2 z d =
      (44051637393408417086865820373792179200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (397601942571760133002189363200000000000000 : ℤ) * w ^ 1 * d ^ 1 + (-1519559342277899443200000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, fourPart1234_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def fourPart1234_3 (z d : ℤ) : ℤ :=
  (253259890379649907200 : ℤ) * z ^ 0 * d ^ 3 + (2545290275050073564928 : ℤ) * z ^ 1 * d ^ 2 + (-108761156938802541312 : ℤ) * z ^ 2 * d ^ 1 + (-10130395615185996288 : ℤ) * z ^ 3 * d ^ 0

theorem fourPart1234_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    7970207519497000547978 * d ^ 3 ≤ fourPart1234_3 z d ∧ fourPart1234_3 z d ≤ 7970207945080955296293 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * fourPart1234_3 z d =
      (79702079450809552962924920054079251958543360000000 : ℤ) * w ^ 0 * d ^ 3 + (-1418613073376533022076217966841564160000000 : ℤ) * w ^ 1 * d ^ 2 + (-36372615599985765618181063680000000 : ℤ) * w ^ 2 * d ^ 1 + (-101303956151859962880000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, fourPart1234_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def fourPart1234_4 (z d : ℤ) : ℤ :=
  (1812685948980042355200 : ℤ) * z ^ 0 * d ^ 4 + (6485013141490121586048 : ℤ) * z ^ 1 * d ^ 3 + (-417180048886688652288 : ℤ) * z ^ 2 * d ^ 2 + (-72507437959201694208 : ℤ) * z ^ 3 * d ^ 1 + (1688399269197666048 : ℤ) * z ^ 4 * d ^ 0

theorem fourPart1234_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -7593641009776103318810 * d ^ 4 ≤ fourPart1234_4 z d ∧ fourPart1234_4 z d ≤ -7593637458736264048669 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * fourPart1234_4 z d =
      (-75936374587362640486693537998229067214901876668672 : ℤ) * w ^ 0 * d ^ 4 + (-11836799005514072946145821419926054877236224 : ℤ) * w ^ 1 * d ^ 3 + (-152906575695558931459657154278614528 : ℤ) * w ^ 2 * d ^ 2 + (-158485492789672242369309696 : ℤ) * w ^ 3 * d ^ 1 + (1688399269197666048 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, fourPart1234_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_5 (z d : ℤ) : ℤ :=
  (6552474988140697870080 : ℤ) * z ^ 0 * d ^ 5 + (11695761187338597434784 : ℤ) * z ^ 1 * d ^ 4 + (-1094970608197429943808 : ℤ) * z ^ 2 * d ^ 3 + (-275306033809129658112 : ℤ) * z ^ 3 * d ^ 2 + (12084572993200282368 : ℤ) * z ^ 4 * d ^ 1

theorem fourPart1234_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -75090300869193160048641 * d ^ 5 ≤ fourPart1234_5 z d ∧ fourPart1234_5 z d ≤ -75090289989819411134638 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * fourPart1234_5 z d =
      (-750902899898194111346422885835755200318707090257152 : ℤ) * w ^ 0 * d ^ 5 + (-36264578286839069841766497029333416159632384 : ℤ) * w ^ 1 * d ^ 4 + (-292069196450121142345827956965314048 : ℤ) * w ^ 2 * d ^ 3 + (1302251035593874848841073664 : ℤ) * w ^ 3 * d ^ 2 + (12084572993200282368 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, fourPart1234_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_6 (z d : ℤ) : ℤ :=
  (14425239624363200177280 : ℤ) * z ^ 0 * d ^ 6 + (14911077794858777585952 : ℤ) * z ^ 1 * d ^ 5 + (-2214326608178286965904 : ℤ) * z ^ 2 * d ^ 4 + (-660594471791354232192 : ℤ) * z ^ 3 * d ^ 3 + (45102672639856023552 : ℤ) * z ^ 4 * d ^ 2

theorem fourPart1234_6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -182965358504800973911141 * d ^ 6 ≤ fourPart1234_6 z d ∧ fourPart1234_6 z d ≤ -182965341945175233512859 * d ^ 6 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 5 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 4 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 3 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 2 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  have hid : 10000000000000000000000000000 * fourPart1234_6 z d =
      (-1829653419451752520803529177323359696066001683785728 : ℤ) * w ^ 0 * d ^ 6 + (-55198752406102624458329174074316530612248576 : ℤ) * w ^ 1 * d ^ 5 + (20630522553231578309036040450428928 : ℤ) * w ^ 2 * d ^ 4 + (8529499574816029134690410496 : ℤ) * w ^ 3 * d ^ 3 + (45102672639856023552 : ℤ) * w ^ 4 * d ^ 2 := by
    dsimp [w, fourPart1234_6]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_7 (z d : ℤ) : ℤ :=
  (20063956567278380073120 : ℤ) * z ^ 0 * d ^ 7 + (12220227870656021008416 : ℤ) * z ^ 1 * d ^ 6 + (-3676147545548566343952 : ℤ) * z ^ 2 * d ^ 5 + (-1077614466924253270176 : ℤ) * z ^ 3 * d ^ 4 + (105416312962539128832 : ℤ) * z ^ 4 * d ^ 3

theorem fourPart1234_7_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -250249526011587543638209 * d ^ 7 ≤ fourPart1234_7 z d ∧ fourPart1234_7 z d ≤ -250249517606664936087231 * d ^ 7 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 6 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 5 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 4 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 3 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 7 := pow_nonneg hd 7
  have hid : 10000000000000000000000000000 * fourPart1234_7 z d =
      (-2502495176066661707979932772730053201991548915099648 : ℤ) * w ^ 0 * d ^ 7 + (-28016404576134050978812251550866217014153216 : ℤ) * w ^ 1 * d ^ 6 + (1371900772501767244641151007984590848 : ℤ) * w ^ 2 * d ^ 5 + (24599203153926964005738663936 : ℤ) * w ^ 3 * d ^ 4 + (105416312962539128832 : ℤ) * w ^ 4 * d ^ 3 := by
    dsimp [w, fourPart1234_7]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_8 (z d : ℤ) : ℤ :=
  (15857088304713571026720 : ℤ) * z ^ 0 * d ^ 8 + (3181720585435953768216 : ℤ) * z ^ 1 * d ^ 7 + (-4991525973971459948016 : ℤ) * z ^ 2 * d ^ 6 + (-1186588982180843885088 : ℤ) * z ^ 3 * d ^ 5 + (164871865158196989456 : ℤ) * z ^ 4 * d ^ 4

theorem fourPart1234_8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -192684292022482341740099 * d ^ 8 ≤ fourPart1234_8 z d ∧ fourPart1234_8 z d ≤ -192684274534902494716092 * d ^ 8 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 7 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 6 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 5 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 4 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  have hid : 10000000000000000000000000000 * fourPart1234_8 z d =
      (-1926842920224823417400983799675272392119541348870384 : ℤ) * w ^ 0 * d ^ 8 + (58291922392781515816110108561967929508999872 : ℤ) * w ^ 1 * d ^ 7 + (3476877148305828685437160485706629984 : ℤ) * w ^ 2 * d ^ 6 + (43461406422165938971746333888 : ℤ) * w ^ 3 * d ^ 5 + (164871865158196989456 : ℤ) * w ^ 4 * d ^ 4 := by
    dsimp [w, fourPart1234_8]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_9 (z d : ℤ) : ℤ :=
  (2761895290851522531360 : ℤ) * z ^ 0 * d ^ 9 + (-6646507591618221708240 : ℤ) * z ^ 1 * d ^ 8 + (-5192934694770737261376 : ℤ) * z ^ 2 * d ^ 7 + (-822282029323742630304 : ℤ) * z ^ 3 * d ^ 6 + (169893948644580236688 : ℤ) * z ^ 4 * d ^ 5

theorem fourPart1234_9_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -62417722561491674257153 * d ^ 9 ≤ fourPart1234_9 z d ∧ fourPart1234_9 z d ≤ -62417682400917921373608 * d ^ 9 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 8 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 7 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 6 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 5 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 9 := pow_nonneg hd 9
  have hid : 10000000000000000000000000000 * fourPart1234_9 z d =
      (-624177225614916742571520719446754693187295346827632 : ℤ) * w ^ 0 * d ^ 9 + (133868565419129579177512559790665241673227456 : ℤ) * w ^ 1 * d ^ 8 + (4585716153018383314087180258645518432 : ℤ) * w ^ 2 * d ^ 7 + (48789774412948733013978681024 : ℤ) * w ^ 3 * d ^ 6 + (169893948644580236688 : ℤ) * w ^ 4 * d ^ 5 := by
    dsimp [w, fourPart1234_9]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_10 (z d : ℤ) : ℤ :=
  (-7327230366440041375320 : ℤ) * z ^ 0 * d ^ 10 + (-9808113151695260019024 : ℤ) * z ^ 1 * d ^ 9 + (-3589238396545708111920 : ℤ) * z ^ 2 * d ^ 8 + (-259938243806693744664 : ℤ) * z ^ 3 * d ^ 7 + (104009527350859693104 : ℤ) * z ^ 4 * d ^ 6

theorem fourPart1234_10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    19516208593165090075149 * d ^ 10 ≤ fourPart1234_10 z d ∧ fourPart1234_10 z d ≤ 19516244815636994911952 * d ^ 10 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 9 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 8 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 7 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 6 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  have hid : 10000000000000000000000000000 * fourPart1234_10 z d =
      (195162085931650900751492468942425925051113858634544 : ℤ) * w ^ 0 * d ^ 10 + (120741562878711244943268352747198911409654848 : ℤ) * w ^ 1 * d ^ 9 + (3379137046132662745497724642319501856 : ℤ) * w ^ 2 * d ^ 8 + (32303879718973494057232828992 : ℤ) * w ^ 3 * d ^ 7 + (104009527350859693104 : ℤ) * w ^ 4 * d ^ 6 := by
    dsimp [w, fourPart1234_10]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_11 (z d : ℤ) : ℤ :=
  (-6509543350338456219360 : ℤ) * z ^ 0 * d ^ 11 + (-5338651312640919780135 : ℤ) * z ^ 1 * d ^ 10 + (-1092100020387280850376 : ℤ) * z ^ 2 * d ^ 9 + (67751953223291554320 : ℤ) * z ^ 3 * d ^ 8 + (21534934708875825504 : ℤ) * z ^ 4 * d ^ 7

theorem fourPart1234_11_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    18520894620005057787327 * d ^ 11 ≤ fourPart1234_11 z d ∧ fourPart1234_11 z d ≤ 18520907071764898820781 * d ^ 11 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 10 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 9 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 8 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 7 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 11 := pow_nonneg hd 11
  have hid : 10000000000000000000000000000 * fourPart1234_11 z d =
      (185208946200050577873275038831182589304720726830944 : ℤ) * w ^ 0 * d ^ 11 + (41505863224611718768808833030366444573803648 : ℤ) * w ^ 1 * d ^ 10 + (970722128513613492940011024406395456 : ℤ) * w ^ 2 * d ^ 9 + (7904160118177558902308184192 : ℤ) * w ^ 3 * d ^ 8 + (21534934708875825504 : ℤ) * w ^ 4 * d ^ 7 := by
    dsimp [w, fourPart1234_11]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_12 (z d : ℤ) : ℤ :=
  (-1028411781208443999360 : ℤ) * z ^ 0 * d ^ 12 + (-48005983649963391525 : ℤ) * z ^ 1 * d ^ 11 + (392593272576050483370 : ℤ) * z ^ 2 * d ^ 10 + (84393004250850871536 : ℤ) * z ^ 3 * d ^ 9 + (-14958949934193306480 : ℤ) * z ^ 4 * d ^ 8

theorem fourPart1234_12_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    1929769327071074110879 * d ^ 12 ≤ fourPart1234_12 z d ∧ fourPart1234_12 z d ≤ 1929772618860362757340 * d ^ 12 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 11 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 10 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 9 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 8 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 12 := pow_nonneg hd 12
  have hid : 10000000000000000000000000000 * fourPart1234_12 z d =
      (19297726188603627573399573960373258139767911480720 : ℤ) * w ^ 0 * d ^ 12 + (-10972629822009932433522919573610519969789760 : ℤ) * w ^ 1 * d ^ 11 + (-380048299061220329590116547638498720 : ℤ) * w ^ 2 * d ^ 10 + (-4175957697062842431210911040 : ℤ) * w ^ 3 * d ^ 9 + (-14958949934193306480 : ℤ) * w ^ 4 * d ^ 8 := by
    dsimp [w, fourPart1234_12]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_13 (z d : ℤ) : ℤ :=
  (880276569123285846225 : ℤ) * z ^ 0 * d ^ 13 + (1052204838169390399830 : ℤ) * z ^ 1 * d ^ 12 + (374894568115120168545 : ℤ) * z ^ 2 * d ^ 11 + (17285820918103752495 : ℤ) * z ^ 3 * d ^ 10 + (-9342960861024606936 : ℤ) * z ^ 4 * d ^ 9

theorem fourPart1234_13_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    18115933320162034844 * d ^ 13 ≤ fourPart1234_13 z d ∧ fourPart1234_13 z d ≤ 18119255704907881086 * d ^ 13 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 12 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 11 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 10 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 9 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 13 := pow_nonneg hd 13
  have hid : 10000000000000000000000000000 * fourPart1234_13 z d =
      (181192557049078810851774730049956198118213080104 : ℤ) * w ^ 0 * d ^ 13 + (-11074614878823560952847434418548029458921632 : ℤ) * w ^ 1 * d ^ 12 + (-313554626953166118876786065676082704 : ℤ) * w ^ 2 * d ^ 11 + (-2962429687621568838296672928 : ℤ) * w ^ 3 * d ^ 10 + (-9342960861024606936 : ℤ) * w ^ 4 * d ^ 9 := by
    dsimp [w, fourPart1234_13]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_14 (z d : ℤ) : ℤ :=
  (211955020139305705115 : ℤ) * z ^ 0 * d ^ 14 + (178261767041315521780 : ℤ) * z ^ 1 * d ^ 13 + (36683129246587928385 : ℤ) * z ^ 2 * d ^ 12 + (-1851533049857219875 : ℤ) * z ^ 3 * d ^ 11 + (-645202297580335010 : ℤ) * z ^ 4 * d ^ 10

theorem fourPart1234_14_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -101810313933018464 * d ^ 14 ≤ fourPart1234_14 z d ∧ fourPart1234_14 z d ≤ -101473990636047936 * d ^ 14 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 13 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 12 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 11 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 10 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 14 := pow_nonneg hd 14
  have hid : 10000000000000000000000000000 * fourPart1234_14 z d =
      (-1014739906360479360581646365084455091356748610 : ℤ) * w ^ 0 * d ^ 14 + (-1121077571853447966693304478558358754764120 : ℤ) * w ^ 1 * d ^ 13 + (-28238324748214258053414685672036140 : ℤ) * w ^ 2 * d ^ 12 + (-235030735484547354424355480 : ℤ) * w ^ 3 * d ^ 11 + (-645202297580335010 : ℤ) * w ^ 4 * d ^ 10 := by
    dsimp [w, fourPart1234_14]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_15 (z d : ℤ) : ℤ :=
  (15791093755593831250 : ℤ) * z ^ 0 * d ^ 15 + (9162928500337696520 : ℤ) * z ^ 1 * d ^ 14 + (82185416781393600 : ℤ) * z ^ 2 * d ^ 13 + (-306574748673634250 : ℤ) * z ^ 3 * d ^ 12 + (16669529120214695 : ℤ) * z ^ 4 * d ^ 11

theorem fourPart1234_15_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -304207648225 * d ^ 15 ≤ fourPart1234_15 z d ∧ fourPart1234_15 z d ≤ 4141565694531 * d ^ 15 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 14 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 13 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 12 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 11 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 15 := pow_nonneg hd 15
  have hid : 10000000000000000000000000000 * fourPart1234_15 z d =
      (41415656945303440304043161190549952799895 : ℤ) * w ^ 0 * d ^ 15 + (-14819244297558175868200195166472872115660 : ℤ) * w ^ 1 * d ^ 14 + (-59430779306719029116997671547270 : ℤ) * w ^ 2 * d ^ 13 + (2528172221739902081667860 : ℤ) * w ^ 3 * d ^ 12 + (16669529120214695 : ℤ) * w ^ 4 * d ^ 11 := by
    dsimp [w, fourPart1234_15]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_16 (z d : ℤ) : ℤ :=
  (4187124807971662900 : ℤ) * z ^ 0 * d ^ 16 + (2063954713690020200 : ℤ) * z ^ 1 * d ^ 15 + (-200061512207308355 : ℤ) * z ^ 2 * d ^ 14 + (-68645128863193880 : ℤ) * z ^ 3 * d ^ 13 + (6684123843665215 : ℤ) * z ^ 4 * d ^ 12

theorem fourPart1234_16_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3410270 * d ^ 16 ≤ fourPart1234_16 z d ∧ fourPart1234_16 z d ≤ 5680489 * d ^ 16 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 15 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 14 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 13 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 12 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 16 := pow_nonneg hd 16
  have hid : 10000000000000000000000000000 * fourPart1234_16 z d =
      (55999446234947427574127482150557615 : ℤ) * w ^ 0 * d ^ 16 + (-7298914910675387129313307540021420 : ℤ) * w ^ 1 * d ^ 15 + (89493555147342913550616256752010 : ℤ) * w ^ 2 * d ^ 14 + (1556590601353569382592820 : ℤ) * w ^ 3 * d ^ 13 + (6684123843665215 : ℤ) * w ^ 4 * d ^ 12 := by
    dsimp [w, fourPart1234_16]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1234_17 (z d : ℤ) : ℤ :=
  (502663440868229800 : ℤ) * z ^ 0 * d ^ 17 + (-14730234941225100 : ℤ) * z ^ 1 * d ^ 16 + (-60803705702956650 : ℤ) * z ^ 2 * d ^ 15 + (11717992803518440 : ℤ) * z ^ 3 * d ^ 14 + (-609379057248465 : ℤ) * z ^ 4 * d ^ 13

theorem fourPart1234_17_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -7785 * d ^ 17 ≤ fourPart1234_17 z d ∧ fourPart1234_17 z d ≤ -4875 * d ^ 17 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 16 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 15 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 14 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 13 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 17 := pow_nonneg hd 17
  have hid : 10000000000000000000000000000 * fourPart1234_17 z d =
      (-48755074131034726674380447360865 : ℤ) * w ^ 0 * d ^ 17 + (-2731271486288611604374616777580 : ℤ) * w ^ 1 * d ^ 16 + (-2321995209613530416302577367510 : ℤ) * w ^ 2 * d ^ 15 + (-87314001798807111463820 : ℤ) * w ^ 3 * d ^ 14 + (-609379057248465 : ℤ) * w ^ 4 * d ^ 13 := by
    dsimp [w, fourPart1234_17]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary1234_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 17 < auxiliary1234 z d ∧ auxiliary1234 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := fourPart1234_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := fourPart1234_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := fourPart1234_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := fourPart1234_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := fourPart1234_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := fourPart1234_5_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := fourPart1234_6_bounds z d hd0 hl hu
  obtain ⟨h7l, h7u⟩ := fourPart1234_7_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := fourPart1234_8_bounds z d hd0 hl hu
  obtain ⟨h9l, h9u⟩ := fourPart1234_9_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := fourPart1234_10_bounds z d hd0 hl hu
  obtain ⟨h11l, h11u⟩ := fourPart1234_11_bounds z d hd0 hl hu
  obtain ⟨h12l, h12u⟩ := fourPart1234_12_bounds z d hd0 hl hu
  obtain ⟨h13l, h13u⟩ := fourPart1234_13_bounds z d hd0 hl hu
  obtain ⟨h14l, h14u⟩ := fourPart1234_14_bounds z d hd0 hl hu
  obtain ⟨h15l, h15u⟩ := fourPart1234_15_bounds z d hd0 hl hu
  obtain ⟨h16l, h16u⟩ := fourPart1234_16_bounds z d hd0 hl hu
  obtain ⟨h17l, h17u⟩ := fourPart1234_17_bounds z d hd0 hl hu
  have hp0 : 76293945312500000000000000000000000000000000000000000000000000000000000000000000 * d ^ 0 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 17
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 0)
    norm_num at hmul
    nlinarith only [hmul]
  have hp1 : 1525878906250000000000000000000000000000000000000000000000000000000000000000 * d ^ 1 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 16
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 1)
    norm_num at hmul
    nlinarith only [hmul]
  have hp2 : 30517578125000000000000000000000000000000000000000000000000000000000000 * d ^ 2 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 15
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 2)
    norm_num at hmul
    nlinarith only [hmul]
  have hp3 : 610351562500000000000000000000000000000000000000000000000000000000 * d ^ 3 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 14
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 3)
    norm_num at hmul
    nlinarith only [hmul]
  have hp4 : 12207031250000000000000000000000000000000000000000000000000000 * d ^ 4 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 13
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 4)
    norm_num at hmul
    nlinarith only [hmul]
  have hp5 : 244140625000000000000000000000000000000000000000000000000 * d ^ 5 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 12
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 5)
    norm_num at hmul
    nlinarith only [hmul]
  have hp6 : 4882812500000000000000000000000000000000000000000000 * d ^ 6 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 11
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 6)
    norm_num at hmul
    nlinarith only [hmul]
  have hp7 : 97656250000000000000000000000000000000000000000 * d ^ 7 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 10
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 7)
    norm_num at hmul
    nlinarith only [hmul]
  have hp8 : 1953125000000000000000000000000000000000000 * d ^ 8 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 9
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 8)
    norm_num at hmul
    nlinarith only [hmul]
  have hp9 : 39062500000000000000000000000000000000 * d ^ 9 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 8
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 9)
    norm_num at hmul
    nlinarith only [hmul]
  have hp10 : 781250000000000000000000000000000 * d ^ 10 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 7
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 10)
    norm_num at hmul
    nlinarith only [hmul]
  have hp11 : 15625000000000000000000000000 * d ^ 11 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 6
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 11)
    norm_num at hmul
    nlinarith only [hmul]
  have hp12 : 312500000000000000000000 * d ^ 12 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 5
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 12)
    norm_num at hmul
    nlinarith only [hmul]
  have hp13 : 6250000000000000000 * d ^ 13 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 4
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 13)
    norm_num at hmul
    nlinarith only [hmul]
  have hp14 : 125000000000000 * d ^ 14 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 3
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 14)
    norm_num at hmul
    nlinarith only [hmul]
  have hp15 : 2500000000 * d ^ 15 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 15)
    norm_num at hmul
    nlinarith only [hmul]
  have hp16 : 50000 * d ^ 16 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 1
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 16)
    norm_num at hmul
    nlinarith only [hmul]
  have hdD : 0 < d ^ 17 := by positivity
  have hid : auxiliary1234 z d = fourPart1234_0 z d + fourPart1234_1 z d + fourPart1234_2 z d + fourPart1234_3 z d + fourPart1234_4 z d + fourPart1234_5 z d + fourPart1234_6 z d + fourPart1234_7 z d + fourPart1234_8 z d + fourPart1234_9 z d + fourPart1234_10 z d + fourPart1234_11 z d + fourPart1234_12 z d + fourPart1234_13 z d + fourPart1234_14 z d + fourPart1234_15 z d + fourPart1234_16 z d + fourPart1234_17 z d := by
    unfold auxiliary1234 fourPart1234_0 fourPart1234_1 fourPart1234_2 fourPart1234_3 fourPart1234_4 fourPart1234_5 fourPart1234_6 fourPart1234_7 fourPart1234_8 fourPart1234_9 fourPart1234_10 fourPart1234_11 fourPart1234_12 fourPart1234_13 fourPart1234_14 fourPart1234_15 fourPart1234_16 fourPart1234_17
    ring
  rw [hid]
  norm_num at h0l h0u
  constructor <;> nlinarith only [h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u, h7l, h7u, h8l, h8u, h9l, h9u, h10l, h10u, h11l, h11u, h12l, h12u, h13l, h13u, h14l, h14u, h15l, h15u, h16l, h16u, h17l, h17u, hp0, hp1, hp2, hp3, hp4, hp5, hp6, hp7, hp8, hp9, hp10, hp11, hp12, hp13, hp14, hp15, hp16, hdD]

def fourPart2345_0 (z d : ℤ) : ℤ :=
  0

theorem fourPart2345_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ fourPart2345_0 z d ∧ fourPart2345_0 z d ≤ 0 * d ^ 0 := by
  norm_num [fourPart2345_0]

def fourPart2345_1 (z d : ℤ) : ℤ :=
  (91173560536673966592 : ℤ) * z ^ 1 * d ^ 0

theorem fourPart2345_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    764894997183165344609 * d ^ 1 ≤ fourPart2345_1 z d ∧ fourPart2345_1 z d ≤ 764895024535233505612 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * fourPart2345_1 z d =
      (7648949971831653446094319104000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (91173560536673966592000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, fourPart2345_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def fourPart2345_2 (z d : ℤ) : ℤ :=
  (-652566941632815247872 : ℤ) * z ^ 1 * d ^ 1 + (15195593422778994432 : ℤ) * z ^ 2 * d ^ 0

theorem fourPart2345_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -4405163858621424480215 * d ^ 2 ≤ fourPart2345_2 z d ∧ fourPart2345_2 z d ≤ -4405163739340840341083 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * fourPart2345_2 z d =
      (-44051637393408417086865820373792179200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (-397601942571760133002189363200000000000000 : ℤ) * w ^ 1 * d ^ 1 + (1519559342277899443200000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, fourPart2345_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def fourPart2345_3 (z d : ℤ) : ℤ :=
  (253259890379649907200 : ℤ) * z ^ 0 * d ^ 3 + (2545290275050073564928 : ℤ) * z ^ 1 * d ^ 2 + (-108761156938802541312 : ℤ) * z ^ 2 * d ^ 1 + (-10130395615185996288 : ℤ) * z ^ 3 * d ^ 0

theorem fourPart2345_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    7970207519497000547978 * d ^ 3 ≤ fourPart2345_3 z d ∧ fourPart2345_3 z d ≤ 7970207945080955296293 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * fourPart2345_3 z d =
      (79702079450809552962924920054079251958543360000000 : ℤ) * w ^ 0 * d ^ 3 + (-1418613073376533022076217966841564160000000 : ℤ) * w ^ 1 * d ^ 2 + (-36372615599985765618181063680000000 : ℤ) * w ^ 2 * d ^ 1 + (-101303956151859962880000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, fourPart2345_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def fourPart2345_4 (z d : ℤ) : ℤ :=
  (-1812685948980042355200 : ℤ) * z ^ 0 * d ^ 4 + (-6485013141490121586048 : ℤ) * z ^ 1 * d ^ 3 + (417180048886688652288 : ℤ) * z ^ 2 * d ^ 2 + (72507437959201694208 : ℤ) * z ^ 3 * d ^ 1 + (-1688399269197666048 : ℤ) * z ^ 4 * d ^ 0

theorem fourPart2345_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    7593637458736264048669 * d ^ 4 ≤ fourPart2345_4 z d ∧ fourPart2345_4 z d ≤ 7593641009776103318810 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * fourPart2345_4 z d =
      (75936374587362640486693537998229067214901876668672 : ℤ) * w ^ 0 * d ^ 4 + (11836799005514072946145821419926054877236224 : ℤ) * w ^ 1 * d ^ 3 + (152906575695558931459657154278614528 : ℤ) * w ^ 2 * d ^ 2 + (158485492789672242369309696 : ℤ) * w ^ 3 * d ^ 1 + (-1688399269197666048 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, fourPart2345_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_5 (z d : ℤ) : ℤ :=
  (6552474988140697870080 : ℤ) * z ^ 0 * d ^ 5 + (11695761187338597434784 : ℤ) * z ^ 1 * d ^ 4 + (-1094970608197429943808 : ℤ) * z ^ 2 * d ^ 3 + (-275306033809129658112 : ℤ) * z ^ 3 * d ^ 2 + (12084572993200282368 : ℤ) * z ^ 4 * d ^ 1

theorem fourPart2345_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -75090300869193160048641 * d ^ 5 ≤ fourPart2345_5 z d ∧ fourPart2345_5 z d ≤ -75090289989819411134638 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * fourPart2345_5 z d =
      (-750902899898194111346422885835755200318707090257152 : ℤ) * w ^ 0 * d ^ 5 + (-36264578286839069841766497029333416159632384 : ℤ) * w ^ 1 * d ^ 4 + (-292069196450121142345827956965314048 : ℤ) * w ^ 2 * d ^ 3 + (1302251035593874848841073664 : ℤ) * w ^ 3 * d ^ 2 + (12084572993200282368 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, fourPart2345_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_6 (z d : ℤ) : ℤ :=
  (-14425239624363200177280 : ℤ) * z ^ 0 * d ^ 6 + (-14911077794858777585952 : ℤ) * z ^ 1 * d ^ 5 + (2214326608178286965904 : ℤ) * z ^ 2 * d ^ 4 + (660594471791354232192 : ℤ) * z ^ 3 * d ^ 3 + (-45102672639856023552 : ℤ) * z ^ 4 * d ^ 2

theorem fourPart2345_6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    182965341945175233512859 * d ^ 6 ≤ fourPart2345_6 z d ∧ fourPart2345_6 z d ≤ 182965358504800973911141 * d ^ 6 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 5 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 4 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 3 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 2 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  have hid : 10000000000000000000000000000 * fourPart2345_6 z d =
      (1829653419451752520803529177323359696066001683785728 : ℤ) * w ^ 0 * d ^ 6 + (55198752406102624458329174074316530612248576 : ℤ) * w ^ 1 * d ^ 5 + (-20630522553231578309036040450428928 : ℤ) * w ^ 2 * d ^ 4 + (-8529499574816029134690410496 : ℤ) * w ^ 3 * d ^ 3 + (-45102672639856023552 : ℤ) * w ^ 4 * d ^ 2 := by
    dsimp [w, fourPart2345_6]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_7 (z d : ℤ) : ℤ :=
  (20063956567278380073120 : ℤ) * z ^ 0 * d ^ 7 + (12220227870656021008416 : ℤ) * z ^ 1 * d ^ 6 + (-3676147545548566343952 : ℤ) * z ^ 2 * d ^ 5 + (-1077614466924253270176 : ℤ) * z ^ 3 * d ^ 4 + (105416312962539128832 : ℤ) * z ^ 4 * d ^ 3

theorem fourPart2345_7_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -250249526011587543638209 * d ^ 7 ≤ fourPart2345_7 z d ∧ fourPart2345_7 z d ≤ -250249517606664936087231 * d ^ 7 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 6 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 5 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 4 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 3 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 7 := pow_nonneg hd 7
  have hid : 10000000000000000000000000000 * fourPart2345_7 z d =
      (-2502495176066661707979932772730053201991548915099648 : ℤ) * w ^ 0 * d ^ 7 + (-28016404576134050978812251550866217014153216 : ℤ) * w ^ 1 * d ^ 6 + (1371900772501767244641151007984590848 : ℤ) * w ^ 2 * d ^ 5 + (24599203153926964005738663936 : ℤ) * w ^ 3 * d ^ 4 + (105416312962539128832 : ℤ) * w ^ 4 * d ^ 3 := by
    dsimp [w, fourPart2345_7]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_8 (z d : ℤ) : ℤ :=
  (-15857088304713571026720 : ℤ) * z ^ 0 * d ^ 8 + (-3181720585435953768216 : ℤ) * z ^ 1 * d ^ 7 + (4991525973971459948016 : ℤ) * z ^ 2 * d ^ 6 + (1186588982180843885088 : ℤ) * z ^ 3 * d ^ 5 + (-164871865158196989456 : ℤ) * z ^ 4 * d ^ 4

theorem fourPart2345_8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    192684274534902494716092 * d ^ 8 ≤ fourPart2345_8 z d ∧ fourPart2345_8 z d ≤ 192684292022482341740099 * d ^ 8 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 7 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 6 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 5 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 4 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  have hid : 10000000000000000000000000000 * fourPart2345_8 z d =
      (1926842920224823417400983799675272392119541348870384 : ℤ) * w ^ 0 * d ^ 8 + (-58291922392781515816110108561967929508999872 : ℤ) * w ^ 1 * d ^ 7 + (-3476877148305828685437160485706629984 : ℤ) * w ^ 2 * d ^ 6 + (-43461406422165938971746333888 : ℤ) * w ^ 3 * d ^ 5 + (-164871865158196989456 : ℤ) * w ^ 4 * d ^ 4 := by
    dsimp [w, fourPart2345_8]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_9 (z d : ℤ) : ℤ :=
  (2761895290851522531360 : ℤ) * z ^ 0 * d ^ 9 + (-6646507591618221708240 : ℤ) * z ^ 1 * d ^ 8 + (-5192934694770737261376 : ℤ) * z ^ 2 * d ^ 7 + (-822282029323742630304 : ℤ) * z ^ 3 * d ^ 6 + (169893948644580236688 : ℤ) * z ^ 4 * d ^ 5

theorem fourPart2345_9_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -62417722561491674257153 * d ^ 9 ≤ fourPart2345_9 z d ∧ fourPart2345_9 z d ≤ -62417682400917921373608 * d ^ 9 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 8 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 7 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 6 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 5 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 9 := pow_nonneg hd 9
  have hid : 10000000000000000000000000000 * fourPart2345_9 z d =
      (-624177225614916742571520719446754693187295346827632 : ℤ) * w ^ 0 * d ^ 9 + (133868565419129579177512559790665241673227456 : ℤ) * w ^ 1 * d ^ 8 + (4585716153018383314087180258645518432 : ℤ) * w ^ 2 * d ^ 7 + (48789774412948733013978681024 : ℤ) * w ^ 3 * d ^ 6 + (169893948644580236688 : ℤ) * w ^ 4 * d ^ 5 := by
    dsimp [w, fourPart2345_9]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_10 (z d : ℤ) : ℤ :=
  (7327230366440041375320 : ℤ) * z ^ 0 * d ^ 10 + (9808113151695260019024 : ℤ) * z ^ 1 * d ^ 9 + (3589238396545708111920 : ℤ) * z ^ 2 * d ^ 8 + (259938243806693744664 : ℤ) * z ^ 3 * d ^ 7 + (-104009527350859693104 : ℤ) * z ^ 4 * d ^ 6

theorem fourPart2345_10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -19516244815636994911952 * d ^ 10 ≤ fourPart2345_10 z d ∧ fourPart2345_10 z d ≤ -19516208593165090075149 * d ^ 10 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 9 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 8 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 7 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 6 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  have hid : 10000000000000000000000000000 * fourPart2345_10 z d =
      (-195162085931650900751492468942425925051113858634544 : ℤ) * w ^ 0 * d ^ 10 + (-120741562878711244943268352747198911409654848 : ℤ) * w ^ 1 * d ^ 9 + (-3379137046132662745497724642319501856 : ℤ) * w ^ 2 * d ^ 8 + (-32303879718973494057232828992 : ℤ) * w ^ 3 * d ^ 7 + (-104009527350859693104 : ℤ) * w ^ 4 * d ^ 6 := by
    dsimp [w, fourPart2345_10]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_11 (z d : ℤ) : ℤ :=
  (-6509543350338456219360 : ℤ) * z ^ 0 * d ^ 11 + (-5338651312640919780135 : ℤ) * z ^ 1 * d ^ 10 + (-1092100020387280850376 : ℤ) * z ^ 2 * d ^ 9 + (67751953223291554320 : ℤ) * z ^ 3 * d ^ 8 + (21534934708875825504 : ℤ) * z ^ 4 * d ^ 7

theorem fourPart2345_11_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    18520894620005057787327 * d ^ 11 ≤ fourPart2345_11 z d ∧ fourPart2345_11 z d ≤ 18520907071764898820781 * d ^ 11 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 10 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 9 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 8 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 7 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 11 := pow_nonneg hd 11
  have hid : 10000000000000000000000000000 * fourPart2345_11 z d =
      (185208946200050577873275038831182589304720726830944 : ℤ) * w ^ 0 * d ^ 11 + (41505863224611718768808833030366444573803648 : ℤ) * w ^ 1 * d ^ 10 + (970722128513613492940011024406395456 : ℤ) * w ^ 2 * d ^ 9 + (7904160118177558902308184192 : ℤ) * w ^ 3 * d ^ 8 + (21534934708875825504 : ℤ) * w ^ 4 * d ^ 7 := by
    dsimp [w, fourPart2345_11]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_12 (z d : ℤ) : ℤ :=
  (1028411781208443999360 : ℤ) * z ^ 0 * d ^ 12 + (48005983649963391525 : ℤ) * z ^ 1 * d ^ 11 + (-392593272576050483370 : ℤ) * z ^ 2 * d ^ 10 + (-84393004250850871536 : ℤ) * z ^ 3 * d ^ 9 + (14958949934193306480 : ℤ) * z ^ 4 * d ^ 8

theorem fourPart2345_12_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -1929772618860362757340 * d ^ 12 ≤ fourPart2345_12 z d ∧ fourPart2345_12 z d ≤ -1929769327071074110879 * d ^ 12 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 11 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 10 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 9 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 8 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 12 := pow_nonneg hd 12
  have hid : 10000000000000000000000000000 * fourPart2345_12 z d =
      (-19297726188603627573399573960373258139767911480720 : ℤ) * w ^ 0 * d ^ 12 + (10972629822009932433522919573610519969789760 : ℤ) * w ^ 1 * d ^ 11 + (380048299061220329590116547638498720 : ℤ) * w ^ 2 * d ^ 10 + (4175957697062842431210911040 : ℤ) * w ^ 3 * d ^ 9 + (14958949934193306480 : ℤ) * w ^ 4 * d ^ 8 := by
    dsimp [w, fourPart2345_12]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_13 (z d : ℤ) : ℤ :=
  (880276569123285846225 : ℤ) * z ^ 0 * d ^ 13 + (1052204838169390399830 : ℤ) * z ^ 1 * d ^ 12 + (374894568115120168545 : ℤ) * z ^ 2 * d ^ 11 + (17285820918103752495 : ℤ) * z ^ 3 * d ^ 10 + (-9342960861024606936 : ℤ) * z ^ 4 * d ^ 9

theorem fourPart2345_13_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    18115933320162034844 * d ^ 13 ≤ fourPart2345_13 z d ∧ fourPart2345_13 z d ≤ 18119255704907881086 * d ^ 13 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 12 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 11 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 10 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 9 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 13 := pow_nonneg hd 13
  have hid : 10000000000000000000000000000 * fourPart2345_13 z d =
      (181192557049078810851774730049956198118213080104 : ℤ) * w ^ 0 * d ^ 13 + (-11074614878823560952847434418548029458921632 : ℤ) * w ^ 1 * d ^ 12 + (-313554626953166118876786065676082704 : ℤ) * w ^ 2 * d ^ 11 + (-2962429687621568838296672928 : ℤ) * w ^ 3 * d ^ 10 + (-9342960861024606936 : ℤ) * w ^ 4 * d ^ 9 := by
    dsimp [w, fourPart2345_13]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_14 (z d : ℤ) : ℤ :=
  (-211955020139305705115 : ℤ) * z ^ 0 * d ^ 14 + (-178261767041315521780 : ℤ) * z ^ 1 * d ^ 13 + (-36683129246587928385 : ℤ) * z ^ 2 * d ^ 12 + (1851533049857219875 : ℤ) * z ^ 3 * d ^ 11 + (645202297580335010 : ℤ) * z ^ 4 * d ^ 10

theorem fourPart2345_14_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    101473990636047936 * d ^ 14 ≤ fourPart2345_14 z d ∧ fourPart2345_14 z d ≤ 101810313933018464 * d ^ 14 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 13 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 12 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 11 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 10 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 14 := pow_nonneg hd 14
  have hid : 10000000000000000000000000000 * fourPart2345_14 z d =
      (1014739906360479360581646365084455091356748610 : ℤ) * w ^ 0 * d ^ 14 + (1121077571853447966693304478558358754764120 : ℤ) * w ^ 1 * d ^ 13 + (28238324748214258053414685672036140 : ℤ) * w ^ 2 * d ^ 12 + (235030735484547354424355480 : ℤ) * w ^ 3 * d ^ 11 + (645202297580335010 : ℤ) * w ^ 4 * d ^ 10 := by
    dsimp [w, fourPart2345_14]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_15 (z d : ℤ) : ℤ :=
  (15791093755593831250 : ℤ) * z ^ 0 * d ^ 15 + (9162928500337696520 : ℤ) * z ^ 1 * d ^ 14 + (82185416781393600 : ℤ) * z ^ 2 * d ^ 13 + (-306574748673634250 : ℤ) * z ^ 3 * d ^ 12 + (16669529120214695 : ℤ) * z ^ 4 * d ^ 11

theorem fourPart2345_15_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -304207648225 * d ^ 15 ≤ fourPart2345_15 z d ∧ fourPart2345_15 z d ≤ 4141565694531 * d ^ 15 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 14 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 13 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 12 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 11 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 15 := pow_nonneg hd 15
  have hid : 10000000000000000000000000000 * fourPart2345_15 z d =
      (41415656945303440304043161190549952799895 : ℤ) * w ^ 0 * d ^ 15 + (-14819244297558175868200195166472872115660 : ℤ) * w ^ 1 * d ^ 14 + (-59430779306719029116997671547270 : ℤ) * w ^ 2 * d ^ 13 + (2528172221739902081667860 : ℤ) * w ^ 3 * d ^ 12 + (16669529120214695 : ℤ) * w ^ 4 * d ^ 11 := by
    dsimp [w, fourPart2345_15]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_16 (z d : ℤ) : ℤ :=
  (-4187124807971662900 : ℤ) * z ^ 0 * d ^ 16 + (-2063954713690020200 : ℤ) * z ^ 1 * d ^ 15 + (200061512207308355 : ℤ) * z ^ 2 * d ^ 14 + (68645128863193880 : ℤ) * z ^ 3 * d ^ 13 + (-6684123843665215 : ℤ) * z ^ 4 * d ^ 12

theorem fourPart2345_16_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -5680489 * d ^ 16 ≤ fourPart2345_16 z d ∧ fourPart2345_16 z d ≤ -3410270 * d ^ 16 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 15 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 14 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 13 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 12 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 16 := pow_nonneg hd 16
  have hid : 10000000000000000000000000000 * fourPart2345_16 z d =
      (-55999446234947427574127482150557615 : ℤ) * w ^ 0 * d ^ 16 + (7298914910675387129313307540021420 : ℤ) * w ^ 1 * d ^ 15 + (-89493555147342913550616256752010 : ℤ) * w ^ 2 * d ^ 14 + (-1556590601353569382592820 : ℤ) * w ^ 3 * d ^ 13 + (-6684123843665215 : ℤ) * w ^ 4 * d ^ 12 := by
    dsimp [w, fourPart2345_16]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart2345_17 (z d : ℤ) : ℤ :=
  (502663440868229800 : ℤ) * z ^ 0 * d ^ 17 + (-14730234941225100 : ℤ) * z ^ 1 * d ^ 16 + (-60803705702956650 : ℤ) * z ^ 2 * d ^ 15 + (11717992803518440 : ℤ) * z ^ 3 * d ^ 14 + (-609379057248465 : ℤ) * z ^ 4 * d ^ 13

theorem fourPart2345_17_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -7785 * d ^ 17 ≤ fourPart2345_17 z d ∧ fourPart2345_17 z d ≤ -4875 * d ^ 17 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 16 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 15 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 14 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 13 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 17 := pow_nonneg hd 17
  have hid : 10000000000000000000000000000 * fourPart2345_17 z d =
      (-48755074131034726674380447360865 : ℤ) * w ^ 0 * d ^ 17 + (-2731271486288611604374616777580 : ℤ) * w ^ 1 * d ^ 16 + (-2321995209613530416302577367510 : ℤ) * w ^ 2 * d ^ 15 + (-87314001798807111463820 : ℤ) * w ^ 3 * d ^ 14 + (-609379057248465 : ℤ) * w ^ 4 * d ^ 13 := by
    dsimp [w, fourPart2345_17]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary2345_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 17 < auxiliary2345 z d ∧ auxiliary2345 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := fourPart2345_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := fourPart2345_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := fourPart2345_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := fourPart2345_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := fourPart2345_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := fourPart2345_5_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := fourPart2345_6_bounds z d hd0 hl hu
  obtain ⟨h7l, h7u⟩ := fourPart2345_7_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := fourPart2345_8_bounds z d hd0 hl hu
  obtain ⟨h9l, h9u⟩ := fourPart2345_9_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := fourPart2345_10_bounds z d hd0 hl hu
  obtain ⟨h11l, h11u⟩ := fourPart2345_11_bounds z d hd0 hl hu
  obtain ⟨h12l, h12u⟩ := fourPart2345_12_bounds z d hd0 hl hu
  obtain ⟨h13l, h13u⟩ := fourPart2345_13_bounds z d hd0 hl hu
  obtain ⟨h14l, h14u⟩ := fourPart2345_14_bounds z d hd0 hl hu
  obtain ⟨h15l, h15u⟩ := fourPart2345_15_bounds z d hd0 hl hu
  obtain ⟨h16l, h16u⟩ := fourPart2345_16_bounds z d hd0 hl hu
  obtain ⟨h17l, h17u⟩ := fourPart2345_17_bounds z d hd0 hl hu
  have hp0 : 76293945312500000000000000000000000000000000000000000000000000000000000000000000 * d ^ 0 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 17
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 0)
    norm_num at hmul
    nlinarith only [hmul]
  have hp1 : 1525878906250000000000000000000000000000000000000000000000000000000000000000 * d ^ 1 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 16
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 1)
    norm_num at hmul
    nlinarith only [hmul]
  have hp2 : 30517578125000000000000000000000000000000000000000000000000000000000000 * d ^ 2 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 15
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 2)
    norm_num at hmul
    nlinarith only [hmul]
  have hp3 : 610351562500000000000000000000000000000000000000000000000000000000 * d ^ 3 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 14
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 3)
    norm_num at hmul
    nlinarith only [hmul]
  have hp4 : 12207031250000000000000000000000000000000000000000000000000000 * d ^ 4 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 13
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 4)
    norm_num at hmul
    nlinarith only [hmul]
  have hp5 : 244140625000000000000000000000000000000000000000000000000 * d ^ 5 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 12
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 5)
    norm_num at hmul
    nlinarith only [hmul]
  have hp6 : 4882812500000000000000000000000000000000000000000000 * d ^ 6 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 11
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 6)
    norm_num at hmul
    nlinarith only [hmul]
  have hp7 : 97656250000000000000000000000000000000000000000 * d ^ 7 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 10
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 7)
    norm_num at hmul
    nlinarith only [hmul]
  have hp8 : 1953125000000000000000000000000000000000000 * d ^ 8 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 9
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 8)
    norm_num at hmul
    nlinarith only [hmul]
  have hp9 : 39062500000000000000000000000000000000 * d ^ 9 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 8
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 9)
    norm_num at hmul
    nlinarith only [hmul]
  have hp10 : 781250000000000000000000000000000 * d ^ 10 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 7
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 10)
    norm_num at hmul
    nlinarith only [hmul]
  have hp11 : 15625000000000000000000000000 * d ^ 11 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 6
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 11)
    norm_num at hmul
    nlinarith only [hmul]
  have hp12 : 312500000000000000000000 * d ^ 12 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 5
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 12)
    norm_num at hmul
    nlinarith only [hmul]
  have hp13 : 6250000000000000000 * d ^ 13 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 4
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 13)
    norm_num at hmul
    nlinarith only [hmul]
  have hp14 : 125000000000000 * d ^ 14 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 3
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 14)
    norm_num at hmul
    nlinarith only [hmul]
  have hp15 : 2500000000 * d ^ 15 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 15)
    norm_num at hmul
    nlinarith only [hmul]
  have hp16 : 50000 * d ^ 16 ≤ d ^ 17 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 1
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 16)
    norm_num at hmul
    nlinarith only [hmul]
  have hdD : 0 < d ^ 17 := by positivity
  have hid : auxiliary2345 z d = fourPart2345_0 z d + fourPart2345_1 z d + fourPart2345_2 z d + fourPart2345_3 z d + fourPart2345_4 z d + fourPart2345_5 z d + fourPart2345_6 z d + fourPart2345_7 z d + fourPart2345_8 z d + fourPart2345_9 z d + fourPart2345_10 z d + fourPart2345_11 z d + fourPart2345_12 z d + fourPart2345_13 z d + fourPart2345_14 z d + fourPart2345_15 z d + fourPart2345_16 z d + fourPart2345_17 z d := by
    unfold auxiliary2345 fourPart2345_0 fourPart2345_1 fourPart2345_2 fourPart2345_3 fourPart2345_4 fourPart2345_5 fourPart2345_6 fourPart2345_7 fourPart2345_8 fourPart2345_9 fourPart2345_10 fourPart2345_11 fourPart2345_12 fourPart2345_13 fourPart2345_14 fourPart2345_15 fourPart2345_16 fourPart2345_17
    ring
  rw [hid]
  norm_num at h0l h0u
  constructor <;> nlinarith only [h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u, h7l, h7u, h8l, h8u, h9l, h9u, h10l, h10u, h11l, h11u, h12l, h12u, h13l, h13u, h14l, h14u, h15l, h15u, h16l, h16u, h17l, h17u, hp0, hp1, hp2, hp3, hp4, hp5, hp6, hp7, hp8, hp9, hp10, hp11, hp12, hp13, hp14, hp15, hp16, hdD]

/-- info: 'B686Round6AHeight.high_offset_monomial_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms high_offset_monomial_bounds
/-- info: 'B686Round6AHeight.auxiliary1235_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1235_bounds
/-- info: 'B686Round6AHeight.auxiliary1345_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1345_bounds
/-- info: 'B686Round6AHeight.auxiliary1234_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1234_bounds
/-- info: 'B686Round6AHeight.auxiliary2345_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary2345_bounds
end B686Round6AHeight
