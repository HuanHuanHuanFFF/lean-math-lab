"""Mutation tests: an invalid certificate must fail, not merely produce fewer hits."""
import copy,json
from pathlib import Path
from verify import check
ROOT=Path(__file__).resolve().parents[1]

def run():
    cert=json.loads((ROOT/'certificates/h13.json').read_text())
    mutations=[]
    c=copy.deepcopy(cert);c['root_lowers'][0]=str(int(c['root_lowers'][0])+10**155);mutations.append(('wrong_root',c))
    c=copy.deepcopy(cert);c['box_units']=c['box_units'][:-1];mutations.append(('missing_reduced_unit',c))
    c=copy.deepcopy(cert);c['cases']=c['cases'][:-1];mutations.append(('missing_nearest_root_case',c))
    c=copy.deepcopy(cert);c['cases'][0]['rounded_logs'][0]=str(int(c['cases'][0]['rounded_logs'][0])+1);mutations.append(('wrong_log_rounding',c))
    c=copy.deepcopy(cert);c['cases'][0]['basis_columns'][0][0]=str(int(c['cases'][0]['basis_columns'][0][0])+1);mutations.append(('changed_lattice',c))
    c=copy.deepcopy(cert);c['final_exponent_bound']=119;mutations.append(('unauthorized_smaller_endpoint',c))
    c=copy.deepcopy(cert);c['final_hits']=[];mutations.append(('omitted_trivial_solution',c))
    results=[]
    for name,c in mutations:
        try:check(c)
        except ValueError as e:results.append({'mutation':name,'result':'REJECTED','reason':str(e)})
        else:raise RuntimeError('BAD CERTIFICATE ACCEPTED: '+name)
    return {'status':'PASS_BAD_CERTIFICATE_REJECTION','tests':results}
if __name__=='__main__':print(json.dumps(run(),indent=2))
