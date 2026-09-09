import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.PowerTrace

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceRepresentative

open B699Dyadic

def trace : List PowState := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨9, ⟨85528470722954, 172⟩⟩,
    ⟨18, ⟨103954097656459, 390⟩⟩,
    ⟨36, ⟨76784476871472, 827⟩⟩,
    ⟨72, ⟨83785151452185, 1700⟩⟩,
    ⟨145, ⟨118922605932098, 3470⟩⟩,
    ⟨291, ⟨119792364722081, 7011⟩⟩,
    ⟨582, ⟨101964379309352, 14069⟩⟩,
    ⟨1164, ⟨73873242797202, 28185⟩⟩,
    ⟨2328, ⟨77552272179196, 56416⟩⟩,
    ⟨4656, ⟨85469123975999, 112878⟩⟩,
    ⟨9313, ⟨123751024910472, 225826⟩⟩,
    ⟨18627, ⟨129717303576035, 451723⟩⟩,
    ⟨37255, ⟨71263333365065, 903518⟩⟩,
    ⟨74511, ⟨86032504266198, 1807106⟩⟩,
    ⟨149023, ⟨125387842170449, 3614282⟩⟩,
    ⟨298046, ⟨111712317363992, 7228611⟩⟩,
    ⟨596092, ⟨88673188619974, 14457269⟩⟩,
    ⟨1192184, ⟨111739018109823, 28914584⟩⟩,
    ⟨2384368, ⟨88715581854241, 57829215⟩⟩,
    ⟨4768737, ⟨133330684812991, 115658500⟩⟩,
    ⟨9537474, ⟨126313690264377, 231317047⟩⟩,
    ⟨19074948, ⟨113368147567919, 462634141⟩⟩]

theorem checked : powTraceUpCheck 48 (embed 20000000) 19074948 ⟨113368147567919, 462634141⟩ trace = true := by
  decide +kernel

theorem bound : 20000000 ^ 19074948 ≤ (⟨113368147567919, 462634141⟩ : B699Dyadic.Dyadic).value := by
  simpa only [value_embed] using powTraceUpCheck_sound checked

end B699TraceRepresentative

#print axioms B699TraceRepresentative.bound
