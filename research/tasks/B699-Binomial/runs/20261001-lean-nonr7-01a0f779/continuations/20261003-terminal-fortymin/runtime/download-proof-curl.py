"""One authorized inbound proof GET through the installed normal curl client."""
import argparse,datetime,getpass,hashlib,json,shutil,subprocess,sys
from pathlib import Path
def main():
    parser=argparse.ArgumentParser();parser.add_argument('--target',required=True);parser.add_argument('--receipt',required=True);args=parser.parse_args()
    root=Path('D:/ResearchArtifacts/b699-terminal-fortymin').resolve();target=Path(args.target).resolve()
    if not target.is_relative_to(root):raise RuntimeError('Archive target outside explicitly authorized root')
    if target.exists() or target.with_suffix('.part').exists():raise RuntimeError('Refuse existing archive/partial overwrite')
    if shutil.disk_usage(Path('D:/')).free<20*1024**3:raise RuntimeError('D reserve insufficient')
    curl=shutil.which('curl.exe')
    if not curl:raise RuntimeError('Installed normal curl unavailable')
    url=getpass.getpass('Proof file read reference: ').strip()
    if not url.startswith('https://'):raise RuntimeError('Expected HTTPS read reference')
    root.mkdir(parents=True,exist_ok=True);partial=target.with_suffix('.part')
    cfg='url = '+json.dumps(url)+'\noutput = '+json.dumps(partial.as_posix())+'\nconnect-timeout = 30\nmax-time = 600\n'
    start=datetime.datetime.now(datetime.timezone.utc).isoformat()
    p=subprocess.run([curl,'--fail','--location','--silent','--show-error','--config','-'],input=cfg,text=True,capture_output=True)
    record={'startUtc':start,'endUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'client':curl,'clientExit':p.returncode,'target':str(target),'expectedBytes':320392657,'expectedSha256':'29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13','uriSaved':False,'stdout':p.stdout.replace(url,'[redacted]'),'stderr':p.stderr.replace(url,'[redacted]'),'scope':'single normal curl inbound read, no browser impersonation/auth/settings changes'}
    if p.returncode==0:
        record['actualBytes']=partial.stat().st_size
        with partial.open('rb') as f:record['actualSha256']=hashlib.file_digest(f,'sha256').hexdigest()
        if record['actualBytes']!=record['expectedBytes'] or record['actualSha256']!=record['expectedSha256']:raise RuntimeError('Fixed proof ZIP size/hash differs')
        partial.rename(target);record['status']='success'
    else:record['status']='transport-refused';record['partialPreserved']=str(partial)
    receipt=Path(args.receipt);receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(record,indent=2)+'\n')
    print(json.dumps(record));sys.exit(p.returncode)
if __name__=='__main__':main()
