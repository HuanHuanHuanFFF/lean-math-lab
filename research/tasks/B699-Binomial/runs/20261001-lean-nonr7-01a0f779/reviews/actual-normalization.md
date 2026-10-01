# 原题反例到实际N归一化的独立技术接受

核验者：`runtime_review`，2026-10-01 15:11 UTC。AI技术审查，不是第二内核或人工同行复审。

**接受完整实际接口** `B699TailWindows.noCommon_normalized_1000`，不是停留在有额外factorial/degree假设的通用包装器。准确量词为全部自然数n,i,j；唯一输入 `i≥1000,i<j,j≤floor(n/2)` 和原题不存在共同素数p≥i。结论真实为：

`(1/3−5/(3i)−π(i−1)/i)log(n/i) ≤ (π(i−1)/i)log i+3log i/i−log(1−(i−1)/n)`。

实数运算中的n/i不是Nat商；π是实际inclusive `Nat.primeCounting`，所以π(i−1)恰计小素数p<i。输入Common固定定义为 `∃p,p.Prime∧i≤p∧p∣gcd(C(n,i),C(n,j))`，保留p=i，最终声明没有EC、RS/PNT/Dusart、Gap、N或高度供应假设。

完整source是 `tail/NormalizationFromWindows.lean`，SHA256 `76f3e6896e18a06101dd73088b907c14fb64e6c80d139f1a79e1a9ea7b14525a`；object SHA256 `61db94e88fb52b04ee74c9df09aadaaffe4f88ff3ae9394ebc3ec77cd7b5b267`。source/snapshot/object/receipt/stdout五hash全与 `tail/verification/20261001T150015086Z/evidence.json` 一致。真实exit0、38.058秒、树WS1375.80MiB、M3132/WS1536、Native0x2030/commit0，源前后不变；三个已审计根全部仅标准三公理。

来源闭包逐项核对 `tail/historical-window-closure.json` 所列7源SHA全部一致。原始primePart定义过滤 `i≤p`，乘 `p^(C(n,i).factorization p)`，不是radical；三窗口加权整除为全指数乘(2s−r)，旧接口的指数上界在实际调用取完整factorization。窗口尺寸与smallPrimePart拼接保留所有因子，实际t由 `primesBelow i` 精确改写为π(i−1)。

最终消费者选 m/c/s/r 并由已经接受的参数接口供应λ>0、s<i；degree比较和真实i!/sf常数在证明体内供应，没有把这些当作终端外部前提。下方descFactorial使用正确整数端点 `(n+1−i)^i`，先证明Nat减法cast条件，再得到误差 **(i−1)/n**。合法j条件确保n/i≥1及log参数/所有分母正性，保留j=n/2的偶数端点。

我另从冻结对象运行 `runtime/AuditActualNormalization.lean`，把原题否定式与完整实数A**显式类型匹配**，并打印Common/Normalized定义消除pretty-printer别名；fresh exit0、11.274秒、树WS1318.20MiB，原题端点/π/全部量词与标准三公理匹配。receipt `.tools/b699-lean-20261001-01a0f779/runtime/logs/20261001T151025545Z-independent-actual-normalization-expanded/receipt.json`。

实际前沿变化：N这项统一反例接口在所有i≥1000、全部合法n,j已形式化，因而主线i≥4883无需再假设N。仍须接EC/IC比较排除适当n区域，以及短区间供应/剩余原题消费者；本模块不推出共同素数，完整指标新增 **0**。结果是既有三窗口纸面路线的形式化，不主张完整B699或新颖性。
