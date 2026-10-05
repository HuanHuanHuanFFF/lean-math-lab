# UTC08:31 RootWidth API 修订

实际诊断来自 C `runtime/ci/37283606716-rootwidth`：旧 RootWidth L33 `simpa only [one_div, Real.pow_rpow_inv_natCast ...]` 先把除法规范为逆元，使消整数幂的simp pattern未命中。实际 producer exit1，`ratio_root_bound`/`local_root_width` 在错误后出现 `sorryAx`，不接受。不是数学反例或资源失败。

在新 supply 建立 `LocalPowerRootWidth.lean`：同原三命题与namespace，先显式 `rw [Real.pow_rpow_inv_natCast hbase hkNe] at h`，后 `simpa only [one_div] using h`。新 SHA256 e90ecc511a91faeb2b41e83a33bb95034b373be02bb8c4cd123a4b003476d82f，2421B；旧冻结原字节不改。

`LocalPowerMaster.lean` 仅改 import 指向新 Width，SHA256 3670550a2013fb7b2fa71f8f8ff65ed3cca5e6d8e390588f4d22128c55696cfe，5475B。第一候选快照 SHA6d13c42a…保在 `diagnostics/round2-first/LocalPowerMaster.lean`；此前 SOURCE-READY.json 是原候选快照，不代表修订源已编。C/S 已收到新源哈希，等待真实第三编译/AX/checker/literal。

C 报告旧ThetaInterval与新FiniteSums首次编译成功，小artifact待S独立签件；这里没有将compiler成功升级数学接受。RootWidth缺对象使第一Master未可执行，第三job按修订Width→Master→Monotonic→Endpoint串行，独立记录各stage。
