"""Generate the entire bounded (q,C) cubic terminal cover. Standard library only.
Adapted from the frozen Round22 generator; provenance is in SOURCE_ADOPTION.md.
Algorithm A solves EH quadratically after enumerating every AB residue.
"""
from pathlib import Path
import argparse,json
from arithmetic import is_prime,pell_coordinates

def allowed_at(p:int,q:int)->set[int]:
    if not (p>3 and is_prime(p)): raise ValueError('auxiliary prime required')
    d,y=pell_coordinates(q,p)
    sq={a*a%p:a for a in range(p)}
    inv=[0]+[pow(a,-1,p) for a in range(1,p)]
    target=3*(d-1)%p
    possible=set()
    for a in range(p):
        bs=[target*inv[a]%p] if a else (range(p) if target==0 else [])
        for b in bs:
            lead=d*d%p
            linear=-(6*d*d+10*a*d*y+4*a*a*y*y)%p
            constant=-(11*d*d+10*a*d*y+3*a*a*y*y+4*b*y)%p
            if lead:
                disc=(linear*linear-4*lead*constant)%p
                if disc not in sq: continue
                z=sq[disc]
                roots={(-linear+z)*inv[2*lead%p]%p,(-linear-z)*inv[2*lead%p]%p}
            elif linear: roots=[-constant*inv[linear]%p]
            elif constant==0: roots=range(p)
            else: roots=[]
            for h in roots:
                possible.add((16*a*d+120*y+27*b-4*b*h)%p)
    return possible

def all_terminal():
    return [(q,c) for q in range(1,23) if q%3!=1 for c in range(4,q**3+1,4)]

def pass_parity(q,c):
    return (-c)%16 in ([0,12] if q%2 else [4,8])

def make_certificate():
    full=all_terminal()
    pending=[x for x in full if pass_parity(*x)]
    rows=[]
    for p in range(5,104):
        if not is_prime(p): continue
        tab={q:allowed_at(p,q) for q in sorted({q for q,c in pending})}
        bad=[(q,c) for q,c in pending if (-c)%p not in tab[q]]
        rows.extend({'q':q,'C':c,'p':p} for q,c in bad)
        gone=set(bad)
        pending=[x for x in pending if x not in gone]
    if pending: raise ArithmeticError(('uncovered',pending))
    return {'schema':'B699-D-round23-cubic-C-terminal-v1',
            'q_max':22,'C_condition':'0<C<=q^3 and 4 divides C',
            'q_allowed_mod3':[0,2],
            'same_origin_J_mod16':{'even':[4,8],'odd':[0,12]},
            'grid_count':len(full),'after_parity':sum(pass_parity(*x) for x in full),
            'witnesses':sorted(rows,key=lambda x:(x['q'],x['C'])),
            'scope':'Finite projections of the same-original-input balanced necessary core; no converse.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    out=ap.parse_args().output;out.parent.mkdir(parents=True,exist_ok=True)
    cert=make_certificate();out.write_text(json.dumps(cert,sort_keys=True,indent=2)+'\n')
    print('TERMINAL_GENERATED=PASS; GRID=',cert['grid_count'],'AFTER_PARITY=',cert['after_parity'])
if __name__=='__main__':main()
