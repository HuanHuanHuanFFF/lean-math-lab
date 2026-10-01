# 原题反例到M64/实际对数窗口链的独立复核

核验者：`runtime_review`，2026-10-01 14:53 UTC。AI技术审查，不是第二内核或人工同行复审。

接受 `critical/verification/20261001T144100Z-base/acceptance.json` 所列26源闭包、36个新公开根，重点为 `WindowConsumers.lean` 的3项原题反例型消费者。独立逐源核对source、snapshot、object、stdout、stderr、receipt共6项hash绑定，26×6全部通过；每源exit0、源前后不变。36根真实传递axioms仅标准三项；旧依赖的#guard_msgs没有输出的公理不以注释补计，新目标显式审计36根的完整依赖锥。

准确消费者：i分别为28、31、34，**全部**自然数n,j满足 `n>4096,i<j,j≤n/2`，若不存在素数 `p≥i` 同除两个binomial，则得到ActualLogPair。没有额外高度上界、对数非零或对数上界假设。既有Common的固定定义是 `∃p,p.Prime∧i≤p∧p∣gcd(C(n,i),C(n,j))`；三个typed检查均展开到该式，特别是31≤p仍包含p=i=31，没有改为严格31<p。

M64提取的p,q是**两个小素数**p<q<i，不是原题共同大素数见证。证明从原题noCommon与已被kernel决定验证的 `(i,r,s)=(28,9,19),(31,10,21),(34,11,23)` 常数取得两项完整binomial素数幂 `p^(C(n,i).factorization p)`。窗口指数严格定义为

`e_p=(C(n,i)).factorization p+i.factorization p`，

并证明 `n=A p^e_p+a`、`a<i`、`A≥1`、`A p^(i.factorization p)≤64`、`n≤64 p^((C(n,i)).factorization p)`；q窗口对称。没有用radical或任意小指数替换完整binomial分量。该e_p是完整binomial分量加完整index补偿，**没有声明是n−a的最大p-adic指数**，A可仍被p整除；接受按此实际定义解释。

两个素数不同、完整窗口幂都大于n/64，若a=b，其互素乘积整除同一正窗口，将推出n≤4096，与输入矛盾。因而实际推出a≠b、signedGap=b−a且整数绝对值1..33，不是假设这两项。进一步真实推导L为两个正Nat窗口log之差，得到 `0<|L|≤33/(n−33)` 且 `|L|<128/n`。系数A/B、指数e_p/e_q、偏移和完整因子等式全部保留；原题noCommon现在确已连接到这些输入。

接受源和精确命令以acceptance的26个固定记录为准；Lean4.33.1、固定mathlib0df444a及9包干净源。新消费者fresh exit0，M3132/WS1536/Native0x2030、实际对象根优先的导入配置与本轮资源/截止限制维持。所有路径复制均为成功对象的精确字节复用，不作为额外数学进展。

完整指标新增 **0**。这是uniform的反例必要条件，未把它排除：完整M64距离/所有系数位置、绝对指数或高度消费者、n≤4096及巨大有限剩余区、最终共同素数见证尚未闭合。n,j和窗口指数在该新消费者中仍无上界；不能据36根或26源数量声称i28/31/34已解。
