#!/usr/bin/env python3
"""Targeted malformed mathematical certificates must be rejected."""
import sys
sys.dont_write_bytecode=True
import copy,json
from core import ROOT,need,parent
import verify

def run():
    obj=verify.load();p=parent();cases=[]
    def bad(name,checker,edit,base):
        x=copy.deepcopy(base);edit(x)
        try:checker(x)
        except (ValueError,AssertionError,KeyError,IndexError,TypeError) as e:
            cases.append(dict(test=name,rejected=True,exception=type(e).__name__))
        else:raise ValueError('corrupt certificate accepted: '+name)
    bad('replace_actual_B_mod73',verify.verify73,lambda x:x['precisions'][0]['all_low_rows'][0].__setitem__('B',0),obj['01_true73_quotient.json'])
    bad('omit_zero_square_row',verify.verify73,lambda x:x['precisions'][0].__setitem__('zero_q',[]),obj['01_true73_quotient.json'])
    bad('allow_c3_for_A1_mod3',lambda x:verify.verify_small(x,3),lambda x:x['rows'][1]['roots'][0]['c_s'].append([3,0]),obj['02_FN3_same_c.json'])
    bad('divide_zero_Q_by_inventing_n0',lambda x:verify.verify_small(x,7),lambda x:x['rows'][6]['roots'][0].__setitem__('n',0),obj['03_FN7_same_c.json'])
    bad('independent_c_instead_of_same_c',lambda x:verify.verify_gate(x,p,obj['02_FN3_same_c.json']),lambda x:x['final_allowed_A'].append(292),obj['05_shared_c_gate.json'])
    bad('incorrect_projection_net_difference',lambda x:verify.verify_ledger(x,p,obj['05_shared_c_gate.json']),lambda x:x.__setitem__('total_newly_excluded',x['total_newly_excluded']+1),obj['06_projection_delta.json'])
    bad('reset_same_c_in_finite_family',lambda x:verify.verify_boundary(x,obj['01_true73_quotient.json']),lambda x:x['local'].__setitem__('c',1),obj['07_finite_family_boundary.json'])
    need(all(x['rejected'] for x in cases));return dict(all_rejected=True,count=len(cases),cases=cases)
if __name__=='__main__':print(json.dumps(run(),ensure_ascii=False,indent=2))
