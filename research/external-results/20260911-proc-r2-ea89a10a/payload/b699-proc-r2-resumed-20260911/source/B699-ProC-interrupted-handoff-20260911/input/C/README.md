# B699 Pro C：统一有理偏差核证据包

**纸面结构定理＋精确整数证书；不是Lean已验全题。**

全题未完成、没有原题反例、新增整指标闭合0。R9仍为{3,4,5,6,7,8,9,10,14}。

## 先读

`REPORT.md`给中文研究结论；`HANDOFF.md`给独立审读/形式化接口；主证明是`notes/MASTER_LINEAR_KERNEL.md`。来源与输入哈希见`SOURCES.md`和`SOURCE_MANIFEST.json`。

完整闭合的两个无界子族为：

    2≤i≤14，0≤n−2j≤8；
    2≤i≤14，n/gcd(n,j)≤8。

两者均同时要求原题合法性i<j≤floor(n/2)。主定理给任意固定(i,A,B,h)的有效有限化，但这些参数仍无界，不能拼成全题绝对高度。

## 主要文件

- `notes/MASTER_LINEAR_KERNEL.md`：全指标、任意分母及有符号偏差的统一核；完整幂和同一行论证。
- `notes/CENTRAL_KERNEL_PROOF.md`：低指标c_i∈{1,3}优化；807点完备候选域。
- `notes/RATIONAL_CANCELLATION_PROOF.md`：更紧的精确阶乘高度；和主定理相交后的7391点消费者。
- `notes/CONTENT_AND_DIGITS_PROOF.md`：保证存在的公因子、精确高位商坐标，以及未闭合的内容猜想。
- `notes/FAILURES_AND_LIMITS.md`：无效下降反例、未界定参数与未接通的解析路线。
- `evidence/central-divisor-certificate.json`、`rational-kernel-certificate.json`：最终优化证书。
- `evidence/*verification.json`及`logs/*verifier.log`：实际第二实现结果；包含坏证书拒绝测试。

原29939/50330点较宽高度证书保留为交叉证据。两组区域有重叠，不能把各文件点数相加称为不同原题三元组总数。

## 只验收已有证书

使用Python 3.10或以上。核心程序仅依赖标准库，从解压根目录运行：

```bash
python code/verify_central_divisors.py
python code/verify_rational_kernel.py
python code/verify_certificates.py
```

前两项验证最终807/7391点消费者，第三项验证较宽的两组原高度证书。验收器不导入生成器模块：它们独立重建核与候选域，检验p的素性、p≥i、C(n,i)整除和进位/完整阶乘赋值。

这些程序只验证有限末端与所编码的常数/域；无界前置仍是正文纸面证明，尚须外部审读和Lean形式化。

## 重建并重跑全部核心实验

```bash
python code/run_checks.py --regenerate
```

它串行重建证书、运行第二实现、结构回归与坏证书测试；日志写入`logs/reproduction/`。不下载依赖、不访问网络、不启动后台任务。

## 可选：复现i=3的有界内容探索

```bash
mkdir -p _build
g++ -std=c++17 -O2 code/probe_content_shadow.cpp -o _build/probe_content_shadow
_build/probe_content_shadow 1000000 evidence/i3-content-shadow.tsv
python code/check_shadow_filter.py --binary _build/probe_content_shadow --N 500
```

应得到8046635个完备过滤候选、0个内容商2幂幸存者。这个扫描**没有无限尾部证明**，不是i=3的闭合证书。代码限制N≤100000000以保证固定宽度中间整数的安全；本轮实际范围只有10^6。

`entropy_probe.py`是另一个未采用的浮点探索，额外需要NumPy和SciPy；默认复现不执行它，任何新定理都不依赖它。

## 哈希与输入恢复

```bash
python code/verify_manifest.py
```

这验证交付时的`MANIFEST.sha256`。重建会更新包含实际耗时的JSON/日志，从而合理地改变文件哈希；应先验收原交付哈希，再重建，不能把重建后的时间字段变化当作数学差异。

`input/`只保留原ZIP的275个小成员，已与原字节核对；它不是完整克隆或完整原证据包。未提取的大证书按`SOURCE_MANIFEST.json`记录的原ZIP恢复，本轮新证书的复现不需要这些大证书。
