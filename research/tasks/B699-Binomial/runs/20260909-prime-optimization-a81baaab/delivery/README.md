# B699 计数依赖优化证据包

入口：**REPORT.md** 为完整中文推导；**HANDOFF.md** 为控制中心交接。

主结果：无需 Dusart/RS 计数定理，仍证明 i≥1000 且 noCommon ⇒ n<4096i。新增115条纯整数计数证书；41条较小备选得到n<16384i。保留全 i≥185 的既有覆盖，不增加B699高度表/素数链。i≥10^6 的形式化候选不需要这两种新表。

未新增 Lean 验收。原题剩余28个低指标没有被解决。短区间素数输入仍需证明/形式化。

## 文件布局

- REPORT.md、HANDOFF.md：纸面数学与工程边界。
- code/stronger_bridge.py：115行主证书的生成器及独立计数检查。
- code/count_bridge.py：41行备选及EC固定基例。
- code/constant_checks.py：统一有理常数、Dusart→Gap的整数余量。
- code/reproduce.py：重放新接受计算，检查发布时的SHA，保留冻结输出。
- code/explore_weight_asymptotic.py：另行运行的浮点研究诊断，不在接受链。
- outputs/：实际输入证书、实际运行输出、失败注入拒绝结果。
- sources/：固定mathlib实际代码摘录和读取审计。
- inputs/：旧报告/任务及原证据ZIP的不改字节副本。

## 重放

```bash
python3 code/reproduce.py
```

只需Python标准库；不联网、不安装Lean、不重跑旧大证据。输出到`replay/`，不改写冻结的`outputs/`。不能用`python -O`跳过检查断言，检查器会直接拒绝该模式。

证书已随包给出；重新生成可执行下列命令，但会覆盖对应证书JSON并改变生成文件的哈希，请在副本中操作：

```bash
python3 code/stronger_bridge.py --generate
python3 code/count_bridge.py --generate
```

可选浮点诊断需要SciPy：

```bash
python3 code/explore_weight_asymptotic.py
```

接受判断没有使用这个诊断。其输出不是全局最优性证明。

## 哈希与证据等级

MANIFEST.sha256绑定发布时的文件；不含replay目录、自身或Python缓存。新代码输出PASS仅证明它执行的精确数值断言通过，不等同Lean内核、人类同行评审或整个纸面推导的形式化认证。

旧证据ZIP按字节保存，本轮只读，没有再次运行其815项或原素数链。
