from pathlib import Path
import json,math
R=Path(__file__).resolve().parents[1]
def main():
    x=json.loads((R/'evidence/i14_scalar_bridge.json').read_text())
    assert (x['i'],x['r'],x['s'],x['ell'],x['lambda_'],x['E'])==(14,3,10,10,17,165)
    expected=[]
    for a in range(14):
        for b in range(a+1):
            c=a-b;v=max(0,a-3)+max(0,10-b)+max(0,10-c);assert v>=17;expected.append([a,b,c,v])
    assert x['pointwise_rows']==expected and x['n_product_lower_start']==182
    assert int(x['K'])==2**110*math.prod(math.factorial(h)**3 for h in range(1,11))
    assert sum(range(14))==91 and 2*91==182 and 14*17-165==x['degree']==73
    print('PASS i14 scalar full-power consumer: K V^17 <= n^165; product-Q bridge degree 73')
if __name__=='__main__':
    if not __debug__:raise RuntimeError('No -O')
    main()
