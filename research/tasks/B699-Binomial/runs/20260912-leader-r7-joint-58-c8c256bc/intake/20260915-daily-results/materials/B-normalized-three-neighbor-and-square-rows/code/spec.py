"""Mathematical constants. Discovery is not trusted by the verifiers."""
PERIOD = 360
# (epsilon, odd root part m, residual h, modulus, x residue)
CERTIFICATE = [
    [-1,7,1,9,7],[-1,7,1,9,4],[1,7,1,9,5],[1,7,1,9,2],
    [-1,5,2,9,4],[-1,5,2,9,7],
    [-1,5,1,13,1],[-1,5,1,13,9],[-1,5,1,17,7],
    [-1,5,1,11,8],[-1,5,1,11,2],[-1,5,1,19,8],
    [-1,5,1,19,3],[-1,5,1,41,10],[-1,5,1,37,16],
    [-1,5,1,61,21],[-1,5,1,73,20],[-1,5,1,151,5],
]
TEMPLATES = [(-1,7,1),(1,7,1),(-1,5,1),(-1,5,2)]

def polynomial(e: int, m: int, h: int, x: int, u: int) -> int:
    D=x-e
    return 4*u*(m*m*u-3*D)*(m*m*u-6*D)-(h*D-9*u)*(x*x-2)

def expected_states(period: int = PERIOD):
    if period != PERIOD:
        raise ValueError('The proved coverage period is fixed at 360.')
    return [(e,m,h,s) for e,m,h in TEMPLATES for s in range(period)
            if (m*pow(2,s,9)+e)%3==0 and (m*pow(2,s,9)+e)%9!=0]
