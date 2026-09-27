from experiments import build_all,ROOT
from core import canonical,digest
import time
start=time.monotonic()
certs=build_all()
for name,data in certs.items(): (ROOT/'certificates'/name).write_bytes(canonical(data))
summary={'status':'PASS','certificate_count':len(certs),'elapsed_seconds':round(time.monotonic()-start,6),
         'certificates':{name:{'sha256':digest(data),'bytes':len(canonical(data))} for name,data in certs.items()}}
(ROOT/'logs/discovery.json').write_bytes(canonical(summary))
print(canonical(summary).decode(),end='')
