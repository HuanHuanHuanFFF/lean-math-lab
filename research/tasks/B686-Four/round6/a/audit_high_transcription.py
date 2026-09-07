"""Check actual Lean auxiliary definitions against frozen exact high-contact input."""
from pathlib import Path
import json,re,hashlib
import sympy as s
from datetime import datetime,timezone
HERE=Path(__file__).resolve().parent
rows=json.loads((HERE/'selected-four-input.json').read_text())['rows']
z,d=s.symbols('z d');checks=[]
def extract(text,name):
    match=re.search(r'def '+name+r' \(z d : ℤ\) : ℤ :=\n(.*?)(?=\n\n)',text,re.S)
    assert match,name
    expr=re.sub(r'\(([-0-9]+) : ℤ\)',r'\1',match.group(1)).replace('^','**')
    assert re.fullmatch(r'[0-9zd\s()+*\-]+',expr),name
    return s.Poly(s.sympify(expr,locals={'z':z,'d':d}),z,d)
for entry in rows:
    row=entry['row'];name=row['name'];target=s.Poly(sum(c*z**a*d**b for a,b,c in row['terms']),z,d)
    for file in (HERE.parent/'main'/f'HighContact{name}.lean',HERE/'FourHeight.lean'):
        actual=extract(file.read_text(),f'auxiliary{name}')
        assert actual==target,(file,name)
        checks.append({'name':name,'source':str(file),'sha256':hashlib.sha256(file.read_bytes()).hexdigest(),'terms':len(target.terms()),'D':target.total_degree(),'z_degree':target.degree(z)})
report={'utc':datetime.now(timezone.utc).isoformat(),'evidence':'exact independent symbolic check of source transcription; kernel interface equality is separately audited','checks':checks}
(HERE/'high-transcription-audit.json').write_text(json.dumps(report,indent=2)+'\n')
print('Exact source transcription checks:',len(checks))
