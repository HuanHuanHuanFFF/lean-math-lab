import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialSingle

theorem last_check : primorialPrimeCheck 4473 primorial4473 20000093 = true := by
  decide +kernel

theorem last_prime : Nat.Prime 20000093 :=
  primorialPrimeCheck_sound (B := 4473) (P := primorial4473) (p := 20000093) (ps := basis4473)
    basis4473_complete basis4473_prod_eq last_check

end B699MiddleExtension.PrimorialSingle

#print axioms B699MiddleExtension.PrimorialSingle.last_check
#print axioms B699MiddleExtension.PrimorialSingle.last_prime
