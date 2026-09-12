"""Complete necessary-parameter cover for C=5,7. No n/q scan is used."""
from math import gcd,isqrt
from pathlib import Path
import json
L=2520
MODS=[8,16,32,3,5,7,11,13,17,19,29,31,37,41,43,61,71,73,109,113,127]
ROOT=Path(__file__).resolve().parents[1]

def ell_of(n):
    lam=3 if n%3==1 and n%9!=1 else 1
    mu=3 if n%9 in (5,8) else 1
    return lam*mu

def params():
    out=[]
    for C in (5,7):
      for ell in (1,3):
       w=C*ell
       for pos in (0,1,2):
        for h in range(1,w):
         if gcd(h,C)!=1 or (pos==0 and 4*h<=w) or (pos==2 and 4*h>=w):continue
         gs=[g for g in range(1,2*h+1) if (2*h)%g==0] if pos!=1 else [g for g in range(1,isqrt(h)+1) if h%(g*g)==0]
         for g in gs:
          for c in (1,3):
           if c==3 and (ell==3 or g%3==0):continue
           out.append((C,ell,pos,h,g,c))
    return out

def generate():
    ps=params();records=[]
    for C,ell,pos,h,g,c in ps:
        w=C*ell
        alive=[s for s in range(L) if ell_of(c*g*pow(2,s,9))==ell and (c*g*pow(2,s,C)-2)%C==0 and (h*(c*g*pow(2,s,C*C)-2)-2*ell*C)%(C*C)==0]
        for m in MODS:
            squares={w*y*y %m for y in range(m)}
            nxt=[]
            for s in alive:
                n=0 if m%2==0 else c*g*pow(2,s,m)%m
                R=4*h*(n-1)*(n-2)+w if pos!=1 else (w-2*h)*n*n+6*h*n-4*h
                if R%m in squares:nxt.append(s)
            alive=nxt
            if not alive:break
        if alive:records.append(dict(C=C,ell=ell,position=pos,h=h,g=g,c=c,residues=alive))
    return {'period':L,'moduli':MODS,'complete_parameter_count':len(ps),'large_exponent_assumption':'s>=5','surviving_parameter_count':len(records),'surviving_class_count':sum(len(r['residues']) for r in records),'records':records}

if __name__=='__main__':
    obj=generate();(ROOT/'outputs/allocation-certificate.json').write_text(json.dumps(obj,indent=2)+'\n')
    print({k:v for k,v in obj.items() if k!='records'})
