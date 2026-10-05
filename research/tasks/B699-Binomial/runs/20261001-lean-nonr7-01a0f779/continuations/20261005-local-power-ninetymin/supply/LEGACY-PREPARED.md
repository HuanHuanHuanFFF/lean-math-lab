# UTC09:05 最小原题接线候选与实际依赖成本

Root明确授权预备；**不插队第五**，仅当09:15前LP/端点/RD2全接受且Root确认余量，才启动新CI。不把准备源码计接受，不重编已验大链。

- `LocalPowerFiniteBridge.lean` 1897B / SHA fccbec9aa911c1475ee1beb967a75eced8c6a73b4f1c70a2feed8ebdfc82c6cd：`tail_gap_of_budget`给Nat Gap(4095,14400000000)，只保真实DifferenceBudget；`gap_of_middle_and_budget`保Nat有限Gap[T0,B)、DifferenceBudget与I0，三段接成Gap(4095,10M)。有限中段不要求实数ψ精度或跨到C，此输入仍未供应。
- `LocalPowerOriginalLegacy.lean` 2478B / SHA0b17c0a9e69d8e86d1d441a6be996a85e8a307cc971070156bebb37388e2a1d4：4根两路Gap/原题原消费者，实际调用旧已验F0 `FullInitialGapLegacy.theta_initial`与`FiniteConsumerLegacy.original_tail_of_gap`。LP与I0均消去；剩输入准确为DifferenceBudget+FinitePsiSupply或DifferenceBudget+FiniteMiddleGap。全Nat n/i/j、i≥4883、i<j≤n/2、同一Prime、i≤p及完整两个choose整除保留。

C实际只读依赖观察见`../runtime/LEGACY-IMPORT-CLOSURE.json`：两旧入口追到280现有repo Lean文件约5.99MB，还缺ignored generated/CompleteChain.lean源，不能称完整源闭包。当前12source薄缓存无legacy两入口对象。稳妥复用旧345对象/10origins：旧实测prepare155s，含checkout/Lean setup总约200s，freshpair约15s；CI恢复约1.95GB，本机不重复父923MB。该时间是旧执行测量，不是当前保证。selectedobjects仍需原zip且增添来源完整性核对，未采用。

S已收到候选可预备准确literal；实际执行与完整旧source/object/raw来源绑定仍由C/S承担，不将这里的行政依赖图检查当技术接受。
