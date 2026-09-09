# 本轮专项验收

最终成功记录：[20260908T200259Z/evidence.json](verification/20260908T200259Z/evidence.json)。

实际区间：2026-09-08T20:02:59.686485Z至20:04:44.123452Z；退出0。固定Lean4.33.1（819816b2e0a3bf405af45ae5c7af2491d8f5bee6），mathlib0df444a360eaa60ab8c11dca51a86af692955474，9项manifest包pins核对。四个最终根及全部项目依赖共11模块在新对象目录重新编译，包含新链必需的两个旧模块；没有复验无关旧成果。固定包缓存复用，项目旧对象未进入LEAN_PATH。

源码扫描通过；37项真正打印的传递公理仅为标准集合中的项目。验证器会拒绝未知公理、缺失输出、编译错误、超时、源哈希变化或包pin不符。源码与输出哈希、命令、日志及准确覆盖范围都在成功记录中。验证器自身的拒绝测试见[runner-checks.json](verification/runner-checks.json)。

接受范围：
- 实际完整p≥i素数幂的差值转移、反例及逆否Common消费者。
- 完全初等U界和相应大小消费者。
- 全部d≤i的显式出版定理条件消费者。
- 全部d≤floor(171i/50)+1的双出版来源条件消费者，含完整333余数证书/64行范围覆盖与源例外处理。
- n=3j的实际D/V结构、三块系数界，以及显式点态平方优势下的S3必要不等式。
- 最终36个n=3j剩余输入的原题余数见证。

未包含：
- EEES、Laishram–Shorey、Nair–Shorey、Dusart、Jacobi判别式公式本身的Lean移植。
- 4097/Dusart/所有素数覆盖相接后的完整n=3j Lean定理。
- 324数值曲线界与i≥10^6全局排除的完整Lean链。
- 人类同行评审、独立实现的第二内核、新颖性或原题解决。

第一次统一验证[20260908T200129Z](verification/20260908T200129Z/evidence.json)因导入名二次规范化丢失引号内日期/连字符而失败，尚未开始证明编译。修复后新增幂等性回归测试再运行，数学源码未变。development目录中的内存失败、局部未闭合导致的sorryAx输出均属于失败日志；没有被接受为证明，也没有新增项目axiom声明。有限证书最终使用同一数据及完整范围，只改变计算组织。

复现使用[verify.py](verification/verify.py)，按[README](verification/README.md)传入现有固定Lean和包缓存路径。单线程、1536MB、本批D盘临时目录；不安装或更新包，不清理其他任务缓存。


两个数据生成器已在独占临时副本重放，输出与当前源码及fresh evidence中的源码SHA逐字相同；未改写原源码。记录见[generator-checks.json](verification/20260908T203541403386Z-generators/generator-checks.json)，其中绑定生成器、输入和输出哈希。检查入口为verification/check_generators.py。
