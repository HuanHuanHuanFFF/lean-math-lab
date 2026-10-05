#!/usr/bin/env python3
"""Verify only the uploaded ZIP identity and its member manifest, not mathematical claims."""
from __future__ import annotations
import argparse, hashlib, json, zipfile
from pathlib import Path

EXPECTED_SHA256='83eaa61a344ffaf30530a8182c6eecfbadde0605214a1d81748393aebbf09b4e'

def main() -> None:
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('zip_path', type=Path)
    ap.add_argument('--output', type=Path)
    args=ap.parse_args()
    data=args.zip_path.read_bytes()
    digest=hashlib.sha256(data).hexdigest()
    if digest != EXPECTED_SHA256:
        raise ValueError('Input ZIP SHA256 mismatch')
    with zipfile.ZipFile(args.zip_path) as z:
        manifest=json.loads(z.read('CONTENTS.json'))
        members=[]
        for item in manifest['members']:
            b=z.read(item['member'])
            h=hashlib.sha256(b).hexdigest()
            if len(b)!=item['bytes'] or h!=item['sha256']:
                raise ValueError(f"Member mismatch: {item['member']}")
            members.append({'member':item['member'],'bytes':len(b),'sha256':h})
        actual={n for n in z.namelist() if not n.endswith('/')}
        expected={x['member'] for x in members}|{'CONTENTS.json'}
        if actual != expected:
            raise ValueError(f'Unlisted/missing ZIP members: {actual ^ expected}')
    result={'input_zip':args.zip_path.name,'bytes':len(data),'sha256':digest,
            'zip_identity_verified':True,'declared_members_verified':len(members),
            'all_member_bytes_and_hashes_match':True,'members':members,
            'meaning':'Packaging identity only. Does not accept finite initial segment or any theorem.'}
    text=json.dumps(result, ensure_ascii=False, indent=2)+'\n'
    if args.output:
        args.output.write_text(text, encoding='utf-8')
        print(f'INPUT IDENTITY VERIFIED: {len(members)} declared members; no theorem accepted.')
    else:
        print(text, end='')

if __name__=='__main__':
    main()
