# i11 实际小素数部与窗口：冻结交接

三个文件是**未编译候选**，本 worker 没有运行 Lean/Git。直接复用本机 Windows shared26 成功闭包 `verification/20260911T004440769454Z/evidence.json`；检查时其全部 26 个当前源码 SHA 均匹配 before/after，相关原 audit 为标准三公理。

`Components.lean` 定义的 `primeComponent n p` 就是实际 `p^((Nat.choose n 11).factorization p)`。通过已验 `small_prime_part_eq_prod_small_primes` 和闭合的小素数集合计算，将**现有** `smallPrimePart n 11` 精确展开为 p=2,3,5,7 四个组件的乘积。每个组件在 n≥11 时满足 1≤Ap≤n；上界直接复用 `Nat.pow_factorization_choose_le`。

`Window.lean` 由已验 `binomial_prime_power_localization` 得到 `p^(e+v_p(11)) | n−a`，再取其中实际 binomial 幂 `p^e`。因 a<11≤n，n−a>0，整除见证的 cofactor 必为正。`PrimeWindow n p` 记录 offset<11、cofactor≥1 和 `cofactor*primeComponent=n−offset`。它没有互素 cofactor 或位置互异前提。通用定位可用于任意素数，但四分量 U 始终严格使用 p<11，p=11 未加入 U。

同文件还给出纯 Nat 通用推论：`C*A≤n`、`Y^w≤C^k` 蕴含 `A^k*Y^w≤n^k`。对实际窗口取 k=1000，得到未来 Graph 所需的 `Ap^1000*Y^w≤n^1000`。未来 cofactor 的五个析取可逐边用这个推论传递；本目录没有证明那五个析取，也没有改动已冻结 Product。

`FourWindows.lean` 对四个固定素数一次性选择窗口，并证明实际

`U*(C2*C3*C5*C7)=(n−a2)(n−a3)(n−a5)(n−a7)≤n^4`。

四个 offset 可以相同，后续五条边应重复使用同一组窗口。最终对象始终是既有 U 和实际完整 binomial 赋值幂，没有用假定乘积替代。

源接口/行号：`SmallPrimeLocalization.lean:73` 的完整幂定位，`LargeSmallPowers.lean:87` 附近的实际小素数部展开；真实定义在 `20260909-large-prime-structure-cb4764f0/lean/SmallPartBound.lean:13`。精确文件 hash、Windows 验收日志及新声明行号均在 `source-and-small-checks.json`。

中断前实际小检查为 n=11..256 共 246 行、984 个窗口，包含 298 个零 valuation、186 行重复 offset；通用乘幂桥另有 18,317 个小指数实例。耗时 0.070007 秒。这些是 Python 有界检查，不能当 Lean 接受。n=11 时四个组件均为1，四个 offset 可全为0；n=121 的 binomial 含11因子而 U 不含11，端点边界也已检查。

建议按 `Components → Window → FourWindows` 复制到本 run `lean/I11SmallPrimes/`，共12个新 audit roots。接下来的立方余因子桥可复用这些真实窗口；本文件并不声称新的原题指标或2^109高度已验。B仍0/19。
