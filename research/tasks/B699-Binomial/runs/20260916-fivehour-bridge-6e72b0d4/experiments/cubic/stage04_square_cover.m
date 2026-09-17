procedure Main()
  SetSeed(69905);
  P<Z,U,T> := ProjectiveSpace(Rationals(),2);
  D := 5*Z^2-T^2;
  ff := 4*U*T*(25*U*T-3*D)*(25*U*T-6*D)
         -(D-9*U*T)*(25*Z^4-2*T^4);
  print "RESULT PLANE_POLYNOMIAL_IRREDUCIBLE",IsIrreducible(ff);
  C := Curve(P,ff);
  gg := Genus(C);
  print "RESULT SQUARE_COVER_GENUS",gg;
  phi := CanonicalMap(C);
  CC := phi(C);
  print "RESULT CANONICAL_GENUS",Genus(CC);
  print "RESULT CANONICAL_AMBIENT_DIM",Dimension(AmbientSpace(CC));
  assert gg eq 4 and Genus(CC) eq 4;
  print "CANONICAL_EQUATIONS",DefiningEquations(CC);
  aut := AutomorphismGroup(CC);
  print "RESULT AUT_OVER_Q_ORDER",Order(aut);
  print "RESULT GENERATOR_ORDERS",[Order(g):g in Generators(aut)];
  CQ, quotient_map := CurveQuotient(aut);
  print "RESULT FULL_AUT_QUOTIENT_GENUS",Genus(CQ);
  print "RESULT COVER_STRUCTURE_PROBE_COMPLETE",true;
end procedure;
Main();
