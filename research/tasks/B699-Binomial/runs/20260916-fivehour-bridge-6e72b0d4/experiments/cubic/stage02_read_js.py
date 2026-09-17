"""Read the official calculator transport source; never execute downloaded JavaScript."""
from pathlib import Path
from urllib.request import Request, urlopen

url='https://magma.maths.usyd.edu.au/javascript/calculator.js'
with urlopen(Request(url,headers={'User-Agent':'Mozilla/5.0'}),timeout=35) as response:
    raw=response.read(200000)
path=Path(__file__).with_name('magma-calculator.js')
path.write_bytes(raw)
print('bytes:',len(raw))
for index,line in enumerate(raw.decode('utf-8',errors='replace').splitlines(),1):
    if any(word in line.lower() for word in ('open(', 'post', 'url', 'cgi', 'xml', 'input')):
        print(index,line[:350])
