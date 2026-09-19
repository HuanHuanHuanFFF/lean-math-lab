#!/usr/bin/env python3
"""Finite API regression, not an infinite proof or new coverage count."""
import argparse,json,math
from pathlib import Path
from consumers import certify,curve_model,parameters,height_expression

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    counts={'BAL':0,'ZERO':0,'LOW-11':0};count=0
    for n in range(8,129,4):
        for j in range(4,n//2+1):
            count+=1
            hits=certify(n,j)
            if hits:
                common=math.gcd(math.comb(n,3),math.comb(n,j))
                while common%2==0:common//=2
                assert common>1
            for hit in hits:counts[hit]+=1
    # A retained genuine two-window weak input proves the curve interface alone
    # does not certify NC3. It fails the required alpha shape.
    d=parameters(76672,26775)
    assert (d['u'],d['z'],d['epsilon'],d['rho'])==(5,144,1,29)
    model=curve_model(29,1,1,1,1)
    assert model['f_descending_coefficients']==[6728,9628,4445,676]
    x=5;delta=1051
    assert sum(c*x**(3-i) for i,c in enumerate(model['f_descending_coefficients']))==delta*delta
    assert certify(76672,26775)==[]
    p=599;n0,j0=76672,26775
    assert all(p%d for d in range(2,math.isqrt(p)+1))
    assert j0*(j0-1)%(n0-1)==0
    assert j0*(j0-1)*(j0-2)%((n0-2)//2)==0
    def vf(n,p):
        value=0
        while n:n//=p;value+=n
        return value
    vals=[vf(n0,p)-vf(3,p)-vf(n0-3,p),vf(n0,p)-vf(j0,p)-vf(n0-j0,p)]
    assert vals==[1,1]
    # Validate recovery precondition handling, not just successes.
    bad=0
    for args in [(7,3),(12,7),(14,4)]:
        try:certify(*args)
        except ValueError:bad+=1
        else:raise AssertionError('invalid original interval accepted')
    out={'status':'PASS_API_REGRESSION_ONLY','range_n':[8,128],'pairs':count,'hit_counts_not_new_coverage':counts,
         'bad_original_inputs_rejected':bad,'weak_curve_point':model,'weak_input_common_prime':{'p':599,'valuations':vals},
         'height_formula_example':height_expression(29),
         'scope':'Finite regression checks transcription only; BAL/ZERO/LOW and height need their paper proofs.'}
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'pairs':count,'hits':counts,'bad_rejected':bad},ensure_ascii=False))
if __name__=='__main__':main()
