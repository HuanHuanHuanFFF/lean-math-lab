import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())

if __name__ == '__main__':
    now = datetime.now(timezone.utc)
    if now >= datetime.fromisoformat('2026-10-05T11:37:11+00:00'):
        raise ValueError('Original hard reached')
    sigs, sources, axes = [], {}, {}
    for p in sorted(HERE.glob('*-INDEPENDENT-ACCEPTED.json')):
        s = json.loads(p.read_bytes())
        if hashlib.sha256((HERE / s['binding']).read_bytes()).hexdigest() != s['bindingSha256']:
            raise ValueError('Signed source/object binding changed')
        sigs.append({'file': p.name, 'status': s['status'], 'fixedSourceCommit': s['fixedSourceCommit'],
                     'run': s['actualRunId'], 'artifact': s['artifactId'], 'normalExits': s['normalCheckerExits']})
        for r in s['acceptedSources']:
            sources[(r['path'], r['sha256'])] = r
        axes.update(s['actualCompleteTransitiveAxioms'])
    summary = {'verifier': '/root/local_power_verification', 'utc': now.isoformat(),
      'roundStartUtc': '2026-10-05T10:17:11Z', 'hardDeadlineUtc': '2026-10-05T11:37:11Z',
      'acceptedSignatures': sigs, 'acceptedSourceVersions': list(sources.values()),
      'acceptedSourceVersionCount': len(sources), 'acceptedUniqueAXRoots': axes,
      'acceptedUniqueAXRootCount': len(axes), 'acceptedProducerRootCount': len(axes)//2,
      'acceptedLiteralRootCount': len(axes)//2, 'uniqueNormalReplayTargetCount': len(sources),
      'actualWeightMassOneSupplied': True, 'actualPsiConcreteWeightAssumptionsDischarged': True,
      'OriginalI0DischargedInConditionalConsumers': True, 'etaMassOneSupplied': False,
      'lambdaGeOneSupplied': False, 'FourierIdentitySupplied': False, 'PsiDifferenceBudgetSupplied': False,
      'genuineInfiniteGapSupplied': False, 'unconditionalCompleteOriginalIndexIncrement': 0,
      'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]', 'R7Changed': False,
      'momentsLeanCount': 0, 'momentsArtifactCount': 0,
      'pendingCandidates': ['EtaBetaMoments', 'EtaMomentReduction', 'EtaIntegralSeries', 'EtaLambda', 'EtaMass'],
      'pendingRawLiteralPrepared': ['EtaBetaMomentsLiteral', 'EtaMomentReductionLiteral', 'EtaIntegralSeriesLiteral'],
      'old345PlusRecent18RestoredNotRecompiled': True,
      'checkerMeaning': 'Pinned normal Lean replay, not a second implementation; AI statement review, not human review',
      'kernelRerunByVerifier': False}
    if len(sigs) != 5 or len(sources) != 10 or len(axes) != 66:
        raise ValueError('Final count differs from actual signed source/AX inventory')
    (HERE/'FINAL-SUMMARY.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    lines = ['# S独立核验最终交接：80分钟', '',
      '原窗口UTC10:17:11–11:37:11，hard未延。S只写reviews，无本机Lean/Git修改，不碰target-survey。', '',
      '正式接受5pair：实际ψ泛型平滑4根、完整η正项级数5根、原式具体η9根、实际积分归一实权11根、两路条件原题consumer4根。合33producer+33raw literal=66完整传递AX、10唯一源版本、10唯一normal目标全部退出0；AX仅Std3子集。正常重放不是第二内核。', '',
      '真实η固定c18、epsilon1/16384、原18/(2epsilon sinh18)比例和strict Ioo支持，两端点0，与paper2.2逐点一致。rawEta闭区间连续展开在端点不是eta；积分替换须用端点零测/a.e.等价，不能称逐点相同。', '',
      '实际lambda仅定义为真实积分 ∫ exp(-s/2)eta，已证明>0及等于Icc积分。w=tilt/lambda的非负、可积、质量1已供应，实际ψ两个实例只保x/v≥0。w质量1不是eta质量1；eta_mass_one、lambda≥1、closedLogan ell(i/2)/Fourier身份和真正ψ预算均未实际验收。', '',
      'Legacy复用真实已验I0消其输入，给所有合法Nat n,i,j且i≥4883的同一真实Prime p≥i双完整choose结论，仍以budget+Real有限psi[T0,C]或budget+Nat中段Gap[T0,B)为条件。没有无条件新原题指标。旧345与近18对象只恢复，以具名接受和原byte/source/object索引继承，不重编、不复算347。', '',
      '数学签件及固定源码/实际run/artifact如下；每件完整原native成员、Git/source、对象部分、原日志、全AX/normal绑定见对应BINDING。']
    for s in sigs:
        lines.append('- '+s['file']+'：source '+s['fixedSourceCommit']+'；run '+s['run']+' / artifact '+s['artifact'])
    lines += ['', 'ηSeries失败raw e7ef保diagnostics，成功修订e035通过；producer c85只复用一次成功compile/AX/normal。Kernel旧9a8的rawEta展开/缺Lebesgue实例真实API失败已保留，6f9新体/c863raw通过。仅这些实际失败不扩大成数学否定。', '',
      '最后moments旧6301请求在job-start门拒，0Lean/0artifact；24:30与27:00等refreeze候选未派发，无数学或Lean失败。三probe仅source/raw-ready；lambda/mass仅source-ready，未编未签。原内部门修订记录保留，未把候选#print指令当输出。', '',
      '完整集仍{1,2,11,29}∪[35,30000]，旧finiteGap和有限高度保留；本轮无条件完整指标新增0。i/n/j/y余下无界、R7/低23、中段认证、真ψ预算及解析/有限RH供应仍缺。下一可执行检查是提前完成Gamma/cache准入后最小三probe，再实测eta质量与lambda下界；不重验已签具体核。', '',
      '续接入口FINAL-SUMMARY→5签件及对应BINDING→冻结合同/raw→REVIEWS-INVENTORY。所有归档/对象仓库外按C RAW_INTAKE逐成员定位。']
    (HERE/'HANDOFF.md').write_text('\n'.join(lines)+'\n', encoding='utf-8')
    members=[]
    for p in sorted(HERE.rglob('*')):
        if p.is_file() and '__pycache__' not in p.parts and p.name!='REVIEWS-INVENTORY.json':
            raw=p.read_bytes(); members.append({'path':p.relative_to(ROOT).as_posix(),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
    inv=HERE/'REVIEWS-INVENTORY.json'
    inv.write_text(json.dumps({'utc':now.isoformat(),'members':members,'excludedExactPath':'REVIEWS-INVENTORY.json'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    for r in members:
        raw=(ROOT/r['path']).read_bytes()
        if len(raw)!=r['bytes'] or hashlib.sha256(raw).hexdigest()!=r['sha256']: raise ValueError('Inventory drift')
    print(json.dumps({'signatures':len(sigs),'sources':len(sources),'AX':len(axes),'producerRoots':len(axes)//2,'normal':len(sources),'inventoryMembers':len(members),'inventorySha256':hashlib.sha256(inv.read_bytes()).hexdigest()}))
