from core import consume,canonical
import argparse
p=argparse.ArgumentParser(description='Guarded exact M2ZERO row consumer')
p.add_argument('--P',type=int,required=True);p.add_argument('--Q',type=int,required=True)
a=p.parse_args()
try:
    result=consume(a.P,a.Q)
except (ValueError,AssertionError) as exc:
    p.exit(2,str(exc)+'\n')
print(canonical(result).decode(),end='')
