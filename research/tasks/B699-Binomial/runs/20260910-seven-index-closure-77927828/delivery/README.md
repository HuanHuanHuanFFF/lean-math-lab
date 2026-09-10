# B699：七个低指标完整闭合证据包

最强结果：`i=17,23,26,27,30,32,33` 的原题全部合法 n,j 在纸面与精确证书层排除。原题要求同一个素数 p≥i 同时整除 C(n,i)、C(n,j)。未 Lean 化。

先读 REPORT.md，再读 notes/PROOFS.md。准确剩余区域在 FRONTIER.md，给控制中心的采用边界在 HANDOFF.md。SOURCES.md 将旧输入、出版定理和本轮新增证明分开列明。

## 运行

Python3.10或以上，只需标准库。从解压后的包根运行：

```bash
python3 verify_manifest.py
python3 code/reproduce.py
```

第一条检查交付快照。第二条重新生成三项与七项证书，分别由另一算法检查，并执行边界/坏输入回归和路径对照。重放会覆盖日志及含运行时间的JSON；因此重新运行后快照manifest不再要求相同，而纯数学证书字节仍须相同，重放器会实际检查。

只要较小的原定三项：

```bash
python3 code/reproduce.py --three-only
```

不重新生成，只独立核查已有数据：

```bash
python3 code/reproduce.py --check-only
```

输出 `replay/reproduction.json` 包含每个真实命令、起止UTC、退出码、stdout/stderr哈希、输入与源码前后哈希。该工具不是外部定理或无界量词的形式化验证器。接受数学需要 `notes/PROOFS.md` 的完整覆盖证明及 SOURCES.md 的BFT输入。

## 本次实际正式重放

最终冻结源码的完整重放6个命令全部exit0，总墙钟约127.285秒：

|步骤|实测秒数|
|--|--:|
|三项生成|1.371|
|三项独立核验|3.127|
|七项生成|59.103|
|七项独立核验|62.041|
|边界与坏输入测试|0.919|
|两条最终路径及历史CRT参考对照|0.719|

以上是当前运行环境的实测，不是对其他机器的速度保证，也不是Lean成本预测。逐步记录以JSON精确值为准。

## 主要文件

- `outputs/seven_index_certificate.json`：七项完整CRT阶段、末端区间并、素数与大除子见证。
- `outputs/seven_index_independent_check.json`：完整独立算法检查摘要、逐阶段实际耗时。
- `outputs/three_index_certificate.json` 与 `outputs/independent_check.json`：不需要CRT的三项简单路线。
- `outputs/edge_tests.json`：2500个小CRT域、12个完整小覆盖、完整素数幂端点与12类坏输入。
- `outputs/path_comparison.json`：10个三项显式/CRT阶段的一致性，以及23个已实际保存的慢CRT参考阶段对照。
- `inputs/task-package-original.zip`：用户原始附件，保持字节不变，内含采用的旧论文推导与已有证据。
- `notes/RESEARCH_LOG.md`：选择路线的证据、实际失败和未做事项。

生成器与检查器不需要外部包、网络、任意精度浮点或Lean。没有附外部版权论文、模型对话链路或字体文件。
