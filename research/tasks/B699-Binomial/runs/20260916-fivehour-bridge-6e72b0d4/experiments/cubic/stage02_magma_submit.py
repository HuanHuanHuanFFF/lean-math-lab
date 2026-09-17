"""One bounded public-form submission to the official Magma calculator.

The observed form has method POST, no action, and a textarea named input.
Only the attached public elliptic-curve code is submitted; no workspace data.
"""
import hashlib
import json
from datetime import datetime, timezone
from html.parser import HTMLParser
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urlencode
from urllib.request import Request, urlopen


class Text(HTMLParser):
    def __init__(self):
        super().__init__()
        self.items=[]
    def handle_data(self,data):
        if data.strip(): self.items.append(data.strip())


root=Path(__file__).resolve().parent
source=root/'stage02_magma_mw.m'
code=source.read_text(encoding='utf-8')
url='https://magma.maths.usyd.edu.au/calc/'
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
record={'utc':stamp,'url':url,'method':'POST','input_file':source.name,
        'input_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
        'scope':'MW probe only; no original integral-point completeness claim'}
try:
    req=Request(url,data=urlencode({'input':code}).encode(),
                headers={'User-Agent':'Mozilla/5.0','Content-Type':'application/x-www-form-urlencoded'},
                method='POST')
    with urlopen(req,timeout=65) as response:
        raw=response.read(2000000)
        record['http_status']=response.status
        record['final_url']=response.geturl()
    path=root/f'magma-mw-response-{stamp}.html'
    path.write_bytes(raw)
    parser=Text();parser.feed(raw.decode('utf-8',errors='replace'))
    record.update(response_file=path.name,response_bytes=len(raw),
                  response_sha256=hashlib.sha256(raw).hexdigest(),
                  response_text_excerpt='\n'.join(parser.items)[-6000:])
except HTTPError as e:
    raw=e.read(4096)
    record.update(http_status=e.code,error_type='HTTPError',error_excerpt=raw.decode('utf-8',errors='replace')[:500])
except (URLError,TimeoutError) as e:
    record.update(http_status='network_error',error_type=type(e).__name__,error_excerpt=str(e)[:500])
out=root/f'magma-mw-receipt-{stamp}.json'
out.write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False,separators=(',',':')))
print('saved:',out.name)
