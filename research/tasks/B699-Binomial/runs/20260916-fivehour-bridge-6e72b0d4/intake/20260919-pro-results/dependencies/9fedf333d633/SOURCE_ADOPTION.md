# SOURCE_ADOPTION · 本轮采用边与字节来源

本轮只读取当前会话已挂载的证据包，没有访问、修改或推送仓库，也没有重建旧聊天历史。
所有旧作者结论保留原等级；新重放不把它们升级成Lean、外部独立审读或人工数学验收。

## 1. 唯一最新接续与准确原件

接续包：`B699-ProD-q5-nearside-L7-20260918.zip`。
原ZIP SHA-256：`354585920c7abdee3945a0747a0d248fc4e74e3ea699a6ea61cc0c1f4adb4d83`。
完整读取其HANDOFF、FAILURES及本轮需要的PROOFS；按其中第二选择进入联合支持分支。
没有重跑其42条终端、旧{17,23}支持族或过去几十个阶段。

随包保留的准确普通字节：

|本包路径|SHA-256|
|---|---|
|`sources/previous_PROOFS.md`|`87b71cf84475ca0f434bf9a7bbdfe1fbf6eb9b8f93da27b4b7e356abee516ba1`|
|`sources/previous_HANDOFF.md`|`8709f6a19b74538b5cc73d76f2c99dea8556d8589a104dca055a42a0622f2dc6`|
|`sources/previous_FAILURES.md`|`0b518c2f30bee7f55eca1de5210623755933017a3f348d662e61327c6fa8d00e`|
|`sources/previous_SOURCE_ADOPTION.md`|`ac08d9fdc0917971a9d0f855ae3c37dce49162653563147048c5b59dd0ad07b3`|
|`sources/defect_recovery_PROOFS.md`|`4c803ff0639d0fb9159e095ad9286784bed92c4d371bf10522849e2e39cee56a`|
|`code/poly_exact.py`|`0ebb22398ccfcbc4f84cb6e45f4cfcbda928c286c1a2ba1f8510ca08652e56f2`|
|`code/discovery_tools.py`|`21794d1dfd71bc1416acc2dc8f8403fcd3e6c0837b9b5fd4bfdb131415cd37b1`|

`metadata.json`同时记录原路径。`defect_recovery_PROOFS.md`是最新包已保留的冻结旧原件，
用于L4/K的准确命名和RES10的规范整数性。L7/H7定义、原近侧正整数和式与旧增长边界来自最新PROOFS。
本轮gcd48及联合源槽公式重新推导并由有限整数/多项式证书检查；主SUP-MIX不依赖旧支持闭合作为黑箱。

## 2. 自含重证与程序复用

原生QIG的卷积完整幂整除、四次不变量、正整数间隙、单调上界和原题回传在新PROOFS §5全部展开。
其历史根为D-quartic-gap，原生版本在最新包已保存；本轮实际重建所有需要的代数身份，
不调用任何旧有限原行表。两个旧二素数支持定理只用于记录旧覆盖与解释新条件差异。

`poly_exact.py`是准确复用的小型有理多项式运算库，不含待信任的数学结论。
`discovery_tools.py`为可选有理LLL搜索例程，默认接受器不导入它。
新verify/consumer/build_evidence、八张五维向量、完整有限恢复与六行终端均本轮实际生成、重建、接受。
发现使用预装SymPy；向量接受只用标准库整数同余和严格距离，不以LLL算法正确性为前置。

## 3. 唯一外部无限输入：Yu 1994 §0.1

Kunrui Yu, *Linear forms in p-adic logarithms III*, Compositio Mathematica 91 (1994), 241–276。
原刊PDF： https://www.numdam.org/item/CM_1994__91_3_241_0.pdf
准确位置：§0.1，印刷241–242页，PDF零索引1–2。
2026-09-18本轮实际打开原PDF并查看两页截图，核对Xi<Phi log(dB)的陈述及高度条件。

本轮ell=6、d=fp=1、全部h_i=5；各底数、指数、实际差值和2/3估值修正在PROOFS §6逐项列出。
负底数使用原文主支对数约定，零指数被允许；差值非零，指数向量不全零；没有擅加乘法独立假设。
只采用第一个估计，不采用其更强条件分支。它提供Htot<10^42的统一绝对初界。
程序核对的是本轮代入包络及全部有限后续义务，不声称重新证明Yu定理或其出版引用链。
未在包内分发整篇论文或字体。

## 4. 非采用与限制

早期一个泛Pell网页查询未参与数学证明或证据；没有把搜索命中当作采用的定理。
未采用NC3/NC5路线、隐式指标转移、虚构的更高源幂、HG必要条件的逆命题。
没有新Lean、传递公理审计、外部独立数学或人工审读、仓库写入或全历史消费者差集审计。
当前完整指标R7不变；一般RES10和全近侧小质量域没有被本轮的支持族有限化替代。
