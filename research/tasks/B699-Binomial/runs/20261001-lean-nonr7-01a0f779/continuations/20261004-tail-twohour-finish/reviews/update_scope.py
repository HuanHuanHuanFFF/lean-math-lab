"""Refresh readable scope from preserved actual independent signatures."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
OLD = HERE.parent.parent/'20261004-tail-ninetymin/reviews'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
utc = datetime.now(timezone.utc).isoformat()
entries = []
upper = 10000
for k in (10001,13000,15000,30000):
    path = HERE/('TAIL%d-INDEPENDENT-ACCEPTED.json' % k)
    if not path.is_file():
        continue
    s = json.loads(path.read_text(encoding='utf-8-sig'))
    bpath = HERE/s['binding']
    if sha(bpath) != s['bindingSha256'] or s['acceptedOriginalUpper'] != k or s['completeExtraMathematicalInputs'] != []:
        raise RuntimeError('Actual signature/binding mismatch')
    upper = max(upper,k)
    entries.append({'signature': path.name, 'signatureSha256': sha(path), 'binding': bpath.name, 'bindingSha256': sha(bpath), 'signedUtc': s['signedUtc'], 'fixedSourceCommit': s['fixedSourceCommit'], 'runId': s['actualRunId'], 'artifactId': s['artifactId'], 'archiveSha256': s['archiveSha256'], 'acceptedOriginalUpper': k, 'freshAXRootCount': s['freshAXRootCount'], 'normalCheckerCount': len(s['normalCheckerExits']), 'extraMathematicalInputs': []})

pilot_path = HERE.parent.parent/'20261003-gap-finite-fortymin/reviews/PILOT64-INDEPENDENT-ACCEPTED.json'
pilot = json.loads(pilot_path.read_text(encoding='utf-8-sig'))
if pilot['acceptedFiniteYRange'] != {'lowerInclusive':10000000,'upperExclusive':10146761} or sha(pilot_path)!='4483d967c36f28ca9bfb1d5e557e658cf5069424c377213d6f27ab3aba0f86d9':
    raise RuntimeError('Prior accepted pilot baseline changed')
gaps = [{'lowerInclusive':10000000,'upperExclusive':10146761,'integerYCount':146761,'signature':str(pilot_path.relative_to(HERE.parent.parent)),'signatureSha256':sha(pilot_path),'evidence':'reused prior accepted scope, no old proof rerun'}, {'lowerInclusive': 20482069, 'upperExclusive':40956329, 'integerYCount':40956329-20482069, 'signature':str((OLD/'GAP-FORWARD-INDEPENDENT-ACCEPTED.json').relative_to(HERE.parent.parent)), 'signatureSha256':sha(OLD/'GAP-FORWARD-INDEPENDENT-ACCEPTED.json'), 'evidence': 'reused prior accepted scope, not a new run'}]
for sig_name in ('GAP-FORWARD-INDEPENDENT-ACCEPTED.json','UPPER-RANGES-INDEPENDENT-ACCEPTED.json','THETA-INITIAL-INDEPENDENT-ACCEPTED.json'):
    gap_path = HERE/sig_name
    if gap_path.is_file():
        s = json.loads(gap_path.read_text(encoding='utf-8-sig'))
        if sha(HERE/s['binding']) != s['bindingSha256']:
            raise RuntimeError('Gap signature/binding mismatch')
        gaps += [{**r,'scopeSignature':sig_name} for r in s['acceptedFiniteGapScopes']]
        entries.append({'signature':gap_path.name, 'signatureSha256':sha(gap_path), 'binding':s['binding'], 'bindingSha256':s['bindingSha256'], 'signedUtc':s['signedUtc'], 'fixedSourceCommit':s['fixedSourceCommit'], 'runId':s['actualRunId'], 'artifactId':s['artifactId'], 'archiveSha256':s['archiveSha256'], 'freshAXRootCount':s['freshAXRootCount'], 'normalCheckerCount':len(s['normalCheckerExits']), 'extraMathematicalInputs':[]})

regions = []
for r in sorted(gaps,key=lambda q:(q['lowerInclusive'],q['upperExclusive'])):
    lo,hi = r['lowerInclusive'],r['upperExclusive']
    if regions and lo<=regions[-1]['upperExclusive']:
        regions[-1]['upperExclusive'] = max(regions[-1]['upperExclusive'],hi)
        regions[-1]['integerYCount'] = regions[-1]['upperExclusive']-regions[-1]['lowerInclusive']
    else:
        regions.append({'lowerInclusive':lo,'upperExclusive':hi,'integerYCount':hi-lo,'evidence':'set union of exact accepted finite Gap scopes; individual source/literal scopes remain listed separately'})

max_gap = max(gaps, key=lambda r: r['upperExclusive']-r['lowerInclusive'])
result = {'utc':utc, 'verifier':'/root/tail2h_verification', 'status':'accepted-original-through-%d' % upper if entries else 'source-ready-runtime-pending', 'completeOriginalSet':'{1,2,11,29} union [35,%d]' % upper, 'newOriginalIndicesFromRoundStart':'[10001,%d]' % upper if upper>10000 else [], 'newOriginalIndexCountFromRoundStart':upper-10000, 'originalDomain':'All legal Nat n/i/j, same actual Nat.Prime p>=i divides both complete n.choose i and n.choose j', 'completeExtraMathematicalInputs':[], 'signatureEntries':entries, 'acceptedMaximumFiniteGap':max_gap, 'allAcceptedFiniteGapScopes':gaps, 'acceptedFiniteGapUnionRegions':regions, 'baselineFiniteGapYCount':146761+40956329-20482069, 'newFiniteGapYCountFromRoundStart':sum(r['integerYCount'] for r in regions)-(146761+40956329-20482069), 'thetaInitialConsumerAccepted':(HERE/'THETA-INITIAL-INDEPENDENT-ACCEPTED.json').is_file(), 'gapDoesNotIncreaseOriginalIndexCount':True, 'pendingTargets':[k for k in (10001,13000,15000,30000) if k>upper], 'genuineInfiniteGapSupplied':False, 'R7Changed':False, 'remainingUnboundedRegion':'Low-ratio domain i>=%d with unbounded i/n/j; genuine Gap y and effective theta/psi supply remain unbounded. Low23 and R7 still open.' % (upper+1), 'sourceReady':'FROZEN-SOURCE-READY.json', 'optionalForwardSourceReady':'FORWARD-SOURCE-READY.json', 'fullInitialSourceReady':'INITIAL-SOURCE-READY.json', 'conditionalThetaBridgeAccepted':False, 'kernelRerunByS':False, 'old195SourceCompileIncrement':0, 'new26PrimeSourceRecompileIncrement':0, 'normalCheckerMeaning':'Actual pinned Lean normal replay, not a second kernel implementation', 'startUtc':'2026-10-04T13:16:38Z', 'mainLastJobStartUtc':'2026-10-04T13:55:00Z', 'secondLastJobStartUtc':'2026-10-04T14:05:00Z', 'proofStopUtc':'2026-10-04T14:46:00Z', 'hardDeadlineUtc':'2026-10-04T15:16:38Z', 'extended':False}
(HERE/'CURRENT-SCOPE.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
extension_path=HERE.parent/'EXTENSION.md'
if extension_path.exists():
    result.update(originalHardDeadlineUtc='2026-10-04T15:16:38Z',hardDeadlineUtc='2026-10-04T15:31:38Z',absoluteOriginalQuarterCapUtc='2026-10-04T15:46:38Z',extended=True,extensionMinutes=15,extensionEvidence={'path':str(extension_path),'sha256':sha(extension_path)},extensionScope='Completed proof evidence recovery/independent byte verification/administrative publication only; parent and tiny actual proof windows unchanged',tinyActualProofStopUtc='2026-10-04T15:06:00Z',tinyLastJobStartUtc='2026-10-04T14:54:00Z')
    (HERE/'CURRENT-SCOPE.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
gap_line = '当前最大真实有限Gap `[%d,%d)`，%d个整数y；严格Prime p>y和4095*(p-y)≤y；Gap不增加完整i计数。' % (max_gap['lowerInclusive'],max_gap['upperExclusive'],max_gap['upperExclusive']-max_gap['lowerInclusive'])
lines = ['# S独立核验接续入口','', 'S=/root/tail2h_verification；gpt-6.1-sol/xhigh；仅拥有本 reviews；本机 Lean 0、无 Git/push。', '', '当前完整全集 `{1,2,11,29}∪[35,%d]`，本轮从10000净增%d个完整指标。全部合法Nat n/j、同实际Prime p≥i双完整choose、额外数学输入为空；阶段互相包含，累计范围不叠加。' % (upper,upper-10000), '', gap_line, '']
for e in entries:
    lines += ['- [%s](%s)：signed %s；fixed source `%s` / CI%s / artifact%s；ZIP `%s`；%s AX根、%s实际normalchecker。' % (e['signature'],e['signature'],e['signedUtc'],e['fixedSourceCommit'],e['runId'],e['artifactId'],e['archiveSha256'],e['freshAXRootCount'],e['normalCheckerCount'])]
lines += ['', '每份签件绑定全部native成员、自/嵌套manifest、复用源对象parts、原stdout/receipt、准确literal量词、Std3传递AX、实际checker/executable、实际首import路径与固定Git源码。已验旧对象不重kernel；本轮10001 wrapper因复用配置成本重编，旧195供给及主26prime块在第二CI不重编。', '', '源审入口 [FROZEN-SOURCE-READY](FROZEN-SOURCE-READY.json)；有限Gap [FORWARD-SOURCE-READY](FORWARD-SOURCE-READY.json)；完整θ初段与30000候选 [INITIAL-SOURCE-READY](INITIAL-SOURCE-READY.json)；当前机器入口 [CURRENT-SCOPE](CURRENT-SCOPE.json)。候选不提升接受。', '', '实测成本 [ACTUAL-VERIFIED-COSTS](ACTUAL-VERIFIED-COSTS.json) 按每个actual CI run的最大累计包去重，不把前缀包或同包多scope签重复计作执行。原件在D盘仓库外，普通成员与binary实际恢复映射见runtime各stage的RAW_INTAKE.json；保留映射核验另存本reviews，原件不删。', '', 'Gap新增计数按全部已接受区间并集减旧正式pilot[10M,10146761)及旧forward[20482069,40956329)，不重复计已有pilot。累计区间并集与每个actual独立literal的准确范围分别登记。', '', '真无限Gap/两个无界Real θ误差输入、低23、R7仍缺；更多固定K只消去有限i区间，i/n/j/y仍全局无界。下一输入/候选桥的独立源审 [THETA-NEXT](THETA-NEXT-INDEPENDENT-SOURCE-REVIEW.md) 明确未编译、没有条件结果升格。', '', '开始UTC13:16:38；主CI新job门13:55，第二CI门14:05；proofStop14:46，14:58是预留核验交接时点，hard15:16:38。不默认延时，截止后不补签。晚到原包或不完整验证保持pending。', '', '更新时间 '+utc]
(HERE/'HANDOFF.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
if extension_path.exists():
    with (HERE/'HANDOFF.md').open('a',encoding='utf-8') as output:
        output.write('\n唯一15分钟收尾延时已由Root记录并通知用户：[EXTENSION](../EXTENSION.md)。实际独立核验/封存/发布截止15:31:38，原15:16:38保留为历史原截止，cap15:46:38内不再延。parent数学执行仍原14:46窗，tiny新独立执行仍原15:06窗；不回填旧签时点、不修改数学标准或增加新proof。15:27前签件/scope冻结交Root。\n')
print('Scope refreshed: original upper%d, net new%d' % (upper,upper-10000))
