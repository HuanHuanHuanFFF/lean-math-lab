# SOURCE_ADOPTION · 第五轮

## 本轮实际读取的接续材料

唯一总入口为用户提供的 `OVERVIEW-2026-09-21.md`。本轮读取当前会话第4轮 HANDOFF、PROOFS、FAILURES，第1轮 PROOFS，以及第4轮包内 SOURCE_ADOPTION 和 native_phase.py。第四轮ZIP在新隔离工作区解压；未修改源文件或仓库。

第四轮ZIP SHA256：
`79786ce1b067bb73abbd3b10732fc02f62f3f8bc19499af16831a62def0f6c2a`。
Overview SHA256：
`8dcf8d179fe024fd553e21797c17224997ca3c7037e8d84a72d7d5594ee8ca1b`。

## 采用账本

| 结论或对象 | 固定来源 | 本轮处理 |
|---|---|---|
| 原题、NC3、p=i=3、完整幂、同一(n,j) | Overview §1—2 | 契约保留 |
| 规范最小临界支 P,Q,v,nu,h | Overview §3B E、§3C E；第1/4轮P0 | 作者级前置；新代数恒等式直接重建 |
| mu3、h13、低比值等旧出口 | Overview 与第4轮冻结链 | 不重做、不升级 |
| Delta>=17、Delta≡1 mod16、nu=2H奇H | 第1轮P5—P7；第4轮P0 | 冻结采用 |
| 1/3<v/Q<1、h>=15 | 第1轮P3—P4、P9；第4轮P0 | 仅相对高度使用，不是COF40主证明的额外前提 |
| n,j,k 的同输入恢复 | 第1轮P8；第4轮P1 | 本轮精确多项式重建 |
| hDelta²<9Q² | 第4轮P1 | 本轮重推用于相对高度，不重复计功 |
| D_cyc、旧相位消费者 | 第2—4轮冻结链 | 保留前沿，不参与COF40/COMP1主证明 |
| W_Delta、相邻格点证明、固定补商恢复 | 本轮PROOFS P1—P5 | 新作者纸面论证＋精确重放 |

本轮没有重放全部历史证据包，也没有把旧“PASS”升级为独立核验。新定理的代数核心比NC3入口更宽；回传原题的桥仍明确依赖冻结最小支。

## 外部核对与未采用检索

本轮核对 Andrew Granville 作者托管的 *Arithmetic Properties of Binomial Coefficients I* Introduction 中的经典进位表述：
`https://dms.umontreal.ca/~andrew/Binomial/intro.html`。
这只用于初始另一源相位思路的背景核对，不承担新COF40/COMP1证明。

另定向检索参数三次Thue方程与完全解，未找到可直接覆盖本轮二元三次式的已核对定理；没有因此采用泛化的“最简单三次域”结论。新主证明不需要外部Thue终点、类群、椭圆曲线群、Magma或新的有效高度文献。

## 来源与证据等级

来源读取、符号再生、标准库重放、作者数学论证分别记录；二种程序不等于外部独立作者审读。没有Lean。
