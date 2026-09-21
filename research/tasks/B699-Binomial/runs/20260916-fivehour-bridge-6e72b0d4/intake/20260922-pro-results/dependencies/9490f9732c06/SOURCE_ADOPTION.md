# SOURCE ADOPTION · 2026-09-21 · D / i=3 round 3

## 本轮依据

用户指定当前会话和交接接续，不恢复缺失旧聊天。实际完整读取当前 Overview、
第二轮 REPORT/PROOFS/HANDOFF/FAILURES 与第一轮相关证明。
冻结副本位于 inputs/，具体 SHA256 见 MANIFEST.json 与 SHA256SUMS.txt。
第二轮源 ZIP 的实际哈希是
`0c2a1a3e8d54402564c08fbea4c6c5cfd5b2abbe23453f5ab40e3d3063326fed`。

## 数学依赖账本

| 采用项 | 精确来源 | 本轮状态 |
|---|---|---|
| NC3 原题、合法区间、p=3 保留、完整源窗口 | Overview §1、§2 | 原题契约；仅在 NC 必要方向使用 |
| 规范最小支、hQ=P+2nu、P=Q+hv、范数、n 恢复 | Overview §3B E、§3C E | 作者纸面前置，不宣称独立重做原桥 |
| 真实 mu=3、h13、低比值与纯二幂奇指数出口 | Overview §3C E | 作者级采用，不以本轮程序 PASS 升级 |
| h>=15、Delta>=17、v/Q>1/3、E/F 真实识别 | round1-PROOFS.md 与第二轮交接 | 按前两轮作者级前置采用；关键代数身份本轮重建 |
| D_cyc 定义、完整分圆酉分拆、D>=7、相对 h/n 界 | 第二轮 inputs/PROOFS.md 和完整 ZIP | 作者级接续；主 NSB64 证明不依赖 D 上界或有限表 |
| h<Q²、n<P³、全参数平方邻域相位控制、Q³ 进位 | 本轮 PROOFS §§1–4 | 新纸面证明+本轮精确符号/系数检查 |

第二轮输入里的 PROOFS.md/HANDOFF.md 与本轮根目录同名文件不同。
inputs/ 中保留的是旧文件，根目录是本轮新交付。

## 原题回传的外部核对

Andrew Granville，作者托管的 *Arithmetic Properties of Binomial Coefficients I*，
Introduction（2026-09-21 访问）：
https://dms.umontreal.ca/~andrew/Binomial/intro.html

该页给出素数估值等于进位数的 Kummer 表述。本轮同时在 PROOFS §4 从阶乘估值
逐项写出所需的单层回传，因此不依赖外部有效高度、整点计算或黑箱 CAS 定理。

## 未采用的外部类比

探索过参数三次式与 Tate 5 扭标准形判别式的相似性，也检索了参数 Thue 方法。
没有建立可用于当前原 n,j 的等价桥，没有采用任何外部全参数 Thue 完整性或高度。
“判别式相似”没有计成结果或独立方程。详见 notes/SEARCH_LOG.md。

## 权限与缺口

新证据仅写到隔离的 /mnt/data；本轮未对仓库作任何修改、提交、推送或发布。
未在线重读全仓库冻结来源，未独立复核历史 Thue/类群链，未完成全部历史消费者
净差审计。报告只对明确采用前置的本轮条件定理负责，不自动提升此前证据等级。
