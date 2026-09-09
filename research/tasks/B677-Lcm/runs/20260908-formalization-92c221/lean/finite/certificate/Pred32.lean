import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Data32
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Data31
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash32 : ℕ → Bool := B677Finite.hashPointCheck 89693 32 64 row32 lookup32
def step32 : ℕ → Bool := B677Finite.directNextPointCheck 89693 31 64 18446744073709551557 row31 row32
end B677FiniteHashGenerated
