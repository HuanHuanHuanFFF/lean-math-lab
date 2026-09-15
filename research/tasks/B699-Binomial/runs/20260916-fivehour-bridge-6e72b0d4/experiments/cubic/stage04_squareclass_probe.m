procedure Main()
  QQ<z> := PolynomialRing(Rationals());
  K<th> := NumberField(z^3-27*z+4);
  tau := -9*th^2+4*th+209;
  ds := [1,-2,-15,-87,-290,30,145,174];
  print "RESULT NORM_TAU",Norm(tau);
  for d in ds do
    ok, root := IsSquare(tau/d);
    f := d^3*z^6-141*d^2*z^4-13920*d*z^2-84100;
    facts := Factorization(f);
    print "RESULT SQUARECLASS",d,ok,"FACTOR_DEGREES",[Degree(p[1]):p in facts];
    if ok then print "RESULT SQUARE_ROOT",d,Eltseq(root);end if;
    print "FACTOR_POLYNOMIALS",d,facts;
  end for;
  print "RESULT SQUARECLASS_PROBE_COMPLETE",true;
end procedure;
Main();
