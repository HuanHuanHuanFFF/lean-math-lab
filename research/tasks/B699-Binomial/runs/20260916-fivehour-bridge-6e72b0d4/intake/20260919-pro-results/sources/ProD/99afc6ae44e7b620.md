# SOURCE_ADOPTION · 本轮来源、字节与证据等级

本轮以当前会话最新交接为入口，主责原生i6两个H025尾类及当前RES10。不接管i3/i9。
没有访问或修改仓库，没有重建旧聊天历史；仅检查当前会话已挂载原件。

## 1. 输入包（只读，未重放旧指数链）

|输入|SHA-256|本轮用途|
|---|---|---|
|`B699-ProD-q5-mixed-support-20260918.zip`|`9fedf333d633d37d38bf8057b63f99937fb29bcb13df0e3d547a262713fbd6c6`|最新前沿/旧F20配方与原商定义；旧有限末端未复跑|
|`B699-ProD-q5-nearside-L7-20260918.zip`|`354585920c7abdee3945a0747a0d248fc4e74e3ea699a6ea61cc0c1f4adb4d83`|最新前沿/旧F20配方与原商定义；旧有限末端未复跑|

## 2. 随包保留的准确原件

|本包路径|SHA-256|
|---|---|
|`sources/F20_source_PROOFS.md`|`87b71cf84475ca0f434bf9a7bbdfe1fbf6eb9b8f93da27b4b7e356abee516ba1`|
|`sources/previous_FAILURES.md`|`0f728ff75b9f4dc82c822b96f9e9df85208fc7c050402de453a856c9969bfb46`|
|`sources/previous_HANDOFF.md`|`bf580cbede3177083c2cd45b44326e9d97e552b30ba9a45f7e029fd63e21bef4`|
|`sources/previous_PROOFS.md`|`d8f7616447e108da2aad98d536569f4e75f94dbb745c2524f8b42763745da2d0`|

最新HANDOFF/FAILURES给全近侧小质量与联合支持后的前沿；最新PROOFS给旧L3/L4/L6/L7定义和gcd48。
F20_source_PROOFS给已知20次形状及旧GROW；本轮不把该形状本身声称为新发现。
正向CENTER与AMP无需旧支持定理或其Yu初界，PROOFS中从完整源接口重新给出全部所需低次代数、正性、整数性和不等式。
四素数支持闭合只用于保留旧覆盖、说明示例中的29/47不在该支持条件；它没有被重新审核或升级证据等级。

## 3. 复用程序与本轮新证据

`code/poly_exact.py`准确复制自最新输入包，SHA-256为`0ebb22398ccfcbc4f84cb6e45f4cfcbda928c286c1a2ba1f8510ca08652e56f2`。
它只是标准库Fraction的二变量多项式运算，不包含待信任的B699数学结论。
新consumer、verify、可选build_evidence及三份证据JSON由本轮实际生成和运行。
可选重建器用SymPy；默认接收器不导入它，也不依赖CAS因数分解或数值估计。
接收器核对的是有限代数义务、完整余数单元、全参数符号族的固定恒等式与明确的原输入。无限量词仍由纸面推导承担。

## 4. 出版输入、未采用与限制

本轮正向证明没有外部无限定理输入。没有调用Yu/Bugeaud/QIG/SIXG/旧支持高度作为黑箱。
旧文档包含这些来源的历史记录，不表示本轮采用或重验它们。
无Lean、无外部独立数学审读、无全历史消费者并集差集审计、无仓库修改/提交/推送。
没有一般RES10闭合或一般主参数的统一绝对界；R7不变。
