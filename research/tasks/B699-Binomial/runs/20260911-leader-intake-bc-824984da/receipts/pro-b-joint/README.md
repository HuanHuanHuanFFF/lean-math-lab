# B699 Pro-B R12 新研究证据包

先读 REPORT.md，再按所需范围读 notes/PROOFS.md 和 notes/I3_COVERAGE_OBSTRUCTION.md。HANDOFF.md给控制中心直接采用的状态与接口。

本包没有新的整指标闭合或无条件绝对数值高度。它包含完整i15联合门槛与条件消费者、无条件大n碰撞排除、i3覆盖障碍；具体层级见报告。

## 重放

```bash
python3 verify_manifest.py
python3 code/reproduce.py --record replay/local
```

Python 3.9+标准库即可。replay/local必须为空或不存在；原证书不会覆盖。接受脚本把全部新输出写入临时空目录，运行独立检查器，逐字节比较evidence的9份数学结果，并记录真实命令/输出/哈希。不自动连接网络、不编译Lean、不执行旧任务。

证书根为input/critical_affine_packing.json和evidence/light_graph_certificate.json（最终）与evidence/graph_certificate.json（对照）。graph可从55+3输入重新生成；打包的发现来源在evidence/critical_dual_discovery.json，正式checker不依赖LP。

code/probe_*.py是本轮探索源码，输出在evidence；部分需要SciPy/SymPy。它们不是接受入口。环境版本在evidence/environment.json，有限探索域和所有失败范围在notes/FAILURES.md。

## 布局

- input/originals：39.6 MB用户dispatch原ZIP，未改字节。
- input/adopted：按映射复制的冻结数学文字/证书，旧任务不作为当前指令。
- code：新标准库证书与检查器，另有明确命名的探索代码。
- evidence：新固定数学输出以及历史发现数据。
- replay：真实新接受命令及日志；用户重放可写自己的新子目录。
- failures：真实首版失败脚本及说明，不进入接受链。

MANIFEST.json排除自身与__pycache__；当前已保存的replay记录也绑定哈希。验证器允许用户新增replay目录；其他额外文件会报告。旧源ZIP包含完整历史依赖，原始BFT论文链接见SOURCES.md；网页可读但容器下载失败，没有伪称包内存在该PDF。

没有Lean、人审或第二独立研究会话审读。文献新颖性未认证。
