"""Read-only primary-source download receipt; preserves normal TLS validation."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,subprocess

here=Path(__file__).resolve().parent
repo=here.parents[6]
dest=repo/'.tools/replay/6e72b0d4-cubic/sources/Masser-2024-binary-cubic.pdf'
url='https://www.cambridge.org/core/services/aop-cambridge-core/content/view/3632428D7B6FD0ED55217E889583B297/S0305004124000057a.pdf/how_to_solve_a_binary_cubic_equation_in_integers.pdf'
assert dest.parent.is_dir()
assert not dest.exists()
command=['curl.exe','--location','--fail','--silent','--show-error','--max-time','40',url,'--output',str(dest)]
result=subprocess.run(command,capture_output=True,text=True,timeout=50)
out={'utc':datetime.now(timezone.utc).isoformat(),'url':url,'method':'curl.exe with normal certificate validation',
     'returncode':result.returncode,'stderr':result.stderr,'local_path':str(dest),
     'source':'David Masser, How to solve a binary cubic equation in integers, Math. Proc. Camb. Phil. Soc. 176 (2024), 609-624, DOI 10.1017/S0305004124000057.'}
if dest.exists():
    data=dest.read_bytes();out.update({'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest(),'PDF_header':data.startswith(b'%PDF')})
receipt=here/'stage11-masser-source-receipt.json'
assert not receipt.exists()
receipt.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in out.items() if k not in ('url','source','stderr')}))
if result.returncode:print(result.stderr[:400])
assert result.returncode==0 and out.get('PDF_header')
