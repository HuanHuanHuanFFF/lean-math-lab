#!/usr/bin/env python3
"""Check one explicitly supplied ordinary factor menu. No search and no NC claim.
Usage: python -B scripts/check_factor_menu.py --input menu.json
menu.json must contain integer t,b,E,W,u_minus. Large computations are intentional;
set an external resource limit when checking untrusted input.
"""
from __future__ import annotations
import argparse,json,math
from pathlib import Path

def need(x:bool,msg:str)->None:
    if not x:raise ValueError(msg)
def div(n:int,d:int,label:str)->int:
    need(d>0 and n%d==0,label+': not an ordinary integer division')
    return n//d
def rough(n:int)->int:
    need(n>0,'positive coarse input required')
    for p in (2,3,5):
        while n%p==0:n//=p
    return n
def sq(n:int)->bool:return n>=0 and math.isqrt(n)**2==n
def jac3(n:int)->int:
    need(n>0 and math.gcd(n,6)==1,'Jacobi denominator must be positive and coprime to 6')
    return 1 if n%12 in (1,11) else -1

def check(o:dict)->dict:
    for key in ('t','b','E','W','u_minus'):
        need(type(o.get(key)) is int,'missing ordinary integer '+key)
    t,b,E,W,u=o['t'],o['b'],o['E'],o['W'],o['u_minus']
    need(t>=0 and b>=1 and E>=3 and W!=0 and u>0,'parameter range')
    A,B,S=3**(2*t),3**b,5**E;s=S//5;r0=pow(B,-1,s)
    c=div(r0,2*A,'inverse menu c');need(c>0 and math.gcd(c,30)==1,'c primitive')
    need(-((s-1)//(4*r0))<=W<=(s-1)//r0,'W interval')
    # The negative endpoint uses -floor, not floor of a negative rational.
    need(W>=-((s-1)//(4*r0)),'negative W endpoint')
    R=s-r0*W;need(1<=R<=(S-1)//4,'positive fifth quotient')
    need(math.gcd(abs(W),30*c*R)==1,'unitary/primitivity contract')
    q=div(r0*B-1,s,'q5');g=10*3**t*c;alpha=3**(t+b);n=g*alpha;N=n-1
    need(q==rough(n-5) and n-5==S*q,'actual complete fifth small part')
    Z=div(W+B*R,100*S*c,'ordinary Z')
    need(Z>0 and sq(Z),'ordinary positive z square');z=math.isqrt(Z);need(z%3!=0,'3-unit z')
    U=10*g*g*Z;need(q*R==U-1,'same actual fifth quotient')
    L=alpha-20*g*Z;P=10*Z*(U-1)
    q2=rough(n-2);E2=math.gcd(q2,U);M=q2//E2
    need(math.gcd(E2,M)==1 and (U-1)%(M*M)==0,'complete second-source gate')
    lp=div(L,M,'factor sum');pp=div(P,M*M,'factor product')
    v=div(pp,u,'provided full factor');need(u<v and math.gcd(u,v)==1 and u+v==lp,'same global unitary factor sum')
    X,Y=M*u,M*v
    for h in (X,Y):need(not sq(h) and not (h%3==0 and sq(h//3)),'GAP-CORE violation')
    delta=Y-X;beta=10*g*Z+X;j=g*beta;k=n-j
    need(j>=7 and 2*j<n,'ordinary legal input')
    need(math.gcd(n,j)==g and j*k==N*U,'true gcd and first source')
    need(delta*delta+40*N*Z==alpha*alpha,'ordinary second square')
    qs=[rough(n-r) for r in range(6)]
    windows=[math.prod(j-d for d in range(r+1))%qs[r]==0 for r in range(6)]
    near=((j-1)*(j-4))%q==0;need(near,'full fifth near window')
    C=math.gcd(qs[4],j-2);E4=math.gcd(qs[4],j*k)
    central=(j-2)*(k-2)%(C*C)==0
    # No remaining high-gate verification or global noCommon inference is claimed.
    return {'status':'ORDINARY_STRUCTURAL_RECOVERY_NOT_NC', 'n':n,'j':j,'g':g,'a':t+b,
      'z':z,'delta':delta,'X':X,'Y':Y,'M2':M,'u_minus':u,'u_plus':v,'q5':q,
      'source_windows':windows,'all_source_windows':all(windows),'all_q5_near':near,
      'E4_square':sq(E4),'chi3_C':jac3(C),'central_C_squared':central,
      'frozen_high_gates_checked':False,'noCommon_proved':False,'current_model_certified':False}

def main():
    p=argparse.ArgumentParser();p.add_argument('--input',type=Path,required=True);a=p.parse_args()
    try:result=check(json.loads(a.input.read_text()))
    except (ValueError,TypeError,KeyError) as e:
        print(json.dumps({'status':'REJECT','reason':str(e)},ensure_ascii=False));raise SystemExit(2)
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
