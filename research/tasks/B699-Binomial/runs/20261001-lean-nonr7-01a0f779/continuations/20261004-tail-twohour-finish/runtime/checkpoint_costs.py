"""Sparse original-ZIP receipt reads for engineering cost only, never acceptance."""
import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import urllib.error
import urllib.request
import zlib

HERE=Path(__file__).resolve().parent

def capability(artifact):
    c=subprocess.run(['git','credential','fill'],input='protocol=https\nhost=github.com\n\n',
                     capture_output=True,text=True,check=True)
    token=dict(x.split('=',1) for x in c.stdout.splitlines() if '=' in x).pop('password',None)
    c=None
    if not token: raise RuntimeError('Existing credential unavailable')
    class NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self,req,fp,code,msg,headers,newurl): return None
    req=urllib.request.Request('https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/actions/artifacts/'+str(artifact)+'/zip',
        headers={'Authorization':'Bearer '+token,'Accept':'application/vnd.github+json','User-Agent':'B699CostMetadata/1'})
    url=None
    try: urllib.request.build_opener(NoRedirect).open(req,timeout=20)
    except urllib.error.HTTPError as e:
        if e.code in [301,302,303,307,308]: url=e.headers.get('Location')
        else: raise RuntimeError('Artifact API refused HTTP'+str(e.code)) from None
    token=req=None
    if not url or not url.startswith('https://'): raise RuntimeError('No HTTPS readonly capability')
    return url

def main():
    p=argparse.ArgumentParser()
    for name in ['artifact','bytes','run']: p.add_argument('--'+name,type=int,required=True)
    p.add_argument('--head',required=True)
    p.add_argument('--stage',required=True)
    a=p.parse_args()
    url=capability(a.artifact)
    downloaded=0
    def read(start,end):
        nonlocal downloaded
        if end<start or end-start+1>4*1024**2: raise RuntimeError('Sparse range exceeds bound')
        req=urllib.request.Request(url,headers={'Range':f'bytes={start}-{end}','Accept-Encoding':'identity'})
        with urllib.request.urlopen(req,timeout=30) as r:
            if r.status!=206 or r.headers.get('Content-Range')!=f'bytes {start}-{end}/{a.bytes}':
                raise RuntimeError('Server refused exact bounded range')
            raw=r.read(end-start+2)
        if len(raw)!=end-start+1: raise RuntimeError('Sparse range length differs')
        downloaded+=len(raw)
        return raw
    tail_start=max(0,a.bytes-65557)
    tail=read(tail_start,a.bytes-1)
    pos=tail.rfind(b'PK\x05\x06')
    if pos<0: raise RuntimeError('ZIP EOCD missing')
    e=struct.unpack_from('<4s4H2LH',tail,pos)
    count,cdsize,cdoffset=e[4],e[5],e[6]
    if count==65535 or cdsize==4294967295 or cdoffset==4294967295:
        raise RuntimeError('ZIP64 sparse read not supported; keep server checkpoint')
    central=read(cdoffset,cdoffset+cdsize-1)
    members={}; at=0
    for _ in range(count):
        h=struct.unpack_from('<4s6H3L5H2L',central,at)
        if h[0]!=b'PK\x01\x02': raise RuntimeError('Central header differs')
        name=central[at+46:at+46+h[10]].decode('utf-8' if h[3]&2048 else 'cp437')
        members[name]={'method':h[4],'crc':h[7],'compressed':h[8],'bytes':h[9],
                       'nameLength':h[10],'extraLength':h[11],'offset':h[16]}
        at+=46+h[10]+h[11]+h[12]
    def unpack(name,raw,base):
        m=members[name]; i=m['offset']-base
        h=struct.unpack_from('<4s5H3L2H',raw,i)
        if h[0]!=b'PK\x03\x04': raise RuntimeError('Local header differs')
        off=i+30+h[9]+h[10]
        body=raw[off:off+m['compressed']]
        data=zlib.decompress(body,-15) if m['method']==8 else body
        if len(data)!=m['bytes'] or zlib.crc32(data)!=m['crc']: raise RuntimeError('Native member CRC or size differs')
        return data
    def one(name):
        m=members[name]
        # Local extra lengths may differ; read the header first.
        hdr=read(m['offset'],m['offset']+29)
        h=struct.unpack('<4s5H3L2H',hdr)
        end=m['offset']+30+h[9]+h[10]+m['compressed']-1
        return unpack(name,read(m['offset'],end),m['offset'])
    manifest_raw=one('delivery-manifest.json')
    manifest=json.loads(manifest_raw)
    if manifest['head']!=a.head or str(manifest['runId'])!=str(a.run): raise RuntimeError('Checkpoint fixed source/run differs')
    plan={x['path']:x for x in manifest['members']}
    names=[n for n in members if n.endswith('/receipt.json') and a.stage in n]
    names += [n for n in [a.stage+'-closed.json',a.stage+'-budget-admission.json','resources-package-'+a.stage+'.json'] if n in members]
    rows=sorted((members[n]['offset'],n) for n in names)
    groups=[]
    for offset,n in rows:
        m=members[n]; end=offset+30+m['nameLength']+m['extraLength']+m['compressed']+256
        if groups and offset-groups[-1]['end']<128*1024 and end-groups[-1]['start']<3*1024**2:
            groups[-1]['end']=end; groups[-1]['names'].append(n)
        else: groups.append({'start':offset,'end':end,'names':[n]})
    out=Path('D:/ResearchArtifacts/b699-tail-twohour-finish/checkpoint-costs')/(str(a.run)+'-'+a.stage)
    out.mkdir(parents=True,exist_ok=True)
    mapping=[]; receipts=[]
    for group in groups:
        raw=read(group['start'],min(group['end'],a.bytes-1))
        for name in group['names']:
            data=unpack(name,raw,group['start']); digest=hashlib.sha256(data).hexdigest()
            if len(data)!=plan[name]['bytes'] or digest!=plan[name]['sha256']: raise RuntimeError('Manifest selected member binding differs')
            dst=out/name; dst.parent.mkdir(parents=True,exist_ok=True); dst.write_bytes(data)
            mapping.append({'member':name,'bytes':len(data),'sha256':digest,'storedPath':str(dst)})
            if name.endswith('/receipt.json'): receipts.append((name,json.loads(data)))
    costs={}
    for name,r in receipts:
        mode='compile' if r.get('mode')=='Lean' else 'checker' if '-normal-checker/' in name else 'strict-or-tooling'
        c=costs.setdefault(mode,{'count':0,'wallSeconds':0,'maxSeconds':0,'maxTreeBytes':0})
        c['count']+=1; c['wallSeconds']+=r.get('wallSeconds',0); c['maxSeconds']=max(c['maxSeconds'],r.get('wallSeconds',0)); c['maxTreeBytes']=max(c['maxTreeBytes'],r.get('peakTreeWorkingSetBytes',0))
    summary={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'head':a.head,'run':a.run,'artifact':a.artifact,
      'stage':a.stage,'nativeZipBytes':a.bytes,'nativeManifestSha256':hashlib.sha256(manifest_raw).hexdigest(),
      'rangeTransferredBytes':downloaded,'selectedMemberCount':len(mapping),'costs':costs,'members':mapping,
      'allNativeMembersLocallyIntaked':False,'fullZipHashVerified':False,
      'scope':'partial engineering cost receipts with CRC and native manifest byte bindings; no mathematical acceptance',
      'tokenSaved':False,'capabilitySaved':False}
    (out/'PARTIAL-COST-MAPPING.json').write_text(json.dumps(summary,indent=2)+'\n')
    dest=HERE/'ci'/'metadata'/(str(a.run)+'-'+a.stage+'-partial-costs.json')
    dest.write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k!='members'}))

if __name__=='__main__':
    try: main()
    except BaseException as exc:
        reason=str(exc)
        if 'http' in reason: reason='Sparse metadata transport failed; URL omitted'
        print(type(exc).__name__+': '+reason)
        raise SystemExit(1)
