# Pro B 下一轮/Leader交接

先读REPORT.md，再读notes/PROOFS.md §§3–5；比较覆盖见§6，输入采用见SOURCE_ADOPTION.md。

## 可登记

- i3：n≥373248、27(n−2j)^6≤n^5，全部合法n,j满足Common。中心距离指数从所读D的3/4变为5/6，不是整行闭合。
- 更一般a,b>0、a奇数部分1或3、n≥(36ab)³、27|b(n−1)(n−2)−2aj(n−j)|³≤n^5时Common；a=3,b=1给内部二次曲线带。
- 原NC3规范量的正整数二次型Q(a,b)，精确身份HQ=Ur²+Vb²。r=0必须保留完整α再处理。
- 中心规范Bscr=zQ，V(n+6)−2Bscr=4g²R J；Bscr≠3V；g|Bscr−3V和2g²R的完整整除。固定Bscr时g为有限除子，但Bscr无界。
- 两种完整无限族以及CRT混合细化，严格避开本轮实际读取的D两条精确带和TW。没有审计整个历史消费者并集。

## 输入补交已落实

本輪运行prepare_inputs.py B，完整读取Dtail两带、正z以及新D的TW/投影区别。这是本轮首次读取，不改写B上轮记录。新证明不调用BEG相对高度或D的一般非空深证明。C₁>1所需分支由本轮完整α与模8短证处理。

## 剩余自由量

n,j、min C_s、F、R/U、Bscr/H可共同无界；GAP中没有全j的a,b选择覆盖定理。R7={3,4,5,6,7,8,9}不变，没有整指标闭合、全题有限化、Lean或人审。

## 最小接续代数

C=C₁，H=g²R，U为D残量，ell=λμ，V=λ³μ²。Q=ell²F−4U(H+z)，Bscr=zQ。

    V(n+6)−2Bscr=4H J，J=ell²F+2Uz+2Q>0且奇；
    g | Bscr−3V ≠0；
    nVz²=16QH³+(24Qz−16V)H²+(12Qz²−24Vz)H+2Qz³−6Vz²。

下一项应研究这一相关整数系统能否给缺陷下降，不逐个扩固定C表。任何构造必须核同一n,j的Π、α、gcd规范性和完整幂，而不只满足最后一条三次式。

## 复现

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

可选探索：

    python3 -S -B code/explore_resonance.py --out replay/probe.json

默认链5条命令、8份输出；探索上限H≤20000不用于证明。14个例族样例不是有限覆盖证书，无限覆盖由纸面论证承担。source_audit核2个原ZIP、11份源文本，不重跑旧数学。
