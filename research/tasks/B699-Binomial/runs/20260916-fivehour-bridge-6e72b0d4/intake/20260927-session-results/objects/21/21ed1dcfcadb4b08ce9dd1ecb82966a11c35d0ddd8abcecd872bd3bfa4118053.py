#!/usr/bin/env python3
"""Evaluate the new SAME-INPUT consumer; never label a necessary model NC3."""
import argparse,json
from pathlib import Path
from core import *
ROOT=Path(__file__).resolve().parents[1]
def main():
    pa=argparse.ArgumentParser();pa.add_argument('--z',type=int);pa.add_argument('--b',type=int,default=0)
    pa.add_argument('--case',help='ID of a fully certified regression input');pa.add_argument('--output')
    args=pa.parse_args();row_proved=False;case=None
    if args.case:
        data=json.loads((ROOT/'certificates/cases.json').read_text())
        case=next((r for r in data['cases'] if r['id']==args.case),None)
        if case is None:pa.error('Unknown case ID')
        args.z,args.b=case['z'],case['b'];cache=set()
        for key,val in [('P_factorization',case['P']),('Q_factorization',case['Q'])]:
            check_factorization(val,case[key],data['prime_catalog'],cache)
        row_proved=case['kind']=='actual_row'
    if args.z is None:pa.error('--z or --case required')
    v=values(args.z,args.b);n,j=v['n'],v['j']
    if not 4<=j<=n//2:pa.error('The recovered original j is outside its legal half-row')
    result={'input':v,'complete_power_status':'certified' if row_proved else ('fails' if case else 'not_checked'),
            'NC3_status':'not asserted'}
    if args.b==0:
        C=108*args.z**3-54*args.z**2-72*args.z-13
        assert C>=491 and gcd(C,6)==1 and (n-2)==(args.z-1)*C
        result.update({'pair_Common3_proved':True,'reason':'Cubic divisor must divide 31 but C>=491',
                       'C':C,'slot_constants':[31,31,4]})
    else:
        if n%4 or args.z<2*args.b+3:pa.error('This consumer requires 4|n and z>=2b+3')
        T2=(n-2)//(2*eta(n-2));L=capacity(args.b)
        rejected=(L%T2!=0)
        result.update({'pair_Common3_proved':rejected,'T2':T2,'L_b':L,'L_b_mod_T2':L%T2,
                       'reason':'Actual complete T2 does not divide L_b' if rejected else 'Necessary capacity passes; NOT an NC3 model'})
    result['whole_row_Common3_proved']=bool(row_proved and result['pair_Common3_proved'])
    if not row_proved:
        result['whole_row_condition']='Only after P,Q are certified different odd prime-base complete powers with P>=5.'
    if case:result['certified_regression_witness']=case['witness']
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:ensure_external_output(args.output,ROOT).write_text(text)
    else:print(text,end='')
if __name__=='__main__':main()
