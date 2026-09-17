# B699 Pro E：平方类与二次方程接续包

入口：[REPORT.md](REPORT.md)；数学：[PROOFS.md](PROOFS.md)；继续研究：[OVERVIEW.md](OVERVIEW.md)；来源：[SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)。

本轮响应“继续推理，尝试转换成其他好解决的数学问题”。主要结果：无界平方类数对子族闭合、精确有限除子/二次判别式参数化、n<81t⁵ 与全部 t≤100000 的消费者。没有闭合完整 i3、没有 Lean。R7 不变。

负责人：当前 Pro E 主线程。写入范围：本交付目录；不改其他会话源文件或远端。用户未设置本轮总时长，不继承旧五小时预算。没有精确记录开工秒点；环境与实际交付时间见 verification/environment.json。

## 离线复现

只需要 Python 3 标准库。建议把新输出放在另建目录，不覆盖本包 verification 的冻结记录：

```bash
mkdir -p replay
python3 scripts/certify_quotient.py --limit 100000 --output replay/quotient.json
python3 scripts/verify_quotient_independent.py --certificate replay/quotient.json --output replay/independent.json
python3 scripts/verify_theorems.py --limit 2000 --output replay/theorems.json
python3 scripts/quadratic_probe.py --limit 1000 --output replay/quadratic.json
```

可选失败诊断（不承担主证明）：

```bash
python3 scripts/window_crt_probe.py 1000000 replay/window-crt.json
```

复现输出含 elapsed_seconds，故时间字段不预期逐字节相同；数学候选应逐项一致。MANIFEST.json 记录本包原文件字节哈希。

## 证据分层

- 作者纸面无限证明：SQ、线性化、有限二次恢复、高度、平方自由核。
- 有限完备计算：QT100K；两份不同模根实现逐项匹配候选。
- 查错回归：n≤2000 的平方条件原始二项式检查，以及有界二次/CRT 探针。
- 无独立 AI/人类审稿；无 Lean、无公开新颖性或覆盖差集判定。

整理入仓库时应建立独立 run，沿用当前仓库布局规则；本包本身没有 Git 发布动作，不授予合并权限。上一轮原 ZIP 不复制进 Git，所用旧普通文件带哈希保存在 sources/。
