# EXECUTION — 本轮实际做过与没做过

日期：2026-10-05。

## 输入

实际读取并解包原任务 ZIP 与本会话 R1 结果 ZIP，先读原 TASK.md、CONTEXT.md、SOURCE-INDEX.md；复核目标、真实 θ/ψ/Gap 接口及有限初段状态。两包成员哈希由独立小脚本重算：原25项、R1 14项通过。只表示字节绑定。

公开材料通过浏览器读取；具体页码、版本、成功和失败的取得方式见 sources/SOURCE-AUDIT.md。本地网络下载若失败，没有以零字节文件/未知版本文件冒充已取得PDF。没有使用 OCR。

## 精确计算

实际命令：

```sh
python certs/verify_constants.py
```

最后重放退出码0，68项标量断言通过。精确的系数输出为：

```text
low+middle coefficient = 3459877425861/250000000000 < 14
theta tail margin = 475571/144000000000 > 1/400000
finite-RH positive-zero-count upper bound = 464733
```

标准库脚本在当前容器最后一次墙钟0.640714秒，记录于 certs/EXECUTION.json。此时间只属于有理标量脚本，不能外推为 Lean、ζ 验证、有限 ψ 证书或整条解析链的耗时。

参数选择时曾用轻量数值探索作候选诊断；最终全部证明常数重新用 Fraction 和严格级数余项检查。没有将探索浮点结果、抽样峰值或近似零点视为证书。

成员绑定命令（占位路径由持有相同来源文件者替换）：

```sh
python certs/verify_inputs.py \
  --original /path/B699-20261004-uniform-gap-paper-1c862c44.zip \
  --previous /path/B699-uniform-gap-paper-20261005-result.zip \
  --out INPUT-BINDING.json
```

本轮已对当前会话两包实际执行，25和14成员的长度/哈希均匹配，且没有额外未绑定成员。

## 没做过

没有安装、启动或运行 Lean/Lake/kernel/checker/CI；没有查验所谓“kernel通过”。没有修改、提交、推送仓库。没有计算素数或素数幂表，没有重新生成原有限链，没有实际求值 ψ，没有计算/验证 ζ 零点，没有建立 F2/FH 原始计算证书。

没有复验 I0 的独立证据绑定。I0 的 producer 编译、AX、checker 成功只是原输入记录，独立验收仍 pending。

129行 Lean 文件只是新条件消费者候选；6个 `#print axioms` 是未来命令中的请求，不是本轮已有的输出。
