# 来源采用与核验边界

## 唯一总览

`dependencies/OVERVIEW2026-9-26.md` 按用户附件原字节保留。采用 §1 原题/R7，§2 完整源窗口，§3A E 完整源分配及 P,Q≥11，§3B E 的规范最小支核心与真实 μ。没有从旧聊天补造数学前置。

## 按原作者等级采用的历史数学

1. `dependencies/B699-ProE-i3-low-ratio-and-near-square-evidence-20260920.zip`：L，Q<P<4Q 且h≥15的排除，以及 h≤11 的下端；原REPORT/PROOFS及证书均在原包。
2. `dependencies/B699-ProE-i3-h13-closure-evidence-20260920.zip`：h13完整Thue末端，补齐低比值域，给剩余 h≥15、P>4Q。没有重跑其单位、对数下界、格或末端。
3. `dependencies/B699-ProE-i3-order5-obstruction-evidence-20260920.zip`：只调用PROOFS §1的 Q/4<v<Q。该不等式可接1、2，不调用此包的类群定理。
4. `dependencies/PREVIOUS_MAX5_REPORT.md/PROOFS.md/HANDOFF.md`：作为当前前沿保留，基本域指定五阶类与已闭导子域不被撤销；不是本轮 C6/CYC 的逻辑依赖。

`dependencies/PROVENANCE.json` 记录全部来源字节数和SHA256。字节相同不等于重新验收数学；默认重放只检查这些原件的完整性。

## 本轮自己完成的内容

- 同输入必要高度 (n−2)²<4(PQ)³ 的准确使用；
- 六次分解下的两个完整源幂乘积界，原3跨因子及x=2/4端点；
- Φ_e(x)<4x^{φ(e)} 的有理尾积证明；
- ℓ∤D与ℓ|D的完整赋值分配、D−3φ(D)≥8下的统一幂界；
- C6/CYC 全部参数的回传及纯二幂指数入口；
- 两种新有限算术检查、坏证书拒绝与指数消费者。

没有借用未核对的软件整点结果，也没有用 Zsigmondy 的“存在新素因子”替代完整幂上界。

## 外部材料核对

公开资料：IHES讲义《Basic definitions, and the irreducibility of the cyclotomic polynomials》，2013-11-24，印刷页2、5。

URL（保存作来源定位）：
https://www.ihes.fr/~dustin/files/CyclotimicFields/Cyclo1.pdf

本轮已读取PDF文字并查看印刷页5截图，核对单位根定义、Φ_e的整系数及度数φ(e)。新界、Möbius展开、完整幂分配和二项式估值均在PROOFS中给出，不将该讲义说成本轮新定理的既有出版证明。

另曾搜索Tate五扭/Markov相关公开资料，没有将任何该方向的外部结论纳入本轮证明。资料检索本身不算前沿进展。

## 验证层级

纸面无限论证＋标准库精确有限检查；非Lean；两个实现同会话编写，非外部独立审稿。新算术错误拒绝测试不等于自动证明整个原题回传。R7及完整指标覆盖未改变。
