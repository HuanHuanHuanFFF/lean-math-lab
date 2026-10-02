import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.IntegerCountBridge

set_option Elab.async false

#check (B699TailIC.neg_log_one_sub_le :
  ∀ {h : ℝ}, h < 1 → -Real.log (1 - h) ≤ h / (1 - h))
#check (B699TailIC.neg_log_one_sub_le_4095 :
  ∀ {h : ℝ}, h ≤ 1 / 4096 → -Real.log (1 - h) ≤ 1 / 4095)
#print axioms B699TailIC.neg_log_one_sub_le
#print axioms B699TailIC.neg_log_one_sub_le_4095
