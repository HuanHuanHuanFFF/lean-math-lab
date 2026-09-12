# I11Numeric Selector 真实编译修复

独占授权仅修改 `lean/I11Numeric/Selector.lean`，记录仅写本 review。未修改 Basis、ShortPowerBounds、任何冻结实验、runner/index 或其他源；未运行 Lean/Git。

## 实际失败证据

`verification/20260911T171136464119Z/evidence.json` 显示整体 exit 1，失败日志为 `verification/huan-b-queue-20260911T170430474433Z/08-i11-five-three-numeric-selector.log`。精确失败源 SHA 为 `8a9f0cc8becfc3aab8509c0951cef3e273bdef14fe95bc6f8fe6154665ac53e2`，与修改前当前文件一致。

日志在原第 21 行的 `change` 报 maximum recursion depth，并在第 14/28/35 行的短基引用处分别报告指数 579/512/289 超过默认阈值 256。predecessor 的失败输出含 sorryAx；p/q 相关根只依赖 propext，但整体失败，不能接受这些部分输出作为本文件通过。

## 修复及理由

1. 添加私有、纯 Nat 的 `two_pow_add_two (k)`，先在符号 k 下由 Nat.pow_add 证明 `2^(k+2)=4*2^k`。只归约小因子 2^2，随后在 predecessor 直接实例化 k=15359。原来对闭合巨大幂目标执行的 change 被删除；M=213、H=15359 和全部原不等式保持。
2. 在四个短基证明引用中局部设置 `exponentiation.threshold`：579（Z 上基）、1189（5 的基）、289（两处 Z 下基）。选项只包住对应的 `exact basis_*`，没有提高全文件阈值，也没有提高 maxRecDepth。1190 bit 的短基规模保留，原大型结论仍由通用 ShortPowerBounds 结构证明推出。

证据确定错误发生在 change；闭合大幂的定义等价归约是静态分析，不是 profiler 结论。上述修改旨在避免这类归约，是否消除实际错误仍须主任务真正复验。

## 逐字与结构检查

- 9 个原公开 theorem 的完整签名逐项相同；9 个 #print 根列表相同。
- Source 的原 CRLF 换行保持；before/after 原字节副本与实际 unified diff 在本目录。
- 两个已用源及冻结 numeric Selector/FREEZE 哈希前后相同，详见 repair-record.json。
- 无 sorry、native_decide、ofReduceBool 或新 axiom。新私有引理通过 predecessor 的公开根接受传递审计。
- 对新符号恒等式做 k=0..64 的 65 个小整数一致性检查；不替代全参数 Lean 证明。

修改后源 SHA：`bad1191a0126c367a3a04672e656ccd07872ea166f9e4a466ff2ff04afdfe008`。

当前状态是**已准备的源码修复，未重新编译**。请主任务按该 SHA 串行复验整个 Selector 及 9 个审计根，确认 exit 0、无 sorryAx，并检查局部短基告警是否消失。未假称修复已经通过，B 原题仍 0/19。
