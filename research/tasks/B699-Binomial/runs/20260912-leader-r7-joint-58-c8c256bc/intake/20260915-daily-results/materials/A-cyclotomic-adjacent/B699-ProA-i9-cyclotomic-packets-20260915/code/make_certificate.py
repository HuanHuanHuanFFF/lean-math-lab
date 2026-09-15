import json
from pathlib import Path
from fractions import Fraction
R=Path(__file__).resolve().parents[1]
allowed=[[1,2],[2,1],[1,3],[3,1]]
images=[]
for h in range(6):
    h0=h or 6
    vals=sorted({pow(x,h0,21)*(x+1)%21 for x in range(21)})
    roots=[x for x in range(7) if pow(x,h0,7)*(x+1)%7==1]
    images.append({'h_mod6':h,'image_mod21':vals,'roots_mod7_for_one':roots,'closed':h in (0,1,4,5)})
cert={
 'schema':'B699-cyclotomic-packets-v1',
 'meaning':'New finite exact obligations, not formal verification of frozen or infinite paper proofs.',
 'frozen':{'U_power':4963,'U_constant':306000,'smooth_power':6000,'low_height':4096,'entry_height':14000001,'rho':[463,5000],'position_constant':612},
 'density':{'left_power':26,'right_power':21,'gap':3038,'rhs_power':8736000,'height':2876},
 'base':{'minimum':11,'upper_num':21,'upper_den':20,'lower_num':19,'lower_den':20},
 'cyclotomic':{'exceptional':[1,2,4],'good_smooth_fourth_bound':4,'possible_smooth_good':[1,2,5]},
 'budget':{'constant':200,'exceptional_weight':210,'base_weight':840,'good_degree_weight':551,'intermediate_A_power':10,'intermediate_B_power':42,'intermediate_Y_power':29},
 'position':{'remaining':allowed,'QX':[[1,4],[4,1],[2,3],[3,2]],'mod21':sorted({n for n in range(21) if any(n%3==r%3 and n%7==s%7 for r,s in allowed)})},
 'adjacent_plus':images,
 'adjacent_minus_closed':[1,5],
 'boundary':{'T_mod42':29,'h':14,'beta_terms':[[14,1],[11,-1],[0,29]],'n_mod11':6,'j_mod11':10,'g_mod11':7,'n_mod9':3,'n_mod49':1}
}
(R/'evidence/certificate.json').write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
print('certificate written')
