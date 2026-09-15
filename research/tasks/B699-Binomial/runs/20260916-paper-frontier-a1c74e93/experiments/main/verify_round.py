"""Fresh bounded replay into a new evidence directory, preserving old outputs.

This replays an independently authored checker for H02 and the finite-layer
example, and calls the H023 author's standalone certificate checker. Paper
acceptance and review scopes are recorded separately in REPORT.md.
"""
from contextlib import redirect_stdout
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import io
import json
import platform
import runpy
import subprocess
import sys

RUN=Path(__file__).resolve().parents[2]
REPO=RUN.parents[4]
STAMP=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
OUT=RUN/'verification'/STAMP
OUT.mkdir(parents=True,exist_ok=False)

def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()
def git(*args):
    return subprocess.check_output(['git','-c',f'safe.directory={REPO.as_posix()}',*args],cwd=REPO,text=True).strip()

checker=RUN/'reviews/reviewer/independent_g7_and_boundaries.py'
stdout=io.StringIO()
with redirect_stdout(stdout):
    # The checker uses __file__ only to select where its outputs go. Its exact
    # unchanged source bytes are executed; compile filename retains provenance.
    scope={'__name__':'__main__','__file__':str(OUT/checker.name)}
    exec(compile(checker.read_bytes(),str(checker),'exec'),scope)
(OUT/'independent_replay.log').write_text(stdout.getvalue(),encoding='utf-8')

h023checker=RUN/'experiments/h023/verify_gcd_certificate.py'
certpath=RUN/'experiments/h023/certificate_selected.json'
expected='f5f52a935cab94bd03e491f81f2e716475c4dcc348a1c7b6af3ccbb9e592ee20'
assert sha(certpath)==expected
lib=runpy.run_path(str(h023checker),run_name='h023_checker_library')
result=lib['verify'](json.loads(certpath.read_text(encoding='utf-8')))
assert result['accepted'] and (result['D'],result['W'],result['T'],result['constant_bit_bound'])==(130,126,14,550)
(OUT/'h023_replay.json').write_text(json.dumps(result,indent=2),encoding='utf-8')

base=REPO/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc'
daily=base/'intake/20260915-daily-results'
adopt=[base/'CURRENT_STATUS.md',daily/'SUMMARY.md',daily/'README.md']
adopt += [daily/f'notes/{x}.md' for x in ('A','B','D')]
adopt += [daily/f'materials/{slug}/notes/PROOFS.md' for slug in ('D-critical-quotient-closure','D-odd-full-window','D-lcm-denominator-closure','D-fatpoint-position-closure','B-prime-radix-two-digit-row','B-normalized-three-neighbor-and-square-rows')]
adopt += [base/'deliveries/B-cubic/notes/PROOFS.md']
sources=[{'path':p.relative_to(REPO).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p)} for p in adopt]
(RUN/'SOURCE_ADOPTION.json').write_text(json.dumps({'baseline_sha':'1fccc6454c67d2122bc5bcdc7a31561d8f04c164','scope':'Route comparison plus targeted reconstruction of actually used interfaces; no whole-history acceptance','files':sources},indent=2),encoding='utf-8')

bindings=[]
for group in ('notes/main','notes/h023','notes/nc3','reviews/reviewer'):
    for p in sorted((RUN/group).glob('*.md')):
        bindings.append({'path':p.relative_to(RUN).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p)})
receipt={'time_utc':datetime.now(timezone.utc).isoformat(),'python':sys.version,'platform':platform.platform(),'worktree':str(REPO),'branch':git('branch','--show-current'),'head_at_replay':git('rev-parse','HEAD'),'baseline_sha':'1fccc6454c67d2122bc5bcdc7a31561d8f04c164','status':'passed','commands':[f'python {Path(__file__).relative_to(REPO).as_posix()}'],'replay_sources':[{'path':checker.relative_to(RUN).as_posix(),'sha256':sha(checker),'mode':'unchanged source executed with output-directory __file__ redirection'},{'path':h023checker.relative_to(RUN).as_posix(),'sha256':sha(h023checker),'mode':'verify(frozen certificate) function; main() not run'}],'h023_certificate_sha256':expected,'h023_bound':result['strict_binary_bound'],'paper_bindings':bindings,'scope':'Fresh exact algebra/certificate replay plus source binding; mathematical quantifiers require the paper proofs and named reviews. No Lean, no full B699 acceptance.'}
(OUT/'evidence.json').write_text(json.dumps(receipt,indent=2),encoding='utf-8')
print(json.dumps({'status':'passed','evidence_directory':OUT.relative_to(RUN).as_posix(),'h02_zero_conditions':142,'h02_positive_coefficients':[15,138,153],'method_boundary_nontrivial_matrices':5,'h023_zero_conditions':result['taylor_zero_conditions'],'h023_positive_coefficients':result['positive_half_coefficients'],'h023_bound':result['strict_binary_bound'],'source_files':len(sources),'paper_bindings':len(bindings)}))
