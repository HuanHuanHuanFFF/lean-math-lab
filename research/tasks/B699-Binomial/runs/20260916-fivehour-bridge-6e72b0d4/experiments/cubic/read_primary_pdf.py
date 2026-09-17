"""Read-only PDF text extraction to authorized replay files; bounded page inventory."""
from pathlib import Path
from pypdf import PdfReader

path=Path('D:/CodingProject/Math/.tools/wt699-a1c74e93/.tools/replay/6e72b0d4-cubic/sources/Ellqua-v2.pdf')
reader=PdfReader(path)
pages=[page.extract_text() or '' for page in reader.pages]
out=path.with_suffix('.txt')
out.write_text('\n'.join(f'\n=== PDF PAGE {i+1} ===\n{text}' for i,text in enumerate(pages)),encoding='utf-8')
print('pages:',len(pages),'text_bytes:',out.stat().st_size)
for i,text in enumerate(pages):
    if any(key in text.lower() for key in ('david','lower bound','c4','appendix','c5','c6')):
        print('relevant_page:',i+1,'chars:',len(text),'start:',text[:90].replace('\n',' '))
