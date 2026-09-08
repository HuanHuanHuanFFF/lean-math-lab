from pypdf import PdfReader
r=PdfReader('research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/explorer/sources/dusart-2018-explicit-estimates.pdf')
for i,page in enumerate(r.pages):
    text=page.extract_text()
    if '5.4' in text and i!=15:
        print('PDF PAGE',i+1)
        print(text)
