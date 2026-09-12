import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.QuarticAlgebra
namespace B699.SmoothWindow
theorem quarticI_scale (q a b c d e : ℤ) :
    quarticI (q*a) (q*b) (q*c) (q*d) (q*e) = q^2 * quarticI a b c d e := by
  simp only [quarticI]; ring
theorem quarticJ_scale (q a b c d e : ℤ) :
    quarticJ (q*a) (q*b) (q*c) (q*d) (q*e) = q^3 * quarticJ a b c d e := by
  simp only [quarticJ]; ring
theorem quarticW_scale (q a b c d e : ℤ) :
    quarticW (q*a) (q*b) (q*c) (q*d) (q*e) = q^6 * quarticW a b c d e := by
  simp only [quarticW, quarticI_scale, quarticJ_scale]; ring
end B699.SmoothWindow

