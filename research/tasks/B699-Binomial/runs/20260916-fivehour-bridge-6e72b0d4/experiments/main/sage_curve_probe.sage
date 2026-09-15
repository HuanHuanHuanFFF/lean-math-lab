import json
E=EllipticCurve(QQ,[0,0,0,-9900,-190000])
M=E.minimal_model()
print(json.dumps({'sage_version':version(),'model':[str(x) for x in E.a_invariants()],'minimal_model':[str(x) for x in M.a_invariants()],'conductor':str(E.conductor()),'discriminant_factorization':str(E.discriminant().factor()),'j_invariant':str(E.j_invariant()),'torsion_order':int(E.torsion_order())}))
try:
    print('PROVEN_RANK',E.rank(proof=True))
    print('GENERATORS',E.gens(proof=True))
except Exception as exc:
    print('RANK_OR_GENERATORS_UNRESOLVED',type(exc).__name__,str(exc))
