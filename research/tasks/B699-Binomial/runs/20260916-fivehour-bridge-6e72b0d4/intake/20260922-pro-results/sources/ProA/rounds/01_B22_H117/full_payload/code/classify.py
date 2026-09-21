"""Verify every C++ survivor by exact rational jets; certify all-parameter boundaries."""
import json
from pathlib import Path
from itertools import combinations
from collections import Counter
from exact import *

def certify(enum_path,certificate_path,out_path):
    enum=json.loads(Path(enum_path).read_text())
    assert enum['prime']==32749 and all(32749%d for d in range(2,182))
    assert enum['consistent']==len(enum['multiplicities'])==180
    cert=json.loads(Path(certificate_path).read_text());assert cert['monomials']==[list(x) for x in MON]
    supplied={}
    for f in cert['families']:
        vecs=(tuple(Q(x) for x in f['base'])+(Q(1),),)+tuple(tuple(Q(x) for x in v)+(Q(0),) for v in f['directions'])
        assert vecs not in supplied; supplied[vecs]=f
    collected={}; forced=0
    for ms in enum['multiplicities']:
        assert sum(map(sum,ms))==22 and sum(a>0 for row in ms for a in row)>=14
        eq=equations_for(ms);vecs=affine(eq);assert vecs is not None
        assert all(dot(row,V)==0 for row in eq for V in vecs)
        if forced_ell(vecs) is not None:forced+=1;continue
        collected.setdefault(vecs,[]).append(ms)
    assert forced==91 and sum(map(len,collected.values()))==89 and len(collected)==41
    accepted=[];over=0;fixed_norms=[];exceptional=[];plane_pairs=[]
    for vecs,models in collected.items():
        sig=generic_signature(vecs)
        if sig['mu']>22:over+=1;continue
        assert sig['mu']==22 and vecs in supplied
        f=supplied.pop(vecs)
        assert all(sig[k]==f[k] for k in ('m','delta','z'))
        assert len(vecs)-1==f['dimension']
        id=f['ids'][0];rec=dict(id=id,kind=f['kind'],dimension=f['dimension'],signature=sig)
        if f['kind']=='fixed':
            v,norm=primitive(vecs[0]);fixed_norms.append(norm);assert norm<2**28
            rec.update(primitive=v,l1=norm)
        elif f['kind']=='reducible':
            if id==60:R={(2,0):Q(1),(1,0):Q(-9),(0,0):Q(20)}
            elif id==87:R={(2,0):Q(-2),(1,0):Q(24),(0,0):Q(-64)}
            else:raise AssertionError('unlisted reducible pencil')
            assert all(not evaluate_X(to_poly(v),R) for v in vecs)
            rec['factor_substitution']=[[a,b,str(c)] for (a,b),c in sorted(R.items())]
        elif f['kind']=='plane':
            qs=[]
            for i,V in enumerate(vecs):
                A=to_poly(V)
                if i==0:A=add(A,scale(P4,-1))
                q,rem=divide_monic_N(A,W)
                assert not rem and set(q)<={(2,0),(1,0),(0,0),(0,1)}
                qs.append(q)
            collisions=[(3,0),(3,2),(4,3),(5,6)]
            pair=tuple(i for i,pt in enumerate(collisions) if all(value(q,*pt)==0 for q in qs))
            assert len(pair)==2
            # The two free Q directions are independent; dim2 plus two independent
            # homogeneous evaluations proves the full plane, not sampled parameters.
            cm=[(2,0),(1,0),(0,0),(0,1)]
            assert len(rref([[q.get(m,Q(0)) for m in cm] for q in qs[1:]],n=4))==2
            points=[collisions[i] for i in pair]+[(4,4),(6,9)]
            mat=[[n*n,n,1,x] for n,x in points];det=determinant(mat);assert det
            rec.update(zero_pair=pair,combined_cancel_determinant=str(det),Q_components=[[[a,b,str(c)] for (a,b),c in sorted(q.items())] for q in qs])
            plane_pairs.append(pair)
            assert sig['z']==20 and sig['delta'][3:]==[0,0,0]
        elif f['kind']=='pencil':
            assert id in (59,61,64,70,81)
            A,small_Q,parameter_scale=pencil_formula(id)
            assert to_poly(vecs[0])==A and to_poly(vecs[1])==scale(mul(W,small_Q),Q(1,parameter_scale))
            rec['raw_parameter_scale']=parameter_scale
            roots=set();normal_roots=set();weighted_roots=set();forms_out=[]
            # ALL ordinary source points, including current nonzero values.
            for (r,v),m in zip(SOURCES,[a for row in sig['m'] for a in row]):
                forms=[tuple(dot(jet(r,v,m-j,j),V) for V in vecs) for j in range(m+1)]
                t=common_linear_root(forms)
                if t is not None:roots.add(t);normal_roots.add(t)
                forms_out.append(dict(point=[r,v],order=m,forms=[[str(x) for x in z] for z in forms],cancel=None if t is None else str(t)))
            tangent_forms=[]
            for r,(m,w,kappa) in zip((4,6,8),sig['diagonal']):
                forms=[tuple(dot(tangent_jet(r,w-2*j,j),V) for V in vecs) for j in range(w//2+1)]
                t=common_linear_root(forms)
                if t is not None:roots.add(t);weighted_roots.add(t)
                tangent_forms.append(dict(r=r,m=m,w=w,kappa=kappa,forms=[[str(x) for x in z] for z in forms],cancel=None if t is None else str(t)))
            special=[]
            for t in sorted(roots):
                V=tuple(a+t*b for a,b in zip(*vecs));p,norm=primitive(V);ss=generic_signature((V,))
                # Exact mu changes are explicitly recorded; tiny fixed members exit
                # independently by the adopted degree11/l1 small-coefficient consumer.
                assert norm<2**28
                special.append(dict(parameter=str(t),primitive=p,l1=norm,signature=ss))
            rec.update(ordinary_leading_forms=forms_out,tangent_leading_forms=tangent_forms,normal_cancel=sorted(map(str,normal_roots)),weighted_cancel=sorted(map(str,weighted_roots)),special=special)
            exceptional.extend((id,x) for x in special)
            expected={59:([1,0,0,1,0,0],[1,0,1]),61:([1,0,1,0,0,0],[1,0,1]),64:([1,1,0,0,0,0],[1,0,1]),70:([1,0,0,1,0,0],[1,1,1]),81:([2,0,0,0,0,0],[1,1,1])}
            assert (sig['delta'],[x[2] for x in sig['diagonal']])==expected[id]
        else:raise AssertionError('unlisted type')
        accepted.append(rec)
    assert not supplied and over==3
    assert sorted(plane_pairs)==list(combinations(range(4),2))
    assert Counter(x['kind'] for x in accepted)==dict(fixed=25,reducible=2,plane=6,pencil=5)
    # Negative tests are rejection of deliberate false assertions, not bad data ignored.
    f59=next(x for x in accepted if x['id']==59)
    assert f59['signature']['delta'][3]==1
    assert sum(x['signature']['z']>=14 for x in accepted)==38
    positive=to_vec(add(P4,mul(W,{(1,0):Q(1),(0,0):Q(-3)})))
    pos_sig=generic_signature((positive,)); assert pos_sig['mu']==22
    assert affine(equations_for(pos_sig['m'])) is not None
    assert affine([tuple(0 for _ in range(24))+(1,)]) is None
    out=dict(status='PASS_B22_COMPLETE_CLASSIFICATION',consistent_models=180,forced_line_models=forced,nonline_models=89,distinct_affine_spaces=41,higher_mu_spaces=over,exact_mu22_spaces=38,counts=dict(Counter(x['kind'] for x in accepted)),max_fixed_l1=max(fixed_norms),exceptional_parameter_count=len(exceptional),max_exceptional_l1=max(x['l1'] for _,x in exceptional),families=accepted,negative_tests=['reject_false_all_deficits_first_three_rows','reject_unconditional_generic_tangency_at_cancel_parameters','reject_monic_zero_leading_condition','positive_regression_P4_plus_W_times_N_minus3'])
    Path(out_path).write_text(json.dumps(out,indent=2)+'\n')
    print(out['status'],out['counts'],'max_fixed_l1',out['max_fixed_l1'],'special',len(exceptional),'max_special_l1',out['max_exceptional_l1'],flush=True)
    return out
if __name__=='__main__':
    import sys
    certify(*sys.argv[1:])
