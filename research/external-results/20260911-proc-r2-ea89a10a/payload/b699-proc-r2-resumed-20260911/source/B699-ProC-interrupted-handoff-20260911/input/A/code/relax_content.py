"""Numerical design trade-off: weaken G bounds to reduce finite proof cost."""
from pathlib import Path
from fractions import Fraction as F
import sys,json,math
R=Path(__file__).resolve().parents[1];S=R/'adopted/pro-a'
sys.path[:0]=[str(S/'code'),str(S/'code/vendor'),str(R/'code')]
from design_certified_content import rates
from select_i10 import profile
z=json.loads((R/'evidence/i10_selected_design.json').read_text());out=[]
for r in z['cuts']:
 if r['content_source']!='NEW_UNPROVED_G':out.append(r);continue
 gasym=r['g_asym'];oasym=r['display_O']+gasym-float(F(r['g']));g=F(math.floor(100*(gasym-min(.5,.7*oasym))),100)
 se=tuple(r[k] for k in ['p','q','k0','l0','a','b']);e,d,f=[r[k] for k in ['e','d','f']];a=rates(se,e,d,f,float(g))
 assert a is not None;a.update(content_source='NEW_UNPROVED_G',g=str(g),g_asym=gasym,m0=0);a['wp']-=7;a['wq']-=7;out.append(a)
 print(e,d,f,'g',r['g'],'->',str(g),'O',a['display_O'],'weights',a['wp'],a['wq'])
b=profile(out);print('PROFILE',b)
z.update(cuts=out,profile=b);(R/'evidence/i10_selected_design_unrelaxed.json').write_text((R/'evidence/i10_selected_design.json').read_text());(R/'evidence/i10_selected_design.json').write_text(json.dumps(z,indent=2)+'\n')
