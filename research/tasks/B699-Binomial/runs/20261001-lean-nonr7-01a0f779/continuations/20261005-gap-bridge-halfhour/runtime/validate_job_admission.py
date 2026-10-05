"""Check the same job's admission time, rather than checkout completion time."""
import datetime as dt
def validate_job_admission(env,spec,now):
    required=['B699_ADMITTED_JOB_START_EPOCH','B699_ADMITTED_JOB_RUN_ID','B699_ADMITTED_JOB_SOURCE_SHA','GITHUB_RUN_ID','GITHUB_SHA']
    if any(not env.get(k) for k in required):raise RuntimeError('Missing same-job admission receipt')
    if env['B699_ADMITTED_JOB_RUN_ID']!=env['GITHUB_RUN_ID'] or env['B699_ADMITTED_JOB_SOURCE_SHA']!=env['GITHUB_SHA']:
        raise RuntimeError('Admission receipt belongs to another run or source')
    start=int(env['B699_ADMITTED_JOB_START_EPOCH'])
    lower=dt.datetime.fromisoformat(spec['roundStartUtc'].replace('Z','+00:00')).timestamp()
    upper=dt.datetime.fromisoformat(spec['lastJobStart'].replace('Z','+00:00')).timestamp()
    if not lower<=start<=upper or start>now:raise RuntimeError('Expired or invalid admitted job-start time')
    return {'admittedJobStartEpoch':start,'preflightObservedEpoch':now,'source':env['GITHUB_SHA'],
        'runId':env['GITHUB_RUN_ID'],'classification':'same-job start admitted before checkout; proof deadline unchanged'}
