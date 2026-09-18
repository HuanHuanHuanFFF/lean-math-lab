"""Conditional route diagnostics only; no extra saturation theorem is asserted."""
from verify_ledger import states, maximum_for_state
from verify_geometry import need,write

def run(out):
    ss=states()[2];results=[]
    for mid,free,expect in [(10,17,13),(10,18,13),(10,153,13),(11,16,13),(11,17,13),(11,18,12)]:
        maximum=-1;records=[]
        for s in ss:
            k,rr,_,_=maximum_for_state(s,mid,free)
            if k>maximum:maximum=k;records=[]
            if k==maximum:records.extend({'state':s,'counts':r} for r in rr)
        need(maximum==expect,'conditional route budget differs')
        results.append({'middle_X_minimum':mid,'free_X_minimum':free,'maximum':maximum,'relaxed_records':len(records),'first_witness':records[0],'status':'CONDITIONAL_RESOURCE_DIAGNOSTIC_NOT_PROVED_GEOMETRY'})
    write(out/'next_step_conditional_budgets.json',results)
    return results
