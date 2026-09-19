# SOURCE_ADOPTION · 原件、采用范围与证据等级

本轮只读当前会话实际挂载的前包；没有访问或修改仓库，没有重建整个历史。
所有“采用”保留原作者/出版等级，不升级为Lean、外部独立审读或人类数学验收。

## 1. 唯一接续包

输入：`B699-ProD-q5-support-17-23-20260918.zip`。
原ZIP SHA-256：`e606dc042d96b34812ce0f98921a7e8e8b496e00f79aaa22995e3143c4038316`。

原包与新包的研究范围分开：旧{17,23}支持、旧L4吸收闭合仅用于登记已完成范围，本轮不重复验收其有限末端。

## 2. 随包保留的准确普通原件

|新包保留文件|SHA-256|本轮用途|
|---|---|---|
|`sources/previous_SOURCE_ADOPTION.md`|`65cc39c480f2e6035798b602cb58673ba9278ab5d919da2344aeffa3a67a4244`|源级定位和旧证据等级；不把其引用全部展开为新验收。|
|`sources/previous_HANDOFF.md`|`0c6f1b6dfd38e515920c6cb214a51a9a3905ad0c31a580991cc872debeb0d7cd`|最新任务边界、Q51=q5首检、禁止重做旧支持。|
|`sources/previous_PROOFS.md`|`adf28df778137037fd84827f522f4cc9c4dea03a6720136f7869617f099fd9e5`|原生QIG公式及四指数固定底数法的来源；QIG身份本轮重构，旧分离证书不复用。|
|`sources/defect_recovery_PROOFS.md`|`4c803ff0639d0fb9159e095ad9286784bed92c4d371bf10522849e2e39cee56a`|旧L3/L4、q5三组实际定义与gcd391边界；只作必要系统接续，不重做R3/R4。|

旧QIG原路径经前包记载为D-quartic-gap/notes/PROOFS.md §§1–3。本文正向证明实际需要的全部代数已经在PROOFS §5.2重写并由代码重新检查；不要求重打旧ZIP或重跑旧有限全链。

## 3. 程序复用与新构造

`code/poly_exact.py`是前包同名文件的准确字节拷贝，SHA-256：`0ebb22398ccfcbc4f84cb6e45f4cfcbda928c286c1a2ba1f8510ca08652e56f2`。这是小型有理稀疏多项式运算，不包含待信任的数学结论。
`code/discovery_tools.py`只复用前包dot/gs/nearest/lll的有理LLL发现例程。其原文件SHA-256：`bff499b18cf0544570fa9299a0f9ad08f1450cd221bbe9db637a3ffc918b7b5f`。接受器不导入它。
`new_algebra.py`、`consumer.py`、`verify.py`和新build_evidence.py由本轮编写。F20整数系数、R/S配方、完整阶、正性展开、8张对偶证书、有限域和42条终端均在本轮生成和接受。
探索阶段使用SymPy做有理线性代数/因式分解；正向证据没有CAS或浮点假设。默认重放和可选重建均只用标准库。

## 4. 唯一外部出版输入：Yu 1994 §0.1

Kunrui Yu, *Linear forms in p-adic logarithms III*, Compositio Mathematica 91 (1994),241–276。
原刊地址： https://www.numdam.org/item/CM_1994__91_3_241_0.pdf
定位：§0.1，印刷241–242页（PDF第2–3页，零索引1–2）。2026-09-18本轮实际打开原PDF并查看两页截图，核对高度、指数和常数。
本轮采用的只是显式估值上界Xi<Phi log(dB)；没有使用其附带更强估计。四个固定有理底数、负号、E−1/零指数、d=1、p2/3及h_i=5的逐项代入见PROOFS §6。
它用于SUP1361的统一绝对初界H<10^33。新增长消费者GROW5、L6/L7整数恢复和gcd793不依赖Yu。ABS7通过SUP1361间接依赖该出版输入。
接受器只核对本轮常数包络及有限证书，不声称证明Yu定理或其引用链。未随包分发整篇PDF或字体。

## 5. 不采用、不升级

不采用NC3专用路线、NC5到NC6的隐式转换、未经证明的更高源幂、HG无进位条件的逆命题。
没有新Lean、公理审计、外部独立数学审读、仓库改写、提交或推送。没有对全历史消费者覆盖并集作非空差集认证。
所有旧剩余条件仍按各自原证据级别保留；不因本轮加入L7就把C²和V4整数性计为两个独立约束。
