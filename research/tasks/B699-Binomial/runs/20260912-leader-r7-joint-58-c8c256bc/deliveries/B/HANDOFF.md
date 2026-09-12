# Leader／下一轮接续

## 先读

REPORT.md → notes/PROOFS.md §2–5。补充的重依赖高度在§6，主结果不要把它列为必要依赖。

## 本轮可以登记

1. i3 noCommon ⇒ C_s≠9，全部三个位置，完整幂。
2. 全部 n=18P^aQ^b+2（P,Q≥5素数，a,b≥0）和全部合法j闭合。原一般ω(K)≤2仍归D；新增的是完整9块与另两个不同素数幂的整行。
3. 一般两投影的三商精确正规式与固定K分配后的至多1／7个提升。无须分解N，但K和它的完整分配仍无界。没有声称等价于noCommon。
4. 固定min C_s≤B给出明确H(B)=2^(6·2^4194304·(46656B⁴)^12800)。新依赖Bérczes–Evertse–Győry2013 Theorem2.2；不是可用的全题绝对高度或廉价有限表。

## 不登记

- 没有新增整指标。R7={3,4,5,6,7,8,9}。
- 旧D补交a≤21、纯素数幂、非平方q³不再主攻，也不重新计功。
- C=27、81、25没有闭合；中间C=5没有闭合。
- 新程序不是Lean，没有第二独立研究者或人类审稿。

## 最小消费者依赖

noCommon→4|n、α=c2^s、N/K完整投影（本文重新证明）→三商整数性和g²|h₁→C²规范同余→22状态精确覆盖→9块排除→ℓ=1下三个非空分配→整行。

不需要旧β≤2²⁰枚举、原三次判别式、BFT、Matveev、BEG的S-parts估计、D的一般Pell/对数前置。BEG2013只用于独立补充高度。

## 实际证据

outputs/modular9.json 是22条状态；check_modular.py重新枚举覆盖并直接核原二次式。normal_forms.py是对Π的双向恢复；小扫描只是回归，非空弱例用于排查空域假通过。symbolic.py不依赖CAS。sources下3个旧ZIP原字节保留。

执行：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

真实记录在replay/acceptance，不等待任何其他会话。没有修改Git仓库、push或启动Lean。

## 下一检查

C₁=5尚留ℓ=3,h=1,g=1,n=2^v,v≡5(mod360)，15d²=13n²+6n−4。先用全部三商和C³同余消元，或严格说明它为何仍不够。对应最小代数点n=32,j=1不合法，不是原题反例。
