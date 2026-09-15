"""One bounded public SageCell request, storing exact submitted math and response.
Tool feasibility/exploration only; not a complete B699 certificate.
"""
from datetime import datetime,timezone
from pathlib import Path
import hashlib,json,time,urllib.parse,urllib.request

root=Path(__file__).resolve().parent
code=(root/'sage_curve_probe.sage').read_text(encoding='utf-8')
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
result={'utc':datetime.now(timezone.utc).isoformat(),'endpoint':'https://sagecell.sagemath.org/service','documentation':'https://github.com/sagemath/sagecell/blob/master/doc/messages.md','submitted_source':'sage_curve_probe.sage','source_sha256':hashlib.sha256(code.encode()).hexdigest(),'status':'pending','scope':'public mathematical curve coefficients only; no credentials or private files submitted; exploratory output'}
start=time.monotonic()
try:
    data=urllib.parse.urlencode({'code':code}).encode()
    req=urllib.request.Request(result['endpoint'],data=data,headers={'Content-Type':'application/x-www-form-urlencoded'})
    with urllib.request.urlopen(req,timeout=45) as r:
        body=r.read(1000000)
        result.update(http_status=r.status,response_bytes=len(body),response=json.loads(body.decode()),status='response_received')
except Exception as exc:
    result.update(status='request_failed',error_type=type(exc).__name__,error=str(exc))
result['elapsed_seconds']=time.monotonic()-start
(root/f'sage-curve-response-{stamp}.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps(result)[:10500])
