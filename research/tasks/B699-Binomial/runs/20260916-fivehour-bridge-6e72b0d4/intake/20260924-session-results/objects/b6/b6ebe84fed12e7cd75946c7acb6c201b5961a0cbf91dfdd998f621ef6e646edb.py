"""Exact polynomial identities only; no proof-assistant claim."""
from pathlib import Path
import argparse,json
import sympy as s

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    C,F,c,f,A,B,b,w=s.symbols('C F c f A B b w')
    kap=C*C-4800;D=5*kap;N=-42*C**4+489600*C*C;T=720*C*(C*C-20800)
    delta=(D*F-N)**2-3*T*T
    Q=25*kap*F**2-10*N*F+36*C*C*(49*C**4-950400*C*C+3893760000)
    Pi=25*(c*c-300)*f*f+(420*c**4-306000*c*c)*f+1764*c**6-2138400*c**4+547560000*c*c
    L=(N+s.sqrt(3)*T)/D
    V=w*w-97200*c*c+194400000
    checks={}
    def check(name,expr):
        z=s.cancel(s.expand(expr));assert z==0,(name,z);checks[name]='PASS'
    check('N2_MINUS_3T2_CONTENT',N*N-3*T*T-36*C*C*kap*(49*C**4-950400*C*C+3893760000))
    check('DELTA_EQUALS_KAPPA_Q',delta-kap*Q)
    check('Q_NORMALIZATION',Q.subs({C:4*c,F:16*f},simultaneous=True)-2**12*Pi)
    check('DELTA_NORMALIZATION',delta.subs({C:4*c,F:16*f},simultaneous=True)-2**16*(c*c-300)*Pi)
    ZZ=20*B-320*A-C
    FF=3*ZZ**2-64*(C*A+15)**2
    check('F_DIVIDES_16',FF.subs({B:4*b,C:4*c},simultaneous=True)-16*(3*(20*b-80*A-c)**2-4*(4*c*A+15)**2))
    check('CONJUGATE_FACTOR',delta-D*(F-L)*(D*F-N+s.sqrt(3)*T))
    check('PI_TARGET_ROOT',Pi.subs(f,L.subs(C,4*c)/16))
    check('PI_SHIFTED_FORM',Pi.subs(f,(w-42*c*c+18000)/5)-((c*c-300)*V-10800000*(w+3600)))
    wL=5*L.subs(C,4*c)/16+42*c*c-18000
    check('SHIFTED_TARGET',wL-(180*s.sqrt(3)*c*(c*c-1300)+5400000)/(c*c-300))
    check('V_ZERO_REDUCTION',V-(w*w-180**2*(3*c*c-6000)))
    # The source-parameter norm is not automatically divisible by A or B.
    weak=delta.subs({C:-92,F:FF.subs({A:0,B:-4,C:-92},simultaneous=True)},simultaneous=True)
    check('A_ZERO_WEAK_NORM',weak+2**16*3**2*229*9337*54083)
    # Direct universal D estimate after clearing its harmless sign.
    check('D_BOUND_POLYNOMIAL',8*(C+80)**2-5*(C*C+4800)-(3*C*C+1280*C+27200))
    out={'status':'PASS','checks':checks,'count':len(checks),'sympy_version':s.__version__,
         'proof_level':'exact polynomial identities only; paper nonzero/inequality arguments in PROOFS.md'}
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
    print('NORMALIZATION_AND_SHIFT_IDENTITIES=PASS; CHECKS='+str(len(checks)))
if __name__=='__main__':main()
