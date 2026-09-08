Q := Rationals();
R<x> := PolynomialRing(Q);
f := 9*x^6 + 64*x^5 - 200*x^3 + 64*x + 144;
C := HyperellipticCurve(f);
J := Jacobian(C);

print "NONSINGULAR", IsNonsingular(C);
T := TorsionSubgroup(J);
print "TORSION_INVARIANTS", Invariants(T);
S := TwoSelmerGroup(J);
print "SELMER_ORDER", #S;
print "SELMER_INVARIANTS", Invariants(S);

pts := Points(C : Bound := 20000);
print "POINT_COUNT", #pts;

G, m, finite, proved, rank_bound :=
  MordellWeilGroupGenus2(
    J : BoundC := 20000, MaxBound := 10000, MaxIndex := 1000
  );
print "MW_INVARIANTS", Invariants(G);
print "FINITE_INDEX", finite;
print "PROVED", proved;
print "RANK_BOUND", rank_bound;
print "GENERATORS", [m(G.i) : i in [1..Ngens(G)]];

P0 := C![0, 12, 1];
basis_points := [
  C![-20, 19308, 1],
  C![-20, -19308, 1],
  C![-38, 55764, 5],
  C![-2, 12, 1],
  C![-1, 15, 1]
];
basis_differences := [J![P, P0] : P in basis_points];
basis_coordinates := [Eltseq(D @@ m) : D in basis_differences];
basis_matrix := Matrix(Integers(), basis_coordinates);
print "POINT_DIFFERENCE_COORDINATES", basis_coordinates;
print "POINT_DIFFERENCE_DETERMINANT", Determinant(basis_matrix);

H, AtoH := TwoCoverDescent(C);
print "TWO_COVER_COUNT", #H;

known, all_known, search_bound :=
  RationalPointsGenus2(
    C : Bound1 := 20000, Bound2 := 20000,
        Fast := false, PrimeCutoff := 10000
  );
print "RATIONAL_POINT_COUNT", #known;
print "RATIONAL_POINTS_PROVED_ALL", all_known;
print "RATIONAL_POINT_SEARCH_BOUND", search_bound;
