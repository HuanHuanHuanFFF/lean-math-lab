# B699 Pro D · 完整q5支持{17,23}，两个H025尾类整行关闭

入口：REPORT.md；无限证明：PROOFS.md；依赖：SOURCE_ADOPTION.md。
失败与尚未关闭的域：FAILURES.md；下一轮接续：HANDOFF.md。

## 一键重放

解压后进入本目录，使用 Python 3.10 或更高版本：

    python code/verify.py --json

预期状态：PASS_Q5_17_23_TWO_TAILS_FULL_ROW_CLOSURE。
只用标准库，不联网、不读取仓库、不运行LLL、不扫描巨大初界、不枚举j。
检查封包前后哈希、四次不变量、出版参数包络、六张对偶整数证书、全部有限模域、26个严格原行。
出版Yu定理和无限纸面证明不是被Python形式化了；详见证据等级。

可选重建证据（不需要用于验收）：

    python code/build_evidence.py

发现器使用精确有理LLL寻找短向量；接收器仅检查所得明确整数对偶证书。
生成器与接收器来自同一会话，不是外部独立实现/数学审读。

## 原输入见证余因子

将code加入Python模块路径后，调用consumer.witness_divisor(n,j)。
它验证本定理行域并返回某个前四源行的余因子D>1。
D不一定为素数，但它的每个素因子均是原同一(n,j)上的真实共同素数p≥7。
不需要构造C(n,j)或分解全部二项式。过大输入的运行资源不属于数学量词限制。

目录中没有Lean文件、仓库工作树或发布脚本。SHA256SUMS登记全部其它成员。
外部ZIP哈希与解压重放回执另行交付，避免自引用哈希。
