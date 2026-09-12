# 验证审读

所有30个数学模块均有绑定源码SHA256的本机compile和独立import审计，退出码均0。最终4条定理的#print axioms均仅propext、Classical.choice、Quot.sound。校验所有latest记录对应当前字节，无验收后源码漂移。

有限生成最初将全部参数一次归约，触及-M 3072。最终分40个a块，纯Nat数字表与证明表用rfl证明对应，仍覆盖所有b<24、r<4以及重复来源；降低负载后通过，不提升内存限制。原失败日志保留在本机时间戳目录；无数学结论被弱化。

CI使用固定main同款Lean action SHA，获取当前冻结manifest的匹配缓存，并在action和cache后用git diff验证pins未变化。对完整检出按依赖顺序重编全部30模块，逐模块独立导入审计。CI仅contents:read，无自提交。

源锁source-lock.json记录所有数学源码SHA256和本机对象存在性；对象可由固定依赖重建。原始命令含整棵进程树采样RSS及cgroup记录；采样峰值不伪称为连续测量。
