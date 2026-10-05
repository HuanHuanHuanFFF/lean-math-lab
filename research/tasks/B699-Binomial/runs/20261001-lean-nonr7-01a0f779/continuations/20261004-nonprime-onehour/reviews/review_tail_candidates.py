"""Static source/type/boundary review only; no primality computation or Lean execution."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
SUPPLY = HERE.parent / 'supply'
REPO = next(p for p in HERE.parents if (p / '.git').exists())
DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')


def require(ok, message):
    if not ok:
        raise RuntimeError(message)


def guard():
    require(datetime.now(timezone.utc) < DEADLINE, 'Independent review deadline expired')


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def main():
    guard()
    began = datetime.now(timezone.utc).isoformat()
    provenance_raw = (SUPPLY/'source-provenance.json').read_bytes()
    provenance = json.loads(provenance_raw)
    rows = provenance['candidateSources']
    require(len(rows) == 9, 'Candidate source count differs')
    sources = []
    for row in rows:
        guard()
        path = REPO / row['path']
        raw = path.read_bytes()
        text = raw.decode('utf-8-sig')
        require(len(raw) == row['bytes'] and sha(raw) == row['sha256'], 'Frozen candidate source differs: '+path.name)
        require(not re.search(r'\b(sorry|admit|axiom|native_decide)\b', text), 'Unexpected proof escape: '+path.name)
        require((text.startswith('module\n') or text.startswith('module\r\n')) == (row['moduleMode'] == 'modern'), 'Module mode differs')
        printed = re.findall(r'^#print axioms (\S+)', text, re.M)
        require(printed == row['auditRoots'], 'Complete printed AX root inventory differs: '+path.name)
        sources.append({'path':row['path'], 'bytes':len(raw), 'sha256':sha(raw), 'moduleMode':row['moduleMode'],
                        'printedAuditRoots':printed, 'kernelStatus':'pending'})
    previous = 20029199
    block_shapes = []
    all_edges = []
    for i in range(6):
        path = SUPPLY / f'Tail5000Block{i:03d}.lean'
        text = path.read_text(encoding='utf-8')
        match = re.search(r'theorem chain : B699Finite20261002.PrimeChain (\d+) (\d+) (\d+)', text)
        require(match is not None, 'Chain literal absent')
        gap, lo, hi = map(int, match.groups())
        nodes = [int(n) for n in re.findall(r'theorem prime\d+ : Nat.Prime (\d+) := by norm_num', text)]
        steps = [int(n) for n in re.findall(r'\.step \(q := (\d+)\)', text)]
        require(gap == 4883 and lo == previous and nodes == steps and nodes[-1] == hi, 'Block node/step/endpoints differ')
        edges = [b-a for a,b in zip([lo]+nodes, nodes)]
        require(all(0 < edge <= 4883 for edge in edges), 'Source edge literals outside PrimeChain bound')
        all_edges.extend(edges)
        block_shapes.append({'name':path.name, 'gap':gap, 'lo':lo, 'hi':hi, 'newPrimeDeclarations':len(nodes), 'maxSourceEdge':max(edges)})
        previous = hi
    require(previous == 20482069 and sum(r['newPrimeDeclarations'] for r in block_shapes) == 93, 'Final endpoint/node count differs')
    require(4096*5000 <= previous and 4096*4889 <= 20029199, 'Endpoint too short for stated K')
    literals = []
    for name, roots in [('Tail4889ExactLegacy.lean', ['B699TailVerify20261004.complete_4889_exact','B699TailVerify20261004.all_upto_4889_exact']),
                        ('Tail5000ExactLegacy.lean', ['B699TailVerify20261004.complete_5000_exact','B699TailVerify20261004.all_upto_5000_exact'])]:
        raw = (HERE/name).read_bytes()
        literals.append({'path':str((HERE/name).relative_to(REPO)).replace('\\','/'), 'bytes':len(raw), 'sha256':sha(raw),
                         'roots':roots, 'freshKernelRequired':True, 'moduleMode':'legacy'})
    guard()
    report = {'status':'source-and-boundary-reviewed-kernel-pending', 'verifier':'/root/nonprime_source_review_20261004',
              'startedUtc':began, 'completedUtc':datetime.now(timezone.utc).isoformat(), 'hardDeadlineUtc':DEADLINE.isoformat(),
              'provenanceSourceSha256':sha(provenance_raw), 'sources':sources, 'literalAcceptanceSources':literals,
              'sourceBlockShapes':block_shapes, 'sourceMaxEdge':max(all_edges),
              'semanticAssessment': 'The helper partitions all legal Nat n/i/j at 4096*i and 20000093, retains the inclusive p>=i conclusion and both full choose divisibilities, and introduces no Gap or other new mathematical hypothesis.',
              'boundaryChecks': ['n=20000093 enters the tail near_top branch with its accepted prime seed',
                                 'n=4096*i enters the already accepted ratio branch',
                                 'otherwise n<4096*i<=4096*K<=U provides strict n<U',
                                 'near_top gives n<p+4883<=p+i, preserving the exact common_of_top_prime input'],
              'seedProvenance': 'Existing accepted complete_chain: PrimeChain 4883 2 20000093; old acceptance is by /root/semantic_verify_sol, and this round only reread its small source/receipt/AX members.',
              'newPrimeProofs': '99 Nat.Prime declarations are proof candidates by norm_num; this script does not establish primality.',
              'expectedFrontierAfterFreshAcceptance': '4889 candidate would accept all legal n/j at index4889; 5000 candidate would accept every index4883..5000 for all legal n/j. Actual frontier unchanged until fresh kernel and independent binding.',
              'remainingUnboundedRegion': 'i>accepted upper bound; low-ratio n/j and genuine infinite Gap y remain unbounded.',
              'newCompleteOriginalIndices':[], 'kernelExecuted':False, 'scriptSha256':sha(Path(__file__).read_bytes())}
    target = HERE/'TAIL-CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json'
    target.write_text(json.dumps(report, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    print(json.dumps({'status':report['status'], 'report':str(target), 'sha256':sha(target.read_bytes()), 'sourceCount':9, 'literalSourceCount':2}))


if __name__ == '__main__':
    main()
