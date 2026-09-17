"""Extract and render the exact primary-source pages used by the loss-height claim."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,subprocess
from pypdf import PdfReader

here=Path(__file__).resolve().parent;repo=here.parents[6]
source=repo/'.tools/replay/6e72b0d4-cubic/sources/Masser-2024-binary-cubic.pdf'
reader=PdfReader(source);assert len(reader.pages)==16
poppler=Path('C:/Users/幻/.cache/codex-runtimes/codex-primary-runtime/dependencies/native/poppler/Library/bin/pdftoppm.exe')
assert poppler.is_file()
pages=[]
for page in (1,9,12):
    prefix=source.with_name(f'Masser-2024-page-{page:02d}')
    txt=prefix.with_suffix('.txt');txt.write_text(reader.pages[page-1].extract_text(),encoding='utf-8')
    command=[str(poppler),'-f',str(page),'-l',str(page),'-singlefile','-scale-to','1800','-png',str(source),str(prefix)]
    result=subprocess.run(command,capture_output=True,text=True,timeout=30)
    assert result.returncode==0,result.stderr
    png=prefix.with_suffix('.png');assert png.exists()
    pages.append({'pdf_page_1based':page,'journal_page':608+page,'text_path':str(txt),'image_path':str(png),
                  'text_sha256':hashlib.sha256(txt.read_bytes()).hexdigest(),'image_sha256':hashlib.sha256(png.read_bytes()).hexdigest(),
                  'renderer_stderr':result.stderr[:500]})
out={'utc':datetime.now(timezone.utc).isoformat(),'PDF_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
     'pages':pages,'scope':'Page 609 theorem max-coefficient height; page 617 all-solutions scope; page 620 final all-solutions bound.'}
dest=here/'stage11-masser-page-receipt.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'pages':[p['journal_page'] for p in pages],'receipt':str(dest)}))
