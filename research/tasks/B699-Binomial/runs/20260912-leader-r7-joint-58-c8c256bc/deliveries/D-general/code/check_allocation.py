"""Rebuild the full residue cover, without importing the generator.

Uses exhaustive g=1..40 enumeration, simultaneous residue testing, cached
periodic powers, and explicit square lists. No claim about noCommon is
inferred in the reverse direction.
"""
from math import gcd
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
L=2520
MS=[8,16,32,3,5,7,11,13,17,19,29,31,37,41,43,61,71,73,109,113,127]

def verify(data):
    assert data['period']==L and data['moduli']==MS and data['large_exponent_assumption']=='s>=5'
    for p in MS[3:]:
        assert all(p%d for d in range(2,p)), 'modulus not prime'
        assert pow(2,L,p)==1, 'invalid exponent period'
    for p in (25,49,9):assert pow(2,L,p)==1
    pp={m:[pow(2,s,m) for s in range(L)] for m in set(MS[3:]+[25,49,9,5,7])}
    records=[]; count=0
    for C in (5,7):
     for ell in (1,3):
      for pos in (0,1,2):
       for h in range(1,3*C):
        w=C*ell
        if h>=w or gcd(C,h)!=1:continue
        if pos==0 and h*4<=w:continue
        if pos==2 and h*4>=w:continue
        for g in range(1,41):
         if (h%(g*g)!=0 if pos==1 else (2*h)%g!=0):continue
         for c in (1,3):
          if c==3 and (ell==3 or g%3==0):continue
          count+=1
          sqs={m:set((w*y*y)%m for y in range(m)) for m in MS}
          alive=[]
          for s in range(L):
            n9=c*g*pp[9][s]%9
            la=3 if n9 in (4,7) else 1
            mu=3 if n9 in (5,8) else 1
            if la*mu!=ell:continue
            nc=c*g*pp[C*C][s]
            if (nc-2)%C or (h*(nc-2)-2*ell*C)%(C*C):continue
            good=True
            for m in MS:
              n=0 if m in (8,16,32) else c*g*pp[m][s]%m
              R=((w-2*h)*n*n+6*h*n-4*h) if pos==1 else 4*h*(n*n-3*n+2)+w
              if R%m not in sqs[m]:good=False;break
            if good:alive.append(s)
          if alive:records.append(dict(C=C,ell=ell,position=pos,h=h,g=g,c=c,residues=alive))
    assert data['complete_parameter_count']==count==282
    assert data['records']==records,'residue cover mismatch'
    assert data['surviving_parameter_count']==len(records)==8
    assert data['surviving_class_count']==sum(len(x['residues']) for x in records)==24
    mappings=[]
    for r in records:
        assert r['c']==1 and r['g'] in (1,2)
        C,ell,pos,h=r['C'],r['ell'],r['position'],r['h'];w=C*ell
        if pos==1 and 2*h>w:
            assert 6*h<=72
            target='n<72'
        elif (C,ell,pos,h)==(5,3,1,1):target='D195,E61'
        elif (C,ell,pos,h)==(7,3,1,3):target='D35,E29'
        elif (C,ell,pos,h)==(7,3,2,3):target='D7,E-6'
        elif (C,ell,pos,h)==(7,1,0,5):target='D35,E-10'
        else:raise AssertionError('survivor has no consumer')
        mappings.append({'C':C,'ell':ell,'position':pos,'h':h,'g':r['g'],'consumer':target})
    return {'status':'PASS','complete_parameters':count,'complete_parameter_residue_pairs':count*L,'surviving_classes':24,'mappings':mappings}
if __name__=='__main__':
    result=verify(json.loads((ROOT/'outputs/allocation-certificate.json').read_text()))
    (ROOT/'outputs/allocation-independent-check.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
