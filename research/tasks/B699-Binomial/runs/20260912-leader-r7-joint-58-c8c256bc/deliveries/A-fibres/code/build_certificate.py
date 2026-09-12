"""Build small arithmetic certificates. Discovery solvers are not used here."""
from pathlib import Path
from fractions import Fraction as F
import json
R=Path(__file__).resolve().parents[1]
locs=[(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]
positions=[]
for r,s in locs:
 k=r+s;u=12-r;v=12-s;H=6+k
 branches=[
  ('five_direct',F(H,12)-1+F(3231,10000),52+F(3231,10000)),
  ('five_via_three',F(H,12)-1+F(u,12)*F(2847,10000)+F(9,100),52+F(u,12)*F(2847,10000)+F(9,100)),
  ('two_direct',F(H,12)-1+F(3915,10000),52+F(3915,10000)),
  ('two_via_seven',F(H,12)-1+F(v,12)*F(2644,10000)+F(1,5),52+F(v,12)*F(2644,10000)+F(1,5))]
 positions.append({'r3':r,'r7':s,'k':k,'u':u,'v':v,'W':36+k,'height_n_power':H,'two_power_lhs':6-k,'cases':[{'case':name,'slope':str(slope),'constant_loss':str(cost)} for name,slope,cost in branches]})
cert={'version':1,'scope':'E9 plus the two remaining double-high alpha families; adopted 58-family interfaces','B':14000001,'C':840,'rows':list(range(1,9)),'endpoint_weight':6,'interior_weights':{str(h):6-h for h in range(1,6)},'weight_cells':[{'r':r,'b':b,'c':r-b,'lhs':12-r,'rhs':max(6-b,0)+max(6-(r-b),0)} for r in range(1,9) for b in range(r+1)],'positions':positions,'frozen_cut_ids':[0,4,5,7],'coarse_cofactor_cap':'8/25','coarse_two':'9/100','coarse_five':'1/5','fine_slope_minima':{'five_direct':'731/10000','five_via_three':'309/4000','two_direct':'283/2000','two_via_seven':'511/3000'},'common_constant_loss':53,'target_component_exponents':{'two':'7/50','five':'7/100'},'necessary_exponent_minima':{'a':1960001,'b':422064},'corridor':{'b_lt_multiple_a':3,'a_lt_multiple_b':31},'regression_n_max':512,'full_power_probe_primes':[11,13,17,19],'full_power_probe_max_exponent':8}
(R/'evidence/new_certificate.json').write_text(json.dumps(cert,indent=2)+'\n')
print('Small certificate created:',len(cert['weight_cells']),'weight cells;',len(positions)*4,'cut-consumption cases.')
