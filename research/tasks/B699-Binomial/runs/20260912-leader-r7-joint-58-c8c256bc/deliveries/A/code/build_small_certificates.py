"""Finite certificate construction; discovery uses scipy, acceptance does not.
No prime-power/content/CRT search, and no inherited large certificate replay.
"""
from pathlib import Path
from fractions import Fraction as F
import itertools,json
import numpy as np
from scipy.optimize import linprog
from source_paths import ROOT as R,restore
s=restore();P=[2,3,5,7];low={2:3,3:1,5:1,7:1}
original=json.loads((s['A']/'evidence/alpha_normal_forms.json').read_text())['families']
remaining=[f for f in original if f['kind']=='one-high' or f['primes']==[2,5]]
removed=[f for f in original if f not in remaining]
(R/'evidence/normal_forms_60.json').write_text(json.dumps({'status':'INTERMEDIATE_60_NOT_FINAL_USE_normal_forms_58.json','meaning':'Necessary families, not finitely many numerical candidates. Exponents remain unbounded.','one_high':56,'two_high':4,'families':remaining,'removed_complete_families':removed},indent=2)+'\n')
# The weighted-position lemma excludes 7|n when the 2/5 collision is at 0.
last=[f for f in remaining if f['kind']=='one-high' or f['m'] in [1,3]]
removed_position=[f for f in remaining if f not in last]
(R/'evidence/normal_forms_58.json').write_text(json.dumps({'meaning':'Necessary families; a,b remain unbounded. Not a finite candidate list.','one_high':56,'two_high':2,'families':last,'removed_by_new_cuts':removed,'removed_by_positions_and_7_divisibility':removed_position},indent=2)+'\n')
# Exact branch certificates; thresholds refer to selected_cuts.json.
products=[{'complement':[2,3],'excluded_collision':[5,7],'cut_indices':[0,5],'lambda_numerator':3200},
 {'complement':[2,5],'excluded_collision':[3,7],'cut_indices':[1,2],'lambda_numerator':3050},
 {'complement':[3,5],'excluded_collision':[2,7],'cut_indices':[3,6],'lambda_numerator':3400},
 {'complement':[5,7],'excluded_collision':[2,3],'cut_indices':[4,7],'lambda_numerator':3200}]
(R/'evidence/product_certificates.json').write_text(json.dumps({'denominator':10000,'products':products},indent=2)+'\n')
# Remaining co-location c and separate 3/7 positions.
positions=[list(v) for v in itertools.permutations(range(9),3) if sum(v)<=5]
(R/'evidence/residual_positions.json').write_text(json.dumps({'all_collision_2_5_positions_c_r3_r7':positions,'double_high_alpha_positions_r3_r7':[v[1:] for v in positions if v[0]==0],'unordered_occupied_sets':sorted({tuple(sorted(v)) for v in positions})},indent=2)+'\n')
# One feasibility solve provides an exact rational witness for the explicitly
# stated logarithmic relaxation. This is NOT an integer B699 counterexample.
cells=[(a,b,a-b) for a in range(9) for b in range(a+1)]
rows=np.array([[int(t[0]==a) for t in cells] for a in range(9)],float)
cols=np.array([[int(t[dim]==b) for t in cells] for dim in [1,2] for b in range(9)],float)
rowmass=[F(0),F(1,10),F(1,10)]+[F(1)]*6
ans=linprog(np.zeros(45),A_eq=rows,b_eq=[float(x) for x in rowmass],A_ub=cols,b_ub=np.ones(18),bounds=(0,None),method='highs')
assert ans.success,ans.message
mass=[F(float(x)).limit_denominator(100000) for x in ans.x]
assert all(sum(mass[k] for k,t in enumerate(cells) if t[0]==a)==rowmass[a] for a in range(9))
assert all(sum(mass[k] for k,t in enumerate(cells) if t[dim]==b)<=1 for dim in [1,2] for b in range(9))
witness={'status':'EXACT_FEASIBLE_POINT_FOR_STATED_RELAXATION_ONLY','model':'triangle row masses and two marginal capacities; nine selected plus ten inherited cuts; co-location 2/5 at 0, 3 at 1, 7 at 2; excludes integrality and prime-power congruences',
 'cofactor_log_exponents':{'2':'3/5','3':'1/10','5':'2/5','7':'1/10'},'max_power_log_exponents':{'2':'2/5','3':'9/10','5':'3/5','7':'9/10'},'small_mass_by_row':['1','9/10','9/10']+['0']*6,'cells':[{'a':a,'b':b,'c':c,'mass':str(m)} for (a,b,c),m in zip(cells,mass)],'not_an_integer_counterexample':True}
(R/'evidence/residual_relaxation_witness.json').write_text(json.dumps(witness,indent=2)+'\n')
# Recovered scalar optimum: solve only feasibility for a dual certificate at
# the already known optimum 63/10, not another scalar optimization search.
Aeq=np.ones((1,45));beq=[6.3]
capacity=np.vstack([rows,cols]);ans=linprog(np.zeros(45),A_eq=Aeq,b_eq=beq,A_ub=capacity,b_ub=np.ones(27),bounds=(0,None),method='highs');assert ans.success
mass=[F(float(x)).limit_denominator(100000) for x in ans.x]
assert sum(mass)==F(63,10)
weights=[F(0)]*3+[F(k,10) for k in range(1,7)]
uv=[F(k,10) for k in range(6,0,-1)]+[F(0)]*3
cert={'purpose':'Exact optimality of the specified additive triangle monomial-weight LP only; does not rule out position-dependent, nonlinear, or arithmetic refinements','optimum':'63/10','row_weights':list(map(str,weights)),'left_weights':list(map(str,uv)),'right_weights':list(map(str,uv)),'dual_cells':[{'a':a,'b':b,'c':c,'mass':str(m)} for (a,b,c),m in zip(cells,mass)]}
(R/'evidence/scalar_lp_optimality.json').write_text(json.dumps(cert,indent=2)+'\n')
print(json.dumps({'normal_forms_final':len(last),'normal_forms_intermediate':len(remaining),'removed_by_cuts':len(removed),'removed_by_positions':len(removed_position),'position_configurations':len(positions),'double_high_positions':sum(v[0]==0 for v in positions),'relaxation_cells':45,'scalar_dual_total':str(sum(mass))}))
