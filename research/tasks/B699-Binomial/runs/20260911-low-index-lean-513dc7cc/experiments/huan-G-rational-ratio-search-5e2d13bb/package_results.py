from pathlib import Path
from datetime import datetime, timezone
from fractions import Fraction
import hashlib, json

OUT=Path(__file__).resolve().parent
DATA=json.loads((OUT/'ratio-search-results.json').read_text())
RUN=OUT.parent.parent
PROFILES=json.loads((RUN.parent/'20260910-asymmetric-pade-022987af/delivery/results/refined_profiles.json').read_text())['profiles']
FIELDS=('p','q','k0','l0','a','b','D0')
WINNERS={tuple(r['seed'][k] for k in FIELDS):r['D']['candidate_winner'] for r in DATA['seed_winners']}
KNOWN={(3,2),(15,8),(15,11),(5,4),(5,3),(25,17)}

candidates=[]
for result in DATA['consumers']['D_joint']['profiles']:
    if not result['complete_leading_margin']:continue
    profile=next(p for p in PROFILES if p['i']==result['i'])
    rows=[]
    for original in profile['cuts']:
        selected=WINNERS[tuple(original[k] for k in FIELDS)]
        assert selected is not None and selected['candidate'] is not None
        row={k:original[k] for k in FIELDS}
        row.update({'c':selected['c'],'d':selected['d'],
                    'wp':selected['candidate']['weights'][0],'wq':selected['candidate']['weights'][1],
                    'gamma_log_G_per_m':selected['gamma_log_G_per_m'],'effective_log_L':selected['effective_log_L'],
                    'ell3_per_c':selected['ell3_per_c'],'ell4_per_c':selected['ell4_per_c'],
                    'height_rate_per_c':selected['height_rate_per_c'],
                    'strict_height_leading_margin_lower':selected['candidate']['height_leading_margin_lower'],
                    'factorial_pair_in_existing_six':(selected['c'],selected['d']) in KNOWN})
        rows.append(row)
    item={'i':result['i'],'status':'joint same-configuration asymptotic candidate; no finite thresholds or Lean acceptance',
          'primes':profile['primes'],'t':profile['t'],'all_orientations':result['orientations'],
          'S':result['S'],'structure':result['best_structure'],'orientation_witness':result['witness'],'rows':rows,
          'minimum_row_height_leading_margin_lower':str(min(Fraction(r['strict_height_leading_margin_lower']) for r in rows))}
    item['selected_pairs_not_in_existing_six']=sorted({(r['c'],r['d']) for r in rows if not r['factorial_pair_in_existing_six']})
    candidates.append(item)
(OUT/'joint-candidates.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),
    'source_result_sha256':hashlib.sha256((OUT/'ratio-search-results.json').read_bytes()).hexdigest(),
    'candidates':candidates,'new_original_indices':[]},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

report=r'''# 有理 D 有限 c/d 网格：三个联合渐近候选

互素 `1<=d<c<=24` 的完整网格给出 **i11、i22、i25** 三个联合渐近候选。每个 seed 的两端整数权重来自同一个 c,d、同一个共同增长率，逐行系数、误差和 height 主项均有严格正有理下界；全部取向及原结构主项检查通过。**这不是有限 m 的 G 界、新权重证明、Lean 结果或 B 原题验收增加。**

本轮为179对参数×25个原有seed，共4475配置。c<=16的1975配置约42.7秒完成，完整网格约95.8秒，没有新seed或网格外搜索。旧固定参数否定继续保持原范围。

## 核最大值公式核对

令t=d/c。每c指数的Q、E核为

\[
x^{1-t}(1-x)^t(1-(1-z)x)^t,\quad
x^t(1-x)^t(1-zx)^{1-t}.
\]

对数导数为零分别化为

\[
(1+t)(1-z)x^2-(2-z)x+(1-t)=0,
\quad (1+t)zx^2-(2t+z)x+t=0.
\]

两判别式均严格等于 `z^2+4t^2(1-z)`；较小根有理化后正好是

\[
x_Q=\frac{2(1-t)}{2-z+\sqrt{z^2+4t^2(1-z)}},\quad
x_E=\frac{2t}{2t+z+\sqrt{z^2+4t^2(1-z)}}.
\]

两个核在(0,1)上对数严格凹、端点为零，故该临界点为唯一最大值。4475配置都核对了精确判别式恒等式、根在(0,1)内、与旧判别式的缩放关系。网格内30个旧固定配置的ell3/ell4/T与已冻结数据的有理区间吻合；其余两配置c=25，按本轮上限排除。

## 单位、单调性和共同配置

用精确有理数 `B=beta(c,d)/4^c` 判号：B>1时取gamma=(log B)/2，否则回退G>=1、取率0。它避免把gamma=0的边界交给浮点误差。始终使用 `max(0,gamma_D)=log G/m`，等效 `log L=max(0,gamma_D)/d`，从未把gamma的数值当L底数。

全部4475配置与完全相同配置的G=1基线比较，权重可行域均不下降，ell3/ell4/T的每m增量与gamma相符，优化后的消费者结果也全部单调。此处比较同一个有限网格，不与旧允许所有c/d变化的统一上界混用。

归一化到每c后，令 `R=log max(P,Q)+ell4/c`，两端必要上界分别为 `1000(1-log P/R)`、`1000(1-log Q/R)`。对固定seed它们都随**同一个R**增加。代码先取乐观坐标上界，再实际核对每对上界存在共同的上端R配置，未拼接不同c/d的坐标极值。

正候选进一步选择满足ell3>0、ell4>0的共同R下端配置，两端同时向下取严格整数权重，并重新验证同一配置的height主项。下方成功使用这些联合严格权重，不使用向上取整的乐观上界。两种delta和奇偶的有限常数尚未处理。

## 八指标筛查

每种G/权重情形枚举15136取向；i18另有21×1024碰撞检查。其余七指标沿用原消费者的

\[
\lambda=2s-r,\quad E=s(s+1)+(i-r-1)(i-r)/2,
\quad\Delta=\lambda(1000(i-t)+S)-1000E,
\]

穷尽旧审计范围 `0<=r<i,1<=s<i,2s>r`。

| i | G1乐观Delta | 新D乐观Delta | 新D联合S | 新D联合Delta |
|---|---|---|---|---|
'''
for joint in DATA['consumers']['D_joint']['profiles']:
    i=joint['i']
    zero=next(p for p in DATA['consumers']['G1_upper']['profiles'] if p['i']==i)
    upper=next(p for p in DATA['consumers']['D_upper']['profiles'] if p['i']==i)
    report+=f"| {i} | {zero['best_structure']['Delta']} | {upper['best_structure']['Delta']} | {joint['S']} | {joint['best_structure']['Delta']} |\n"
report+=r'''
i18没有完整通过。位置互异分支按同一 `w_a=2s-a` 计数族放宽到9<=s<=17：全部位置指数`36s-153`、七个最大位置指数上界`14s-21`、大素数代价`s(s+1)`，对应排序权重`2s,...,2s-6`与门槛`1000(s^2-21s+132)`。s=12恢复原门槛24000。即使在这个放宽族中，最好仍取s=12：上界21078、联合权重21000，都不足24000。此处是原计数形式的参数化必要条件筛查，不是新增Lean消费者。

i18碰撞分支的乐观Delta669、联合Delta631已经为正，但不能弥补位置互异分支。没有把单边或单分支成功当完整i18候选。i16、19、21、24及i18的否定只限本有限网格与消费者族，不是全c/d不可能。

## 具体联合候选

每行p/q、幂和a0/b0/D0均保持原材料，仅换网格内c,d与权重。精确gamma、核指数、局部height正下界及最坏取向见证见 `joint-candidates.json`。

'''
for cand in candidates:
    st=cand['structure']
    report+=f"### i{cand['i']}\n\n全部{cand['all_orientations']}个取向给出S={cand['S']}；r={st['r']},s={st['s']},lambda={st['lambda']},E={st['E']}，Delta={st['Delta']}。\n\n"
    report+='| p,q；k,l | a0,b0,D0 | c,d | wp,wq |\n|---|---|---|---|\n'
    for row in cand['rows']:
        report+=f"| {row['p']},{row['q']}；{row['k0']},{row['l0']} | {row['a']},{row['b']},{row['D0']} | {row['c']},{row['d']} | {row['wp']},{row['wq']} |\n"
    margin=float(Fraction(cand['minimum_row_height_leading_margin_lower']))
    report+=f'\n最小每行height主项严格下界约为{margin:.9g}；裁决用JSON中的精确有理数。\n\n'
report+=r'''## 下一检查与边界

i11只有五行，是本轮最小的完整渐近候选。(5,4)、(5,3)属于既有六组实际阶乘界；(9,5)、(23,15)、(11,7)尚未覆盖。i22、i25也含多组新参数，旧Factorial接受状态不能自动迁移。

建议先为i11五行估算或证明**显式有限m**的D下界、两种delta与v奇偶的常数，再核验新的Q/E增长、height和扩大高度后的有限覆盖成本。gamma仅是极限，不能直接断言 `G>=exp(gamma*m)`，不能沿用旧L、m0或有限证书。D商整性到实际qContent的Lean桥、新参数的实际阶乘工具、源消费者对应也仍未完成。

本轮不运行Lean或Git，只调用旧代码的纯消费者函数；全部旧目录保持原样。具体矩阵见 `grid-caps.json`，极值配置/基线/全部消费者见 `ratio-search-results.json`，三个候选包见 `joint-candidates.json`。已有纸面D整性是复用输入，这些新结果只是联合渐近候选，不增加原题计数，不作新颖性声明。
'''
(OUT/'REPORT.md').write_text(report,encoding='utf-8')
(OUT/'README.md').write_text('''# 有理D有限比例搜索检查点

负责人 `/root/pade_construction`，仅写本目录。179互素比例×25原有seed=4475配置，完整c<=24约95.8秒。无新seed、Lean/Git或旧目录写入。

i11、i22、i25出现同一配置下联合整数权重的完整渐近正余量，Delta=216、1200、972；i18位置互异分支仍失败。全部4475配置的同范围G1单调/单位检查及30个旧配置对照通过。

[报告](REPORT.md) 与 [具体候选](joint-candidates.json) 分开记录真实范围。优先下一检查为i11五行的显式有限m/两delta与奇偶常数及有限覆盖成本，尚未执行。用户未给总时限，本轮按有限网格检查点交回，仍无新原题或Lean接受结果。
''',encoding='utf-8')
(OUT/'packaging-note.txt').write_text('One initial report-packaging attempt failed with SyntaxError: an unclosed dictionary brace, before writing candidate/report files. The exact search and its results were unaffected. This standalone packaging script corrects it; no Lean or mathematical failure was inferred.\n',encoding='utf-8')
files=[]
for path in sorted(OUT.iterdir()):
    if path.is_file() and path.name!='FREEZE_V1.json':
        raw=path.read_bytes();files.append({'path':path.name,'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
manifest={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/pade_construction',
          'status':'frozen finite grid and joint asymptotic candidates; no finite thresholds or Lean',
          'files':files,'grid':{'c_max':24,'coprime_pairs':179,'seeds':25,'configurations':4475},
          'joint_asymptotic_candidates':[11,22,25],'worker_lean_invocations':0,'new_original_indices':[]}
p=OUT/'FREEZE_V1.json';p.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'report_sha256':hashlib.sha256((OUT/'REPORT.md').read_bytes()).hexdigest(),
                  'results_sha256':hashlib.sha256((OUT/'ratio-search-results.json').read_bytes()).hexdigest(),
                  'candidates_sha256':hashlib.sha256((OUT/'joint-candidates.json').read_bytes()).hexdigest(),
                  'freeze_sha256':hashlib.sha256(p.read_bytes()).hexdigest()},ensure_ascii=False,indent=2))
