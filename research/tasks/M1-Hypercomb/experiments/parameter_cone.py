from exact_tools import *
from fractions import Fraction as F


def ratio_order(a, b):
    # a <=ratio b means a[k]/a[k-1] <= b[k]/b[k-1].
    return [k for k in range(max(len(a), len(b)) + 1)
            if get(a, k) * get(b, k-1) > get(b, k) * get(a, k-1)]


def run():
    first = {}
    count = 0
    for r in [F(0),F(1,10),F(1,2),F(1),F(2),F(3),F(5),F(10),F(100)]:
        for b in [F(0),F(1,10),F(1,2),F(1),F(2),F(3),F(5),F(10),F(100)]:
            # Scale x by 10 to use integers throughout.
            q, rr = [1,int(10*b)], [1,int(10*r)]
            aa, bb = mul(q, rr), mul([0,10],q)
            ds = [[1], add(aa, [0,10])]
            for n in range(2, 41):
                ds.append(add(mul(aa,ds[-1]),mul(bb,ds[-2])))
            for n in range(1,41):
                cc=mul(q,add(ds[n],scale([0]+ds[n-1],10)))
                probes=[("C_LC", logconcavity_failures(cc)),
                        ("D_LC",logconcavity_failures(ds[n])),
                        ("D_sync_xDprev",cross_failures(ds[n],[0]+ds[n-1])),
                        ("D_sync_QDprev",cross_failures(ds[n],mul(q,ds[n-1]))),
                        ("QDprev_ratio_D",ratio_order(mul(q,ds[n-1]),ds[n])),
                        ("DprevR_ratio_D",ratio_order(mul(rr,ds[n-1]),ds[n]))]
                count+=1
                for label,bad in probes:
                    if bad and label not in first:
                        first[label]={"r":str(r),"b":str(b),"n":n,"failure":bad[:3],"note":"x scaled by 10"}
    write_report("parameter-cone.json",{"count":count,"first_failures":first})


if __name__=="__main__": run()
