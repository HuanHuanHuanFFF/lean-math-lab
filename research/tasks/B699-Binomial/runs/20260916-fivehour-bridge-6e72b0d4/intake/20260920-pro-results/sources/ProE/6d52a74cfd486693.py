"""Boundary tests for public sufficient-condition consumer; subprocess only."""
import json
import subprocess
import sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def call(args):
    return subprocess.run([sys.executable,'-B',str(ROOT/'consumer.py'),*args],capture_output=True,text=True)

def main():
    tests=[(['--row','--p','3','--h','1'],'PROVED_BY_MINUS1'),
           (['--row','--p','3','--h','2'],'PROVED_BY_MINUS1'),
           (['--row','--p','31','--h','1'],'PROVED_BY_MINUS1'),
           (['--slot','--n','128','--j','20'],'PROVED_BY_MINUS_SLOT'),
           (['--slot','--n','3872','--j','1422'],'NOT_TRIGGERED'),
           (['--slot','--n','29282','--j','10858'],'NOT_TRIGGERED'),
           (['--slot','--n','128','--j','3'],'NOT_TRIGGERED'),
           (['--slot','--n','128','--j','65'],'NOT_TRIGGERED')]
    for args,status in tests:
        run=call(args)
        if run.returncode or json.loads(run.stdout)['status']!=status:
            raise AssertionError(('consumer boundary',args,run.stdout,run.stderr))
    for args in [['--row','--p','9','--h','1'],['--row','--p','2'],['--row','--p','3','--h','0']]:
        if call(args).returncode==0:raise AssertionError(('invalid input accepted',args))
    print('PASS_CONSUMER_BOUNDARIES cases=11')
if __name__=='__main__':main()
