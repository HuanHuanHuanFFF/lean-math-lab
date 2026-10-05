"""Bounded regression fixtures for the observed double admission failure."""
import datetime as dt
import json
from pathlib import Path
from validate_job_admission import validate_job_admission

HERE = Path(__file__).resolve().parent
spec = json.loads((HERE / 'stage-spec.json').read_text())
epoch = lambda value: int(dt.datetime.fromisoformat(value.replace('Z', '+00:00')).timestamp())
env = {'B699_ADMITTED_JOB_START_EPOCH': str(epoch('2026-10-05T09:19:41Z')),
    'B699_ADMITTED_JOB_RUN_ID': 'fixture-run', 'B699_ADMITTED_JOB_SOURCE_SHA': 'fixture-source',
    'GITHUB_RUN_ID': 'fixture-run', 'GITHUB_SHA': 'fixture-source'}
now = epoch('2026-10-05T09:20:08Z')
validate_job_admission(env, spec, now)
tests = {'sameEarlyJobAfterCheckout': 'pass'}
for label, modified in [
    ('lateJob', {**env, 'B699_ADMITTED_JOB_START_EPOCH': str(now)}),
    ('missing', {}), ('otherRun', {**env, 'GITHUB_RUN_ID': 'other'}),
    ('otherSource', {**env, 'GITHUB_SHA': 'other'}),
    ('beforeRound', {**env, 'B699_ADMITTED_JOB_START_EPOCH': str(epoch('2026-10-05T08:04:26Z'))}),
    ('futureReceipt', {**env, 'B699_ADMITTED_JOB_START_EPOCH': str(now + 1)})]:
    try:
        validate_job_admission(modified, spec, now)
    except RuntimeError:
        tests[label] = 'expected rejection'
    else:
        raise RuntimeError('Fixture unexpectedly accepted: ' + label)
result = {'utc': dt.datetime.now(dt.timezone.utc).isoformat(), 'fixtures': tests,
    'actualCIStarted': False, 'actualLeanStarted': False,
    'proofStopUtc': spec['proofStopUtc'], 'hardDeadlineUtc': spec['finalDeadlineUtc']}
(HERE / 'ADMISSION-FIXTURES.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result))
