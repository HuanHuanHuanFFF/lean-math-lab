"""Sanitized same-repository CI metadata using the existing Git credential."""
import argparse
import datetime as dt
import json
from pathlib import Path
import subprocess
import urllib.request

HERE = Path(__file__).resolve().parent
REPO = 'HuanHuanHuanFFF/lean-math-lab'

def get(path):
    credential = subprocess.run(['git', 'credential', 'fill'],
        input='protocol=https\nhost=github.com\n\n', capture_output=True, text=True, check=True)
    token = dict(x.split('=', 1) for x in credential.stdout.splitlines() if '=' in x).pop('password', None)
    credential = None
    if not token:
        raise RuntimeError('Existing Git credential unavailable')
    request = urllib.request.Request('https://api.github.com/repos/' + REPO + '/' + path,
        headers={'Authorization': 'Bearer ' + token, 'Accept': 'application/vnd.github+json',
                 'User-Agent': 'B699ReadonlyMetadata/1'})
    with urllib.request.urlopen(request, timeout=30) as response:
        data = json.load(response)
    token = request = None
    return data

def selected(d, keys):
    return {k: d.get(k) for k in keys}

def main():
    p = argparse.ArgumentParser()
    p.add_argument('--run', type=int)
    p.add_argument('--head')
    args = p.parse_args()
    if args.run:
        d = get('actions/runs/' + str(args.run))
        result = selected(d, ['id', 'head_sha', 'head_branch', 'status', 'conclusion', 'created_at',
                             'updated_at', 'run_started_at', 'html_url'])
        a = get('actions/runs/' + str(args.run) + '/artifacts?per_page=100')
        result['artifacts'] = [selected(x, ['id', 'name', 'size_in_bytes', 'expired', 'created_at', 'digest'])
                               for x in a['artifacts']]
        j = get('actions/runs/' + str(args.run) + '/jobs?per_page=100')
        result['jobs'] = [{**selected(x, ['id', 'status', 'conclusion', 'started_at', 'completed_at']),
            'steps': [selected(y, ['name', 'status', 'conclusion', 'number', 'started_at', 'completed_at'])
                      for y in x['steps']]} for x in j['jobs']]
    else:
        d = get('actions/workflows/b699-finite-onehour.yml/runs?per_page=5')
        result = {'runs': [selected(x, ['id', 'head_sha', 'status', 'conclusion', 'created_at', 'html_url'])
                          for x in d['workflow_runs'] if not args.head or x['head_sha'] == args.head]}
    result.update(observedUtc=dt.datetime.now(dt.timezone.utc).isoformat(), tokenSaved=False,
                  authorizationModified=False)
    out = HERE / 'ci' / 'metadata'
    out.mkdir(parents=True, exist_ok=True)
    (out / ((str(args.run) if args.run else 'runs') + '-' +
       dt.datetime.now(dt.timezone.utc).strftime('%H%M%S') + '.json')).write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result))

if __name__ == '__main__':
    try:
        main()
    except BaseException as exc:
        reason = str(exc)
        if 'http' in reason or 'token' in reason.lower():
            reason = 'Metadata request failed; external URLs and credential values omitted'
        print(type(exc).__name__ + ': ' + reason)
        raise SystemExit(1)
