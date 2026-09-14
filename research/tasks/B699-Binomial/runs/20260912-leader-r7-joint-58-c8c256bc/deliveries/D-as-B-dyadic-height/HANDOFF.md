# Pro B 下一断点（结果记录，不预设下一轮路线）

本轮结论、证据等级和适用边界以REPORT与notes/PROOFS.md为准。一般i3仍未解决，R7不变。

## 可直接消费的新定理

1. **DYADIC**：合法n,j，g=gcd(n,j)、t=v₂(g)≥3，16(n−2j)^6≤2^t g n^5 ⇒ Common3。完全初等，无固定C/指数/奇支持。入口`code/consumers.py:dyadic`。
2. **精确二进缺陷**：完整NC3，t≥2 ⇒ v₂(n)≥4t−1、v₂(Bscr−3V)=2t+1、2^(t+1)g | Bscr−3V。t≥3时Bscr≥2^(t+1)g+3V。这里所有规范量必须由同一原输入构造。
3. **HEIGHT-B**：NC3，规范Bscr≤L ⇒ n<2^(2^1210L^132)。需BEG2013 Thm2.3。固定L后n,j,H,R,U等全部有限，但L仍无界。没有执行该有限枚举。
4. **LOG-BAND**：n≥56，l=floorlog₂n，l n^660≥2^2266max(n^5,(n−2j)^6)^132 ⇒ Common3。同样需BEG。

## 实际增加与不能宣称的范围

全u≥5的n=2^(48u)、Δ=2^(41u)+2^(4u+1)族，以及u=377+385w的CRT细化，全部满足DYADIC，且不满足上一轮任何GAP参数。差集限于已读GAP／D-center/end／TW等，不等于所有历史覆盖并集。例点Pi为假不能省略。

LOG-BAND还给g=1的符号例族，未展开其数值；不把符号证明记为巨型整数运行。两条带均不是整行结论，更不是i3全域结论。

新三次方程f(ell C₁)=cgVz³ 2^(s−1)，f的判别式奇非零；固定Bscr后g已由旧DIV受界，新增指数定理终于把s也界住。这是消除固定缺陷后剩余无界量的接口，不是全局界住Bscr。

## 来源与核验等级

完整原始B ZIP在sources/originals，A/D边界参考字节和哈希映射在sources/SOURCE_MAP；旧D/上一轮新D的独立时间层在INHERITED_LINEAGE。外部BEG原文已web读取及截图核对，但PDF原字节／SHA未取得，固定版本和原文恢复入口在references。初等消费者不依赖BEG。

本轮没有Git/Lean/独立人审。generator/checker均为同一会话作者代码，不叫独立研究者。实际16,384合法对回归中7,420由新判据接受并核实；4个Pi恢复样例都不具备NC3 α形状；24项语义拒绝通过。

只需Python标准库重放。不要把False判据值、抽象赋值模型或Pi样例当反例；不要把Bscr不同于Pro B姓名的数学符号忽略掉。
