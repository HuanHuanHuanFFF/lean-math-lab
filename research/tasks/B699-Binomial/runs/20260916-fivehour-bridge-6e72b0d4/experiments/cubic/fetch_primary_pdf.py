"""Download one named primary mathematics paper to the authorized replay area."""
import hashlib
import json
from pathlib import Path
from datetime import datetime,timezone
from urllib.request import Request,urlopen
from urllib.error import HTTPError,URLError

url='https://users.math.uoc.gr/~tzanakis/Papers/Ellqua-v2.pdf'
root=Path('D:/CodingProject/Math/.tools/wt699-a1c74e93/.tools/replay/6e72b0d4-cubic/sources')
root.mkdir(parents=True,exist_ok=True)
record={'utc':datetime.now(timezone.utc).isoformat(),'url':url,'purpose':'primary theorem and constants inspection'}
try:
    with urlopen(Request(url,headers={'User-Agent':'Mozilla/5.0'}),timeout=40) as r:
        data=r.read(3000001)
        record['http_status']=r.status
    assert len(data)<=3000000 and data.startswith(b'%PDF')
    dest=root/'Ellqua-v2.pdf'
    if dest.exists(): assert dest.read_bytes()==data
    else: dest.write_bytes(data)
    record.update(path=str(dest),bytes=len(data),sha256=hashlib.sha256(data).hexdigest())
except (HTTPError,URLError,TimeoutError) as e:
    record.update(error=type(e).__name__,message=str(e))
path=Path(__file__).with_name('stage04-primary-pdf-receipt.json')
path.write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False,separators=(',',':')))
