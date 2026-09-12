from pathlib import Path
from itertools import permutations,combinations
from math import ceil
import json,hashlib,datetime,re,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
TASK=ROOT/'research/tasks/B699-Binomial'
RUN=TASK/'runs/20260911-low-index-lean-513dc7cc'
OLD=TASK/'runs/20260910-i13-closure-ad35779e/delivery'
PROC=ROOT/'research/external-results/20260911-proc-r2-ea89a10a'
PAY=PROC/'payload/b699-proc-r2-resumed-20260911'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-route-inventory-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def put(n,v):
 p=OUT/n;text=json.dumps(v,ensure_ascii=False,indent=2)+'\n'
 if p.exists():
  assert p.read_text(encoding='utf-8')==text,n
 else:p.write_text(text,encoding='utf-8')
def write(n,s):
 p=OUT/n
 if p.exists():
  assert p.read_text(encoding='utf-8')==s,n
 else:p.write_text(s,encoding='utf-8')
g=json.loads((OUT/'graph-probe.json').read_text());data=json.loads((OLD/'input/i13_cuts.json').read_text());edges=data['cuts'];ps=[2,3,5,7,11]
selected=g['height8192_minimal_subsets'][0];ids=selected['indices_zero_based']
# Independent verification of the selected eight-row subset, including all
# 120 assignments of the five distinct maximal position weights.
bestw=10**9;bestc=10**9;count=0
for bits in range(1<<len(ids)):
 z={p:0 for p in ps}
 for j,ei in enumerate(ids):
  e=edges[ei];p,w=(e['p'],e['wp']) if bits>>j&1 else(e['q'],e['wq']);z[p]=max(z[p],w)
 v=[z[p] for p in ps];s=sum(v)
 bestw=min(bestw,min(sum(a*b for a,b in zip(w,v)) for w in permutations([12,13,14,15,16])))
 bestc=min(bestc,min(s+max(0,1000-v[a]-v[b]) for a,b in combinations(range(5),2)))
 count+=1
assert count==256 and bestw==12183 and bestc==1304
assert 8192*(bestw-12000)>=658000+bestw
assert 8192*14*(bestc-1000)>=476000+14*bestc
put('selected-eight-check.json',{'status':'EXACT_FINITE_GRAPH_CHECK_NOT_LEAN','source_graph_sha256':sha(OUT/'graph-probe.json'),'selected_indices_zero_based':ids,'orientations':count,'position_weight_permutations_each':120,'weighted_min':bestw,'collision_min':bestc,'distinct_net_exponent':183,'collision_net_exponent':4256,'height_bits':8192,'height_algebra_checks':True,'scope':'Same single fixed11-edge graph probe; independent verification of chosen subset, no new seed or analytic estimate.'})
put('selected-cuts.json',{'status':'CANDIDATE_DEPENDENCY_SUBSET_NOT_ACCEPTED_EDGES','i':13,'height_n_bits':8192,'height_Y_bits':8191,'source_indices_zero_based':ids,'cuts':[dict(source_index=i,**edges[i]) for i in ids],'source_input_sha256':sha(OLD/'input/i13_cuts.json'),'warning':'L1,m0 are old BFT publication inputs, not new Lean-proved G bounds. Keep m>m0 strict; both deltas still required.'})
oldlean=TASK/'runs/20260909-low-index-structure-b41a5a63/lean'
source_groups={
 'locked_target_and_current_frontier':[TASK/'README.md',RUN/'FRONTIER.md',RUN/'target-status.json'],
 'scope_correction':[TASK/'runs/20260910-pade-three-closure-4edad426/delivery/REPORT.md',TASK/'runs/20260910-pade-three-closure-4edad426/delivery/SOURCE_MAP.md'],
 'actual_i13_source':[OLD/'README.md',OLD/'REPORT.md',OLD/'notes/PROOFS.md',OLD/'sources/SOURCE_AUDIT.md',OLD/'input/i13_cuts.json',OLD/'outputs/i13_graph_check.json',OLD/'outputs/i13_cuts_certified.json',OLD/'outputs/i13_cuts_independent.json',OLD/'outputs/i13_block_check.json',OLD/'outputs/crt_checkpoint.json',OLD/'outputs/i13_terminal_check.json',OLD/'code/check_i13_graph.py'],
 'proc_recovery':[PROC/'README.md',PROC/'intake-check.json',PAY/'REPORT.md',PAY/'notes/PADE_MINIMAL_INTERFACE.md',PAY/'notes/PROOFS.md',PAY/'notes/THRESHOLDS.md'],
 'general_lean':[oldlean/'SmallPrimeLocalization.lean',oldlean/'CofactorCover.lean',oldlean/'LargeSmallPowers.lean',oldlean/'LargeDivisorWitness.lean',RUN/'lean/PadeInteger.lean',RUN/'lean/Pade/Rows.lean',RUN/'lean/Pade/Content.lean',RUN/'lean/Pade/RawDet.lean',RUN/'lean/Moment/Identity.lean',RUN/'lean/HomRemainder/Remainder.lean',RUN/'lean/Growth/ActualKernel.lean',RUN/'lean/Growth/Normalization.lean',RUN/'lean/Factorial/FactorialCommon.lean',RUN/'lean/RationalDivisor/Content.lean',RUN/'lean/I11Edge/Capacity.lean',RUN/'lean/DiscreteSelector/LeastExponent.lean',RUN/'lean/CubicBlock/Checker.lean',RUN/'lean/CubicCover/Pair.lean',RUN/'lean/CubicCover/Composition.lean',RUN/'lean/CrtPair/Consumer.lean'],
 'hardcoded_adapters':[RUN/'lean/I11SmallPrimes/Components.lean',RUN/'lean/I11SmallPrimes/Window.lean',RUN/'lean/I11WeightedProduct/Product.lean',RUN/'lean/I11WeightedProduct/Tail.lean',RUN/'lean/I11Cubic/ActualCubic.lean',RUN/'lean/CrtGrid/Cell.lean',RUN/'lean/CrtGrid/Grid.lean',RUN/'lean/CrtGrid/HeightCap.lean',RUN/'lean/I11TerminalCover/Witness.lean']}
source_map=[]
for group,paths in source_groups.items():
 for p in paths:
  assert p.exists(),p
  source_map.append({'group':group,'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size})
receipt_names=['pade-actual-checkpoint','actual-pade-moment-identity','pade-content','pade-actual-rows','rational-divisor-content','i11-small-prime-localization','i11-pade-capacity','cubic-block-sample-complete','cubic-continuous-cover','cubic-pair-cover','factorial-bound','factorial-extra-5-3','factorial-extra-5-4']
receipts=[]
for name in receipt_names:
 p=RUN/'verification/huan-prerequisites'/(name+'.json');assert p.exists(),p
 r=json.loads(p.read_text());ep=ROOT/r['evidence'];ev=json.loads(ep.read_text());assert ev.get('success') is True
 source_checks=[]
 if 'root' in r:
  sp=ROOT/r['root'];assert sha(sp)==r['source_sha256'].lower()
  source_checks=[{'source':r['root'],'sha_current_match':True}]
 else:
  for cr in ev.get('compile_records',[]):
   oldhash=cr.get('source_sha256_after') or cr.get('source_sha256_before')
   if not oldhash:continue
   sp=ROOT/cr['source'];source_checks.append({'source':cr['source'],'sha_current_match':sp.exists() and sha(sp)==oldhash.lower()})
  assert source_checks and all(x['sha_current_match'] for x in source_checks),source_checks
 receipts.append({'name':name,'path':str(p),'sha256':sha(p),'evidence':str(ep),'evidence_sha256':sha(ep),'success':True,'source_checks':source_checks,'scope':r.get('kind')})
put('SOURCE_MAP.json',{'sources':source_map,'accepted_reuse_receipts_checked':receipts,'old_i13_source_commit_context':'Old source audit records frozen main784ec1d26f33fbb303ab0b0c14ac35919f03d902; this inventory binds current local bytes and makes no new Git/remote verification claim.','proc_status':'CRC/manifest/SHA intake only; no Lean or full-index acceptance. Its six improved thresholds have triples distinct from the selected diagonal i13 families.','readonly_source_files_changed':False})
api_sources=source_groups['general_lean']+source_groups['hardcoded_adapters']
apis=[]
for p in api_sources:
 lines=p.read_text(encoding='utf-8').splitlines();decl=[]
 for k,line in enumerate(lines,1):
  if re.match(r'^(?:noncomputable )?(?:def|theorem|structure|inductive) ',line):
   header=line
   pos=k
   while ':=' not in header and ' where' not in header and pos<len(lines) and len(header)<6000:
    header+='\n'+lines[pos];pos+=1
   header=header.split(':=',1)[0].rstrip()
   decl.append({'line':k,'header':header})
 apis.append({'path':str(p),'sha256':sha(p),'declarations':decl})
put('SOURCE_APIS.json',{'status':'READ_ONLY_SOURCE_DECLARATION_INVENTORY','modules':apis,'warning':'Presence of a declaration is not its acceptance; consult the separately checked receipts and the generic/specialized classification in REPORT.'})
write('REUSE.md','''# i13 复用边界

| 层次 | 可直接复用的已验接口 | i13 尚需的接合 |
|---|---|---|
| 完整素数幂定位 | B699LowIndex.binomial_prime_power_localization，参数i完全通用；指数保留v_p(choose)+v_p(i) | i13的PrimeWindow和五分量定义；p=13必须保留额外一层，不能按p>13改写 |
| 小素数积/三窗口 | small_prime_part_eq_prod_small_primes；noCommon_bernoulli_size(i,r,s) | 实例i13,r4,s9：五小素数{2,3,5,7,11}、λ14、E126、K；n≥156。不是已有绝对高度 |
| 实际Padé代数 | PadeInteger、Content、RawDet、Rows、Moment/Identity、HomRemainder，ABC及x/y通用 | 各新种子必须填真实参数、两δ、a/b及D的尺度；同一个m；D>1的余项D^(2u+1)不得丢 |
| Q/E增长 | Growth/ActualKernel、Normalization和FactorialCommon通用 | 六(c,d)族中(3,2),(5,4),(5,3)已有F实例；(7,4),(7,5),(8,5)需新实际F实例。8种子各自λ/四树/初值要验 |
| G | RationalDivisor.rationalDivisor_le_qContent对全部u,v已验 | 它不是旧BFT的L1。已有(5,4),(5,3)有限G工具可复用实际界，不能直接升级为旧L1,m0；其它族新有限有效指数界仍缺 |
| m选择/素数指数容量 | DiscreteSelector/LeastExponent、I11Edge/Capacity虽有I11名字，声明参数完全通用 | 新权重、y/D/a/b、窗口误差≤12或源24、Y0、m0、短幂证书须重新提供；保留最小m上下界 |
| 立方指数块 | CubicBlock.blockCheck_sound、CubicCover.pairCheck_sound、coverageCheck_append有显式w | 可取w12，但全部25位移、10对素数、旧562块均需新实际验收；原2^8192也是未验输入 |
| CRT参数化 | CrtPair的P,Q,w,d,capA,capC完全参数化，含负/零d、空参数段 | 当前CrtGrid不是完全通用：Cell.shifts固定21项−10..10，rowCheck固定w10；Grid窗口及HeightCap末端绑定offset<11。必须新增w12/25项适配，不能只填i=13 |
| 末端 | B699LowIndex.goodSegmentCheck i r s / goodSegmentCheck_sound、common_of_large_divisor通用 | I11TerminalCover.Witness固定i11,r3,s7及special330。i13须接i13,r4,s9，另给n126的12段/50个j完整消费者及新2228候选区间 |

I11SmallPrimes.Components/Window、I11WeightedProduct.Product/Tail、I11Cubic、I11CRTConsumers、i11的数值表和Special330均为专用适配器。i11的四因素乘积、S640、2^15360、2^98、六对素数、窗口宽10，不能按文件名或成功日志自动用于13。

特别是旧i13使用位置加权，而i11高度链使用四因素标量积。二者的变量都要区分：这里用X_p表示完整binomial p-component，用A_p表示窗口余因子；不能把组件大小界误认为余因子下界。
''')
write('WEIGHTED_BRIDGE_PLAN.md','''# 下一条可独立证明的结构桥：实际分量分配后的加权损失

本节是有完整纸面理由的新接合方案，未写Lean、未Lean验收。它改用实际完整binomial分量，避免为了复述旧报告先形式化每个p的最大赋值函数。

设N_a=n−a（0≤a<13），F=choose(n,13)>0，I=13!，故∏N_a=I·F。对每个p∈support(F.factorization)，令X_p=p^v_p(F)。已验binomial_prime_power_localization提供α(p)<13，使X_p|N_{α(p)}；它实际给更强指数v_p(F)+v_p(13)，因此未丢p=13端点。

同位置被分配到的不同素数完整幂两两互素，故其积C_a整除N_a。定义正整数R_a=N_a/C_a。各X_p恰分配一次，有∏C_a=F；由∏N_a=I·F及F>0消去可得∏R_a=I。若0≤w_a≤W，则

    ∏ N_a^w_a = (∏ R_a^w_a)(∏ X_p^w_{α(p)})
      ≤ I^W · ∏ X_p^w_{α(p)}.

这是精确的通用有限乘积目标；不假设所求加权损失界，也不要求最大位置、p-free余因子或不同位置。证明只需完整因子分解、互素积整除和正整数幂单调。

在i13取W=16、w_a=16−a。大素数p≥13在13窗口内的位置唯一；实际PrimePowerTransfer的a=b+c与完整幂转移给

    X_p^(16−a) | ∏_{b'=0}^7 (j−b')^(8−b')
                     ·∏_{c'=0}^7 (n−j−c')^(8−c').

关键纯Nat权重不等式是16−(b+c)≤(8−b)+(8−c)，均采用Nat截断。必须把所选α(p)与转移位置通过唯一性对齐；p=13先用e+1的定位，不能只调用p>13版本。右侧次数72，故大素数加权积≤n^72。

小素数为五个X_p，令A_p=N_{α(p)}/X_p。若有位置碰撞，X_pX_q|N，因此A_pA_q≥N≥Y（Y=n−12）。若全部位置不同，五个实际位置权重可按排名提升到{12,13,14,15,16}；X_p≥1保证提升不减。对每个权重排列，X_pA_p≤n与图的A_p^1000下界给

    (∏ X_p^w_{α(p)})^1000 ·Y^τ ≤ n^70000.

有限方向检查提供τ=12183；将五个权重的120排列显式覆盖，或证明通用重排引理，均可全程用Nat幂，毋须引入Real.log。再用∏N_a^w_a≥Y^130和n≤2Y，得到n^183<(13!)^16000·2^142183；碰撞分支用χ=1304得净指数4256。两者的最终常数在8192高度位下足够。

这条结构桥本身仍不能代替八条实际Padé边或G增长。它的价值是在那些边可行后，将所有n,j的反例统一推入明确有限高度，而不增加最大赋值选取或实数对数的形式化依赖。
''')
write('REPORT.md','''# i13 下一轮路线盘点

锁定目标：对所有n,j∈Nat，1≤13<j≤n/2时，存在素数p≥13同时整除choose(n,13)、choose(n,j)。等价于证明Common n 13 j；保留p=13与完整素数幂。n≥28由合法性推出，不是新增限制。当前run的B仍0/19；i11主线验收继续，本目录不转移其工作，也没有启动Lean。

来源先作一项校正：20260910-pade-three-closure-4edad426/delivery仅处理11、16、21，其2^4096是旧i11纸面高度，既不属于i13，也不是当前Lean已验前提。i13专门来源是20260910-i13-closure-ad35779e/delivery；旧链是依赖BFT Lemma4.1/Prop5.1的纸面推导及精确证书，初始高度2^8192，随后2^134与CRT/末端。所有采用文件与实际可复用收据都绑定在SOURCE_MAP。

本轮唯一数值探针是既定11边图的完整子集/方向检查，没有搜索新种子、c/d、G或阈值，没有运行旧脚本。三态枚举3^11=177147，逐个核对每个子集恰有2^card方向；全11边复现weighted=12183、scalar=934、collision=1309。标量净指数是−924，明确解释了为什么直接复制i11标量尾部不够。

在仍取旧8192高度位、保留原十三阶乘常数时，唯一最少8边子集是原零基索引[1,2,3,4,6,8,9,10]，即(2,5),(2,7),(7,2),(2,11),(5,3),(3,11),(5,7),(5,11)。它有256方向；另以不同二进制枚举及全部120位置权重排列复核，weighted最低12183，碰撞最低1304，净指数183与4256，原高度代数常数仍成立。可删(3,2),(11,2),(7,3)三条，把7个(c,d)族降为6个，并移除(2,1)整个族。selected-cuts.json保留原常数逐行来源。

若只要求最终有正指数，唯一7边子集可再删(7,2)，但weighted仅12017，净指数17；原阶乘常数迫使至少39413高度位。因此不能拿这7边宣称旧2^8192，更不能直接使用只覆盖旧8192高端的块数据。本盘点优先8边，7边保留为明确有代价的备用方案，不再优化。

最具体的无界路线是：八条真实Padé余因子边＋实际五小素数分配＋位置加权损失/转移＋全部256方向和10类碰撞 ⇒ 原noCommon时n<2^8192。Padé代数、实际归一化和两δ非退化、Q/E增长框架、最小m选择已有已验通用基础；SOURCE_APIS与REUSE列出实际声明。最大缺口仍是八种子的有效G增长及新的位置加权消费者，而不是多项式恒等式。WEIGHTED_BRIDGE_PLAN给出用实际binomial分量替代最大赋值选择的有限乘积证明计划，避免把这个必要数学步骤藏成最终假设。

八边对应六个(c,d)：(3,2),(5,4),(7,4),(5,3),(7,5),(8,5)。F方面前三项中的(3,2),(5,4),(5,3)已有实例；其余(7,4),(7,5),(8,5)需新实际步进证书。两个种子(2,5;c5d4,z3/128)和(5,3;c5d3,z1/4375)与i11现有实际Q/E/G参数吻合，可复用各自真实已证界；但旧i13权重252/256、358/233及8192源阈值不能沿用i11的较弱权重/不同m0而不重新验算。其余新核/比例全部另列实际λ、两δm1常数、G与数值选择义务。D=7与D=4的种子尤其必须保留D^(2u+1)及分别清分母。

旧BFT的L1,m0分别为(3,2):1.5395/138，(5,4):1.3098/50，(7,4):1.6219/60，(5,3):1.5454/86，(7,5):1.4135/74，(8,5):1.5407/53，条件严格m>m0，两δ都要成立。已验有理阶乘下界D≤qContent不等于这些L1，也不能由有限m例子外推。

ProC R2的有用材料是更轻的共同整除对象C2：直接用同层进位下界证明显式素数幂乘积N整除每个实际Q系数，再由已验Padé低阶系数关系转给P。它可避免先形式化运输/精确gcd对称等式；不能删掉N的有效指数下界。该包只有字节接收，没有Lean验收；六个新m0分别用于(5,7,14),(9,12,20),(5,6,15),(8,8,13),(9,11,18),(10,15,19)，不覆盖本路线所需的对角三元组(2,2,1),(4,4,1),(4,4,3),(3,3,2),(5,5,2),(5,5,3)。其旧theta/素数区间尾部仍是独立依赖。

下一项有判别力、但本轮未做的数值测试：先取不可缺的(3,11)边，固定种子243−2·121=1、c7d5、原权重321/407，以已验有理D的乐观渐近率重新检查共同Q/E两侧容量条件。删除此边即使保留其余10边，weighted也只有9398，因此优先于为非必要边写证明。若D连乐观主项都不能支撑它，才转到ProC C2的有效增长/出版theta路线；若可支撑，必须继续给有限m0、实际双δ及全图共同权重，不能把单边成功算作i13高度。没有在本轮作这个第二探针。

下游仍有清楚边界：三窗口参数i13,r4,s9产生λ14、E126。旧3/4小余因子法的净指数恰为0，应改7/10；图探针中的一个小整数控制同时复核K^10·(2^67)^28>(2·13!)^140，这是立方消费者的常数条件，绝不是n<2^67。新五素数立方桥需从实际U与定位得出；可复用通用乘积反证和块数学，不能套用i11的2^98四素数声明。

若初始8192高度真的通过，则旧562块/14050个位移可交给已验通用w参数块checker重新验证，得到条件2^134。CRT旧记录8步含一个固定点、85425个幂对；真正下降7步，旧接口83679个幂对、25位移口径2091975项。当前CrtPair数学可复用，但当前CrtGrid隐藏了w10和21位移，必须新增w12适配；旧数据量不是当前完整矩形Lean核验的实际成本。最终旧2228区间/29747个n、3597顶素数段/5345大除子行及n126的12段50个j见证均需来源转换和验收。所有表、末端及原题统一入口都未因这次盘点而接受。

本轮实际消除的仅是候选路线中3条非必要边及一个(c,d)族；i13的全域Lean缺口未减少。没有运行Lean/Git、没有大证书生成或第二解析搜索，没有新颖性认定。唯一探针约1.3秒是本机Python观测，不能用来预测Lean成本。下一阶段在原题保持全部无界n,j的同时，先判定有效G路线，再做位置加权桥，最后才投入八边数值树和有限覆盖。
''')
write('README.md','''# i13 路线与复用清单

这是当前run内的独立准备任务，所有写入仅限本目录，不修改i11或已验模块。完整原题仍是全部自然数n,j、13<j≤n/2、共同素数p≥13。

- REPORT.md：路线判断、一个精确图探针及源/接受边界。
- REUSE.md、SOURCE_APIS.json：真正通用接口与i11/宽10/四素数硬编码的区分。
- WEIGHTED_BRIDGE_PLAN.md：实际binomial分量的加权损失桥，纸面计划，未Lean。
- selected-cuts.json：保留旧8192高度所需的8条候选源约束。
- graph-probe.json、selected-eight-check.json：固定11边的有界精确子集探针；不是Padé边证明。
- SOURCE_MAP.json：旧i13、三项包、ProC R2和已验Lean依赖的实际SHA与收据。

最后可复用结果：实际Padé代数/积分/两δ整数行、RationalDivisor下界、通用定位、三窗口、块与CRT参数化均已有受源绑定的接受基础。下一缺口：先检查关键(3,11)边能否用当前有理D取得共同有效增长；并准备五素数位置加权完整消费者。旧BFT常数、旧2^8192/2^134及旧有限证书都不能直接升级为当前Lean结果。

开始2026-09-12 01:37:09 UTC，20分钟检查点01:57:09 UTC，不是总截止。本包无Lean调用，无Git操作；原题覆盖保持不变，主任务i11继续独立验收。
''')
put('CHECKPOINT.json',{'owner':'/root/pade_construction','started_utc':'2026-09-12T01:37:09Z','checkpoint_utc':'2026-09-12T01:57:09Z','checkpoint_not_deadline':True,'lean_invocations':0,'exact_probe_count':1,'probe_range':'All2048 subsets of fixed11 edges via177147 ternary states; independent selected8 verification256 orientations times120 weight permutations','last_reusable_result':'Accepted generalized coefficient/Padé/content/selector/localization/block/CRT-pair prerequisites, receipts source-checked in SOURCE_MAP','actual_frontier_change':'No original i13 acceptance; route dependency count11->8 while retaining old paper8192 constant','unbounded_parameters_remaining':['n and j in original target','m in all required effective G and Q/E bounds; no finite sample substitutes for all m'],'failures_and_unknowns':['Scalar934 gives negative net exponent−924','7-edge subset positive exponent17 does not support8192; requires39413 by same source bound','CurrentCrtGrid is hardcoded width10 despite generic-looking names','ProC common divisor lower growth and current rationalD sufficiency fori13 remain unproved','No global impossibility claim'],'next_check':'One coupled asymptotic/finite-feasibility check of essential3/11 seed under actual rationalD; do not broaden c/d or seeds before it discriminates the route'})
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_ROUTE_INVENTORY_AND_EXACT_FINITE_PROBE_NOT_LEAN','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'REPORT_sha256':sha(OUT/'REPORT.md'),'source_files_bound':len(source_map),'accepted_receipts_checked':len(receipts),'selected_eight_weighted':bestw,'selected_eight_collision':bestc,'files':len(files)},indent=2))