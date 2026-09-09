# ThreeWindowWeights 纸面题面对照

Owner: height_compression。读取检查点2026-09-09 06:28:45 UTC。审查源码SHA256：02B6684D97946D6E16658D4CF544F5F475D2D4C8F8BC1AE67DE6378DDA2E2973。本批lean/ThreeWindowWeights.lean由主线程编辑，本检查未启动Lean，不是编译或公理验收。

1. threeWindowProduct的两个child组和mother组等于两截点定理Z；mother上升窗口下端n−i+1无偏一。
2. Q=p^(e+if p=i then 1 else 0)保留p=i分母额外层，再降至p^e。a=b+c来自真正无进位，a<i推出b,c<i。
3. child窗口h>b的个数为s−b；mother的i−a≤h≤i−r−1个数为a−r。所有所消h!满足h<p，完整指数不丢失。
4. 权重、乘法指数及素数有限乘积均保留e。实际D版无反例假设，只有V版使用noCommon。
5. 最终消费者返回原题p.Prime、i≤p、p整除gcd，没有把必要整除当充分条件，合法j范围未改变。
6. s=0、r≥i、2s≤r等额外自然数退化情形可使幂为0，整除仍真。高度用途须显式要求正净指数。

未发现题面或指数缺口。API语法、策略、公理与实际编译以主线程新验证为准，后续源码变化按实际差异复核。

