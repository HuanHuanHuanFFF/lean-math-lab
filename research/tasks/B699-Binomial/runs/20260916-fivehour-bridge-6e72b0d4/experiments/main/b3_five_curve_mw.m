// Exact models for the five remaining normalized b=3 curve pairs.
SetSeed(699071);
for k in [7,11,16,20,25] do
  c := 2*k;
  aa := -36*(2*c^2+243);
  bb := 2*c^4+7776*c^2-314928;
  E := EllipticCurve([0,0,0,aa,bb]);
  print "RESULT MODEL", k, aInvariants(E), Discriminant(E);
  started := Cputime();
  lo, hi := RankBounds(E);
  print "RESULT RANK", k, lo, hi;
  G, mp, rankProven, groupProven := MordellWeilGroup(E);
  print "RESULT FLAGS", k, rankProven, groupProven;
  print "RESULT GROUP", k, G;
  print "RESULT GENERATORS", k, Generators(E);
  print "RESULT SECONDS", k, Cputime(started);
end for;
