from core import consume
import argparse,json
p=argparse.ArgumentParser(description='Original-input M2TOP nonzero-band row consumer')
p.add_argument('--P',type=int,required=True);p.add_argument('--Q',type=int,required=True)
a=p.parse_args()
try:r=consume(a.P,a.Q)
except ValueError as e:p.error(str(e))
print(json.dumps(r,ensure_ascii=False,indent=2))
