#!/usr/bin/env python3
"""Separated certificate receiver: does not import discover or experiment code."""
from __future__ import annotations
import argparse,json,math
from pathlib import Path

def need(x,msg):
    if not x:raise ValueError(msg)
def load(d,n):return json.loads((d/n).read_text())
def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))
def val(n,p):
    need(n!=0,'zero valuation argument');v=0
    while n%p==0:v+=1;n//=p
    return v

def independent_scan():
    cts=dict(triples=0,inverse_divisible=0,c_primitive=0,size_pass=0,tail_pass=0,
       exact_E=0,w_slots=0,primitive_W=0,z_integer=0,z_square=0,delta_positive=0,delta_square=0)
    for t in range(7):
        A=9**t
        for E in range(2,401):
            s=5**(E-1);inv3=pow(3,-1,s);v=1;B=1
            for b in range(1,1501):
                B*=3;v=v*inv3%s;cts['triples']+=1
                c,rem=divmod(v,2*A)
                if rem:continue
                cts['inverse_divisible']+=1
                if math.gcd(c,30)!=1:continue
                cts['c_primitive']+=1
                if not 10*c<B:continue
                cts['size_pass']+=1;n=5*v*B
                if n%8!=2:continue
                cts['tail_pass']+=1
                q,rem=divmod(v*B-1,s);need(rem==0,'inverse arithmetic')
                if q%5==0:continue
                cts['exact_E']+=1
                lo=-((s-1)//(4*v));hi=(s-1)//v
                cts['w_slots']+=hi-lo
                for W in range(lo,hi+1):
                    if W==0:continue
                    R=s-v*W
                    if math.gcd(W,30*c*R)!=1:continue
                    cts['primitive_W']+=1
                    Z,rem=divmod(W+B*R,500*s*c)
                    if rem or Z<=0:continue
                    cts['z_integer']+=1;z=math.isqrt(Z)
                    if z*z!=Z or z%3==0:continue
                    cts['z_square']+=1
                    d2=A*B*B-40*(n-1)*Z
                    if d2<=0:continue
                    cts['delta_positive']+=1
                    if math.isqrt(d2)**2==d2:cts['delta_square']+=1
    return cts

def accept(d:Path,skip_scan:bool=False):
    claims=load(d,'claims.json')
    need(claims['historical_net_deleted']==claims['complete_indices_deleted']==0,'net claim changed')
    need(claims['R7']==[3,4,5,6,7,8,9],'R7 changed')
    need(not claims['full_model_found'] and not claims['global_finite_bound'],'invalid scope')
    x=load(d,'cross_prime_11.json')
    need(x['c_mod275']==53 and x['W_mod11']==1,'residue family changed')
    need(x['order3_mod25']==20 and x['order3_mod11']==5,'orders changed')
    need(all(pow(3,k,25)!=1 for k in [1,2,4,5,10]) and pow(3,20,25)==1,'order25')
    need(all(pow(3,k,11)!=1 for k in [1]) and pow(3,5,11)==1,'order11')
    need(pow(3,x['log_inverse_2c_mod25'],25)*106%25==1,'log25')
    squares={v*v%11 for v in range(11)};need(x['square_residues_mod11']==sorted(squares),'squares')
    for row in x['table']:
        t=row['t_mod5'];e=row['E_mod5'];E=e if e>=3 else e+5;c=6653;W=1
        aexp=next(k for k in range(20) if 2*c*pow(3,k,25)%25==1)
        b=(aexp-2*t)%20
        A=pow(3,2*t,11);B=pow(3,b,11);s=pow(5,E-1,11)
        R=(s-2*A*c*W)%11
        Z=(W+B*R)*pow(500*s*c,-1,11)%11
        need(row['z2_mod11']==Z and row['excluded']==(Z not in squares),'cross-prime cell')
    need(sum(r['excluded'] for r in x['table'])==x['excluded_table_cells']==10,'cell tally')
    need(x['historical_net_deleted']==0,'cell counts are not net coverage')
    f=load(d,'integer_menu_family.json');p=f['c_prime'];need(p==6653 and prime(p),'prime c')
    need(prime(1663),'order factor')
    need(pow(3,6652,p)==1 and pow(3,3326,p)!=1 and pow(3,4,p)!=1,'order at c')
    need(pow(5,3326,p)==p-1,'five is a nonresidue')
    need(not f['expanded_B'] and not f['full_original_pair_produced'],'symbolic model scope')
    for r in f['members']:
        E,H,c,b,L=r['E'],r['H'],r['c'],r['b0'],r['period'];s=5**(E-1);R=s-2*c
        need(E>=27 and E%20==7 and H>=5 and c==6653,'family parameters')
        need(r['s']==s and r['R']==R and r['W']==1 and r['K']==c,'same menu')
        need(0<b<L and b>2*E+10,'positive exponent and q-size premise')
        mods=[]
        for rem,mod in r['exponent_congruences']:
            need(b%mod==rem%mod and L%mod==0,'CRT exponent');mods.append(mod)
        need(L==math.lcm(*mods),'complete progression period')
        D=500*s*c;Bmod=pow(3,b,D)
        need((R*Bmod+1)%D==0 and pow(3,L,D)==1,'ordinary Z integrality')
        need((10*c*pow(3,b,2**H)-2)%2**H==0,'2-adic base gate')
        v=(10*c*pow(3,b,5**(E+1))-5)%5**(E+1)
        need(v!=0 and val(v,5)==E,'actual E')
        Z=(pow(3,b,11)*R+1)*pow(D,-1,11)%11
        need(Z==r['z2_residue_mod11']==10 and Z not in squares,'ordinary nonsquare')
        need(10*c*pow(3,b,11)%11==r['n_residue_mod11']==6,'not an original 11 source')
        need(0<4*R<5*s and b>=1,'positive discriminant estimate premises')
        need(r['ordinary_Z_integer'] and not r['ordinary_Z_square'],'false square claim')
        for key in ['j_restored','full_source_model','NC_model','all_historical_gates_checked']:
            need(not r[key],'false original recovery: '+key)
    y=load(d,'quartic_identity.json');co=y['discriminant_core_coefficients']
    # A bivariate polynomial of degree <=4 in each variable is fixed by this 5x5 grid.
    for S in range(5):
        for R in range(5):
            left=sum(a*S**i*R**j for i,j,a in co)
            m=-20*(S*S-7*S*R+8*R*R)
            right=m*m-400*S*(S-4*R)*(S-5*R)**2
            need(left==right==1600*R**3*(16*R-3*S),'quartic polynomial identity')
    need(all(i<=4 and j<=4 for i,j,a in co),'degree bound')
    for E,t,c,W,R,l,m,u in y['exact_scalar_regressions']:
        S=5**E;A=9**t
        need(R==S//5-2*A*c*W,'same quartic menu')
        need(l==10000*A*S*c*c*(S-4*R),'leading coefficient')
        need(m==-20*(S*S-7*S*R+8*R*R) and u==A*W*W,'quartic coefficients')
        need(m*m-4*l*u==1600*R**3*(16*R-3*S)!=0,'quartic discriminant')
        need(math.isqrt(l)**2!=l,'nonsquare leading coefficient')
    s=load(d,'bounded_global_search.json');need(s['limits']==dict(b_max=1500,t_max=6,E_max=400),'scan range')
    ct=s['counts'];need(ct['triples']==1500*7*399,'triple count')
    need(ct['z_square']==len(s['z_square_rows'])==0,'square rows')
    need(ct['delta_square']==len(s['full_norm_rows'])==0,'norm rows')
    need(ct['z_integer']==0,'frozen diagnostic count')
    if not skip_scan:need(independent_scan()==ct,'separated global enumeration')
    return dict(status='PASS',certificates=5,independent_search_recomputed=not skip_scan,
                originals_or_NC_models_claimed=0,external_independent_review=False)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certs',type=Path,required=True);p.add_argument('--skip-scan',action='store_true')
    a=p.parse_args();print(json.dumps(accept(a.certs,a.skip_scan),sort_keys=True))
