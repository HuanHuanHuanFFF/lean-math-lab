import NonprimeDefsOnly

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

example : ¬ _root_.Nat.Prime 4884 := B699CompositeTransfer20261003.not_prime_4884
example : ¬ _root_.Nat.Prime 4885 := B699CompositeTransfer20261003.not_prime_4885
example : ¬ _root_.Nat.Prime 4886 := B699CompositeTransfer20261003.not_prime_4886
example : ¬ _root_.Nat.Prime 4887 := B699CompositeTransfer20261003.not_prime_4887
example : ¬ _root_.Nat.Prime 4888 := B699CompositeTransfer20261003.not_prime_4888

namespace B699CompositeTransfer20261003

example : ¬ _root_.Nat.Prime 4884 := not_prime_4884
example : ¬ _root_.Nat.Prime 4885 := not_prime_4885
example : ¬ _root_.Nat.Prime 4886 := not_prime_4886
example : ¬ _root_.Nat.Prime 4887 := not_prime_4887
example : ¬ _root_.Nat.Prime 4888 := not_prime_4888
example : ¬ _root_.Nat.Prime (4884 + 1) := not_prime_4885
example : ¬ _root_.Nat.Prime (4885 + 1) := not_prime_4886
example : ¬ _root_.Nat.Prime (4886 + 1) := not_prime_4887
example : ¬ _root_.Nat.Prime (4887 + 1) := not_prime_4888

end B699CompositeTransfer20261003
