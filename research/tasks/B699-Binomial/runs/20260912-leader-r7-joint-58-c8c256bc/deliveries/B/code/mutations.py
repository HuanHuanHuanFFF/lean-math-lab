import argparse,json,copy
from exact import require,write_json
from check_modular import check

def run(cert):
    bad=[]
    def reject(name,fn):
        q=copy.deepcopy(cert);fn(q)
        try:check(q)
        except (ValueError,KeyError,TypeError):bad.append(name)
        else:raise ValueError('mutant accepted: '+name)
    reject('replace complete 9 by radical 3',lambda z:z.update(C=3))
    reject('wrong exponent period',lambda z:z.update(period=54))
    reject('drop second prime-power layer',lambda z:z.update(normalizing_modulus=9))
    reject('unverified modulus list',lambda z:z.update(moduli=[5,13,19]))
    reject('omit one state',lambda z:z['records'].pop())
    reject('duplicate one state',lambda z:z['records'].append(copy.deepcopy(z['records'][0])))
    reject('alter numerator',lambda z:z['records'][0].update(h=2))
    reject('alter odd core',lambda z:z['records'][0].update(m=5))
    reject('alter exponent residue',lambda z:z['records'][0].update(residue=26))
    reject('alter recorded remainder',lambda z:z['records'][0].update(rhs=9))
    reject('use modulus that allows a root',lambda z:z['records'][0].update(modulus=5,rhs=4))
    reject('exchange middle and outer equation',lambda z:z['records'][0].update(mode='middle'))
    # Weaker necessary congruence has an explicit false positive.
    n,h=128,1
    require(n%9==2 and (h*(n-1)*(n-2)-18)%9==0,'weak congruence example')
    require((h*(n-1)*(n-2)-18)%81!=0,'strong congruence must reject it')
    return dict(status='PASS',rejected=len(bad),tests=bad,weak_modulus_example=dict(n=n,h=h,mod9_pass=True,mod81_pass=False))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificate',required=True);p.add_argument('--out',required=True);a=p.parse_args()
    data=run(json.loads(open(a.certificate).read()));write_json(a.out,data);print('rejected',data['rejected'],'bad certificates')
