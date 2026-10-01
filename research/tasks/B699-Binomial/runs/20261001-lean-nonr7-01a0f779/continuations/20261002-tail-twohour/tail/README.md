# 两小时尾部Lean补齐

owner/executor: tail_verify, gpt-6.1-sol/xhigh。仅拥有本目录及对应.tools/20261002-tail-twohour/tail；旧onehour和原run全部源/manifest/log冻结，R7不触碰，无Git/外界消息操作。

开始17:18:06 UTC（上海2026-10-02 01:18:06），硬停19:18:06 UTC（03:18:06），无延期。19:12冻结数学源，预算含工具、独立验收和交接。来源baseline8685508c19d73a0dbf8e07339b72bac35e6899ce。

锁定第一目标：证明旧SieveRowsConsumer.finiteSieveCertificates的既有115条floor交替和上界。纸面tuple(q=12)、16素数池和fixed115数字/覆盖均已kernel与独立验收；旧完整容斥及floor公式已验。本轮不新增素数/n扫描，不用native_decide/外部eval/axiom/sorry。

预期前沿：旧C仅i≥131072,n≥4096i → 全i≥1000,n≥4096i,所有合法j,p≥i；这为主目标i≥4883提供实际uniform反例高度n<4096i，仍需Gap和真实有限n供应才能完整i≥4883。i=4883保留，旧HeightBlock≤4882不能用于高指标。

最小可证伪probe：先证明递归floor求和等价原powerset求和；b=0分支剪枝有正确性证明。选最短既有row(b=1023)单条kernel decide实测内存/时间，必要时分块/共享证书改变载荷，绝不一次无诊断跑7.5M归约。成功后覆盖全部115并接完整原题consumer及统一高度，再向完整i≥4883逆向补明确纸面前置。

所有编译等runtime新统一入口/seed就绪后，经共享锁、单线程/2CPU/低优先级、物理余量900MiB、D≥20GiB保护；固定源/actualargv/exit0/rawlogs/objecthash/标准公理审计交runtime fresh独立验收。
