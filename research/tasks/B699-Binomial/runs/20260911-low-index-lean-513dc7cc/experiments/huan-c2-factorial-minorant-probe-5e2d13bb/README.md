# Fixed20-dimensional factorial minorant probe for C2(4m,4m,m)

Owner /root/i13_high_height. Writes only this directory; noLean,noinstall,oldpackagesfrozen. Start2026-09-12 05:09:12UTC;20minutecheckpoint05:29:12UTC,notadeadline.

Fixed basis a=j/2,j=1..20. Target g(t)=1[floor(9t)-2floor(4t)-floor(t)=2]. Require f=sumwa floor(a*t)<=g at every exact interval of[0,2),and sum a*wa=0,so f is2-periodic. Target entropy rate>0.910560352. Existing directD rate≈0.876597250734. Negative coefficients allowed; m positive even makes everya*m integer.

C1/C2 paper bridge first checked from ProCR2 notes/PROOFS.md: layerdifference occurs exactly when(4m modq)+(4m modq)+(m modq)=2q,which impliesq|9m; eachlayercount<=vp(9m),henceC1/C2 divides9m and C2>=C1/(9m). This preserves asymptoticrate only; neweffectiveallm bound remains separate.

Tool inventory: systemPython3.14 hasSymPy1.14.0 withsympy.solvers.simplex.linprog,noscipy/highspy/pulp;bundledPython3.12alsonoscipy. UseexistingexactSymPyLP with rationalized floating log objective once fordiscovery;acceptance requiresrationalweights,all-breakpointchecks,andoutwardlogcertificate. Noadditionalbasisorfamilysearch.

Finalresult: exactfixed20basis optimum=9log3-13log2<0.910560352. REPORT.md/verification.json and19positive-symbolic-dual certificate justify noimprovement. K1 oldD minorant retained, C1/C2|9m bridge confirmed. No otherbasisorfamily tested.
