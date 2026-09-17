"""Exact symbolic certificate for the arbitrary-loss cubic and projective model."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
import sympy as s

x,a,b,rho,D,W,z,k=s.symbols('x a b rho D W z k')
Ak=-36*(8*k*k+243);Bk=32*k**4+31104*k*k-314928
L=9*W+2*k*D;C=8*k*(729-k*k);s0=486-4*k*k
T=(C*D-s0*L)/9;Z=L
det_results=[]
for ep in (1,-1):
    G=W**3-27*W*D**2+2*k*D**3+ep*(18*D*W+4*k*D**2)*z-(9*W+2*k*D)*z*z
    V=C*(z-ep*D)
    assert s.factor(V*V*Z-T**3-Ak*T*Z*Z-Bk*Z**3+C*C*G)==0
    determinant=s.factor(s.Matrix([T,V,Z]).jacobian([D,W,z]).det())
    assert s.factor(determinant+C*C)==0
    d=x-ep*z
    F=12*a*(a-b*d)*(a-2*b*d)-(rho*d-3*a*b*b)*(x*x-2*z*z)
    substituted=G.subs({D:d,W:6*a/b-6*d,k:27-9*rho/b**3},simultaneous=True)
    assert s.factor(substituted-18*F/b**3)==0
    Faff=s.expand(F.subs(z,1));da=x-ep
    assert s.factor(Faff.subs(rho,3*b**3)-3*(a-b*da)*(4*a*(a-2*b*da)+b*b*(x*x-2)))==0
    assert s.factor(Faff.subs(rho,6*b**3)-3*(a-2*b*da)*(4*a*(a-b*da)+b*b*(x*x-2)))==0
    coeffs={str(m):str(c) for m,c in s.Poly(Faff,x,a).terms()}
    assert len(coeffs)==10
    det_results.append({'epsilon':ep,'projective_determinant':str(determinant),'integer_cubic_coefficients':coeffs,
                        'G_equals_18_F_over_b3':True,'both_singular_factors_verified':True})
disc=s.factor(-16*(4*Ak**3+27*Bk**2))
assert s.factor(disc+442368*k*k*(k*k-729)**2*(k*k-54))==0
residues=[]
for ep in (1,-1):
    for xr in (0,2):
        dr=(xr-ep)%4
        for br in (1,3):
            rhs0=(br*br*(3*dr*dr-2*ep*dr+1))%4
            assert rhs0==2
            if ep==-1:assert br*br*(3-2*ep*xr)%4==3
            residues.append([ep,xr,br,rhs0])
out={'status':'PASS','scope':'All-parameter identities, invertible projective model, and finite residue checks. Masser bound remains an explicitly cited external theorem.',
     'symbolic_results':det_results,'Weierstrass_discriminant':str(disc),
     'singular_parameter_residue_checks':residues,
     'coefficient_bound':'max(12,36b,48b^2,2rho)<=48b^3 for b>=1 and 0<rho<7b^3',
     'derived_bound':'log n <= 2*(960*b^3)^600000',
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=Path(__file__).with_name(f'stage11-general-loss-{stamp}.json')
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'both_epsilon':True,'all_parameter_projective_identity':True,
                  'coefficient_bound':'48b^3','singular_rational_parameters_excluded':['k=0','k=27','k=-27']}))
