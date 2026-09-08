from pathlib import Path
from pypdf import PdfReader
p=Path('research/tasks/B677-Lcm/explorer/sources/dusart-2018-explicit-estimates.pdf')
r=PdfReader(p)
for i,page in enumerate(r.pages):
    text=page.extract_text()
    if 'Proposition 5.4' in text or '89693' in text or '89 693' in text:
        print('PDF PAGE',i+1)
        print(text)
