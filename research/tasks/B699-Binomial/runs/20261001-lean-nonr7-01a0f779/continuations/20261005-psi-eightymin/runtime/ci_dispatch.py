"""Use existing repository credential for one source-bound authorized CI dispatch."""
import argparse
import datetime as dt
import json
from pathlib import Path
import subprocess
import urllib.parse
import urllib.request

HERE = Path(__file__).resolve().parent
REPO = 'HuanHuanHuanFFF/lean-math-lab'
p = argparse.ArgumentParser()
p.add_argument('--head', required=True)
p.add_argument('--ref', default='huan/b699-lean-next-20261002-01a0f779')
a = p.parse_args()
spec = json.loads((HERE / 'psi-stage-spec.json').read_text())
now = dt.datetime.now(dt.timezone.utc)
if now.timestamp() > dt.datetime.fromisoformat(spec['lastJobStart'].replace('Z', '+00:00')).timestamp():
    raise SystemExit('Expired dispatch window')
credential = subprocess.run(['git', 'credential', 'fill'], input='protocol=https\nhost=github.com\n\n',
    capture_output=True, text=True, check=True)
token = dict(x.split('=', 1) for x in credential.stdout.splitlines() if '=' in x).pop('password', None)
credential = None
if not token:
    raise SystemExit('Existing credential unavailable')
headers = {'Authorization': 'Bearer ' + token, 'Accept': 'application/vnd.github+json',
    'User-Agent': 'B699AuthorizedCI/1'}
branch = urllib.request.Request('https://api.github.com/repos/' + REPO + '/branches/' +
    urllib.parse.quote(a.ref, safe=''), headers=headers)
with urllib.request.urlopen(branch, timeout=30) as response:
    fixed = json.load(response)['commit']['sha']
if fixed != a.head:
    raise SystemExit('Remote branch does not match fixed published source')
req = urllib.request.Request('https://api.github.com/repos/' + REPO +
    '/actions/workflows/b699-finite-onehour.yml/dispatches', headers=headers,
    data=json.dumps({'ref': a.ref}).encode(), method='POST')
with urllib.request.urlopen(req, timeout=30) as response:
    code = response.status
token = headers = req = branch = None
result = {'utc': now.isoformat(), 'httpCode': code, 'sourceCommit': fixed, 'ref': a.ref,
    'authorizationModified': False, 'tokenSaved': False, 'status': 'dispatched; runId pending readback'}
out = HERE / 'ci' / 'dispatch'
out.mkdir(parents=True, exist_ok=True)
(out / (now.strftime('%H%M%S') + '-' + fixed[:8] + '.json')).write_text(json.dumps(result, indent=2) + '\n', newline='\n')
print(json.dumps(result))
