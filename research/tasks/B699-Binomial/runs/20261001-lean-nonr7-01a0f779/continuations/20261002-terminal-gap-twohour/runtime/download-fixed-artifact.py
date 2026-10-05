"""Inbound proof transport only: URL from stdin, never saved or echoed."""
import argparse,datetime,getpass,hashlib,json,re,shutil,sys,time,urllib.error,urllib.parse,urllib.request
from pathlib import Path
def utc():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def main():
    a=argparse.ArgumentParser();a.add_argument('--target',required=True);a.add_argument('--sha256',required=True);a.add_argument('--bytes',type=int,required=True);a.add_argument('--receipt',required=True);args=a.parse_args()
    root=Path('D:/ResearchArtifacts/b699-terminal-gap-twohour').resolve();target=Path(args.target).resolve();partial=target.with_suffix(target.suffix+'.part');receipt=Path(args.receipt).resolve()
    if not target.is_relative_to(root):raise RuntimeError('Fixed archive target outside explicitly named artifact directory')
    if target.exists() or partial.exists():raise RuntimeError('Refuse overwriting an existing archive or partial transfer')
    url=(getpass.getpass('Proof file transport reference: ') if sys.stdin.isatty() else sys.stdin.readline()).strip();parts=urllib.parse.urlsplit(url)
    if parts.scheme!='https' or not (parts.hostname or '').endswith('.oaiusercontent.com'):raise RuntimeError('Unexpected inbound proof file host')
    expiry=urllib.parse.parse_qs(parts.query).get('se',[None])[0]
    state={'startUtc':utc(),'status':'transporting','target':str(target),'expectedBytes':args.bytes,'expectedSha256':args.sha256,'formerReadCapabilityExpiresUtc':expiry,'urlSaved':False,'scope':'inbound archive bytes only; no proof check'}
    def save():receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(state,indent=2)+'\n')
    root.mkdir(parents=True,exist_ok=True);target.parent.mkdir(parents=True,exist_ok=True);save();h=hashlib.sha256();count=0;start=time.time()
    try:
        with urllib.request.urlopen(url,timeout=30) as src,partial.open('xb') as out:
            while True:
                if shutil.disk_usage(root).free<20*1024**3:raise RuntimeError('D disk reserve reached during inbound transfer')
                if time.time()-start>900:raise RuntimeError('Inbound proof transport exceeded fifteen minutes')
                data=src.read(1024*1024)
                if not data:break
                out.write(data);h.update(data);count+=len(data)
        if count!=args.bytes or h.hexdigest()!=args.sha256:raise RuntimeError('Inbound fixed ZIP byte binding differs')
        partial.rename(target);state.update(status='success',endUtc=utc(),actualBytes=count,actualSha256=h.hexdigest());save()
        print(json.dumps({'status':'success','target':str(target),'bytes':count,'sha256':h.hexdigest()}))
    except BaseException as e:
        detail=None
        if isinstance(e,urllib.error.HTTPError):
            detail=e.read(4096).decode('utf-8',errors='replace')
            detail=re.sub(r'https?://[^\s<]+','[redacted-proof-url]',detail)
            for value in urllib.parse.parse_qs(parts.query).get('sig',[]):detail=detail.replace(value,'[redacted-signature]')
        state.update(status='failed',endUtc=utc(),actualBytes=count,error=str(e).replace(url,'[redacted-proof-url]'),httpErrorDetail=detail,partialPreserved=str(partial));save()
        if detail:print(detail,file=sys.stderr)
        raise RuntimeError(state['error']) from None
if __name__=='__main__':
    try:main()
    except BaseException as e:print(str(e),file=sys.stderr);sys.exit(1)
