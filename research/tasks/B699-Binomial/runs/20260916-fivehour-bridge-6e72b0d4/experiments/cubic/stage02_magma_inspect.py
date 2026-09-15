"""Read official Magma calculator form; no computation is submitted by this probe."""
import hashlib
import json
from datetime import datetime, timezone
from html.parser import HTMLParser
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen


class Inventory(HTMLParser):
    def __init__(self):
        super().__init__()
        self.forms = []
        self.scripts = []
        self.names = []

    def handle_starttag(self, tag, attributes):
        a = dict(attributes)
        if tag == 'form':
            self.forms.append({k:a[k] for k in ('action','method','id') if k in a})
        elif tag == 'script' and 'src' in a:
            self.scripts.append(a['src'])
        elif tag in ('input','textarea','button'):
            self.names.append({k:a[k] for k in ('name','type','id') if k in a})


url = 'https://magma.maths.usyd.edu.au/calc/'
stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
root = Path(__file__).resolve().parent
record = {'utc':stamp, 'url':url, 'operation':'read-only form inspection'}
try:
    with urlopen(Request(url,headers={'User-Agent':'Mozilla/5.0'}), timeout=35) as r:
        data = r.read(200000)
        record['status'] = r.status
    path = root / f'magma-form-{stamp}.html'
    path.write_bytes(data)
    parser = Inventory()
    parser.feed(data.decode('utf-8',errors='replace'))
    record.update(bytes=len(data),sha256=hashlib.sha256(data).hexdigest(),
                  forms=parser.forms,scripts=parser.scripts,field_names=parser.names,
                  saved=path.name)
except HTTPError as e:
    data = e.read(4096)
    record.update(status=e.code,error_type='HTTPError',body_excerpt=data.decode('utf-8',errors='replace')[:300])
except URLError as e:
    record.update(status='network_error',error=str(e.reason))
(root / f'magma-form-receipt-{stamp}.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False,separators=(',',':')))
