"""Submit one explicitly named mathematical source file to the official 60s calculator."""
import hashlib
import json
import sys
from datetime import datetime, timezone
from html.parser import HTMLParser
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urlencode
from urllib.request import Request, urlopen

class Text(HTMLParser):
    def __init__(self): super().__init__();self.items=[]
    def handle_data(self,data):
        if data.strip(): self.items.append(data.strip())

root=Path(__file__).resolve().parent
source=(root/sys.argv[1]).resolve()
assert source.parent==root and source.suffix=='.m'
code=source.read_text(encoding='utf-8')
assert len(code.encode())<50000
url='https://magma.maths.usyd.edu.au/calc/'
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
tag=source.stem
record={'utc':stamp,'url':url,'method':'POST','input_file':source.name,
        'input_sha256':hashlib.sha256(source.read_bytes()).hexdigest()}
try:
    req=Request(url,data=urlencode({'input':code}).encode(),method='POST',
                headers={'User-Agent':'Mozilla/5.0','Content-Type':'application/x-www-form-urlencoded'})
    with urlopen(req,timeout=65) as response:
        raw=response.read(2000000)
        record['http_status']=response.status
    path=root/f'{tag}-response-{stamp}.html';path.write_bytes(raw)
    p=Text();p.feed(raw.decode('utf-8',errors='replace'))
    text='\n'.join(p.items)
    text_path=root/f'{tag}-output-{stamp}.txt';text_path.write_text(text+'\n',encoding='utf-8')
    record.update(response_file=path.name,response_bytes=len(raw),
                  response_sha256=hashlib.sha256(raw).hexdigest(),output_file=text_path.name,
                  output_sha256=hashlib.sha256(text_path.read_bytes()).hexdigest())
    if '--brief' in sys.argv:
        useful=[line for line in text.splitlines() if line.startswith('RESULT ') or
                'Runtime error' in line or 'User error' in line or 'An error occurred' in line]
        print('\n'.join(line[:2000] for line in useful)[-10000:])
    else:
        print(text[-12000:])
except HTTPError as e:
    raw=e.read(4096)
    record.update(http_status=e.code,error_type='HTTPError',error_excerpt=raw.decode('utf-8',errors='replace')[:500])
except (URLError,TimeoutError) as e:
    record.update(http_status='network_error',error_type=type(e).__name__,error_excerpt=str(e)[:500])
out=root/f'{tag}-receipt-{stamp}.json';out.write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False,separators=(',',':')))
