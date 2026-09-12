from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json
from pypdf import PdfReader
root=Path(__file__).resolve().parent
source=root.parents[2]/'20260911-web-i18-6f4334c9'/'reviews'/'huan-i18-5e2d13bb'/'publication'/'BFTpaper0207.pdf'
expected='0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c'
actual=sha256(source.read_bytes()).hexdigest()
assert actual==expected
reader=PdfReader(source)
pages=[8,9,16,17]
text='\n\n'.join('PRINTED PAGE '+str(p+1)+' / ZERO-BASED PAGE '+str(p)+'\n'+reader.pages[p].extract_text(extraction_mode='layout') for p in pages)
out=root/'source-pages-extracted.txt'
out.write_text(text,encoding='utf-8')
record={'source_sha256':actual,'source_bytes':source.stat().st_size,'source_url':'https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf','page_indices':pages,'output_sha256':sha256(out.read_bytes()).hexdigest(),'output_bytes':out.stat().st_size,'created_utc':datetime.now(timezone.utc).isoformat(),'evidence':'local fixed bytes and layout text extraction; not visual inspection'}
(root/'source-extraction.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record))
