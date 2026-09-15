"""Print exact conditional shape bounds; never enumerate B or n."""
import argparse,json
from arithmetic import residual_shape_bounds
p=argparse.ArgumentParser();p.add_argument('--E',type=int,required=True)
a=p.parse_args();print(json.dumps(residual_shape_bounds(a.E),ensure_ascii=False,indent=2))
