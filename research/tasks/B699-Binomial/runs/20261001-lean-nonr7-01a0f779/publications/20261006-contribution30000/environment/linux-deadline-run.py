"""Round hard UTC lease for new Linux jobs; own process group only.

Reserve30s for child cleanup/checkpointing, then kill only the new child session
at the absolute user deadline. Guest Lean/cache timers are clipped separately.
"""
from datetime import datetime,timezone
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

ROUND_MAX=datetime.fromisoformat('2026-10-06T23:40:25+00:00')


def parse_deadline(value):
    deadline=datetime.fromisoformat(value.replace('Z','+00:00'))
    if deadline.tzinfo is None or deadline.utcoffset().total_seconds()!=0 or deadline>ROUND_MAX:
        raise RuntimeError('explicit UTC hardDeadlineUtc cannot exceed round23:40:25Z')
    return deadline


def main():
    request_path=Path(sys.argv[1]).resolve()
    if sys.argv[2]!='--' or sys.platform!='linux':
        raise RuntimeError('Linux deadline wrapper request -- command required')
    request=json.loads(request_path.read_text())
    deadline=parse_deadline(request['hardDeadlineUtc'])
    utc_anchor=datetime.now(timezone.utc)
    monotonic_anchor=time.monotonic()
    seconds=(deadline-utc_anchor).total_seconds()
    end=monotonic_anchor+seconds
    if seconds<=45:
        raise RuntimeError('insufficient remaining hard lease to launch a new owned job')
    command=sys.argv[3:]
    environment=os.environ.copy()
    environment['B699_HARD_DEADLINE_UTC']=deadline.isoformat()
    environment['B699_HARD_DEADLINE_EPOCH']=str(int(deadline.timestamp()))
    environment['B699_DEADLINE_WRAPPED']='1'
    evidence=Path(command[-1]).resolve()
    evidence.mkdir(parents=True,exist_ok=True)
    record={'hardDeadlineUtc':deadline.isoformat(),'startedAt':datetime.now(timezone.utc).isoformat(),
        'remainingAtLaunchSeconds':seconds,'utcAnchor':utc_anchor.isoformat(),'monotonicAnchor':monotonic_anchor,
        'monotonicDeadline':end,'cleanupReserveSeconds':30,'command':command,'proofAccepted':False}
    receipt=evidence/'HARD-DEADLINE.json'
    receipt.write_text(json.dumps(record,indent=2)+'\n')
    process=subprocess.Popen(command,env=environment,start_new_session=True)
    record['ownedProcessGroup']=process.pid
    receipt.write_text(json.dumps(record,indent=2)+'\n')
    try:
        try:
            code=process.wait(timeout=max(0.01,end-time.monotonic()-30))
        except subprocess.TimeoutExpired:
            record['leaseTerminationSent']=True
            receipt.write_text(json.dumps(record,indent=2)+'\n')
            os.killpg(process.pid,signal.SIGTERM)
            try:
                code=process.wait(timeout=max(0.01,end-time.monotonic()))
            except subprocess.TimeoutExpired:
                os.killpg(process.pid,signal.SIGKILL)
                code=process.wait()
            if code==0:code=124
    finally:
        if process.poll() is None:
            os.killpg(process.pid,signal.SIGKILL)
            process.wait()
        record['finishedAt']=datetime.now(timezone.utc).isoformat()
        record['exitCode']=process.returncode
        receipt.write_text(json.dumps(record,indent=2)+'\n')
    return code


if __name__=='__main__':
    sys.exit(main())
