# B699 Pro E · 整数窗口比值的三底障碍

本轮仅i3。先读 **OVERVIEW.md** 接续，**REPORT.md** 看实际增量，**PROOFS.md** 看完整无限证明，**FAILURES.md** 看不允许扩张的边界。固定采用来源在 **SOURCE_ADOPTION.md** 和 sources/。

最强结论：NC3且(n−1)(n−2)/(j(n−j))为整数，强迫omega(t3)≥3；因此整个omega(t3)=2、g=1、u=1切片排除。一般i3和一般两底族仍未闭合。

新主证明是初等韦达分类＋递推因式分解＋完整端点源进位；不采用前轮匹配立方、类域论、特定Pell或旧大表。代码只承担明示有限身份、回归和证书检查，不替代无限证明。

## 核心复现

在本包根目录，用Python 3.10或更新版本（本次实际3.13.5）：

```sh
python3 -S -B scripts/reproduce.py --output-dir /tmp/b699-e-iq3-replay
```

核心无第三方依赖，不往本包冻结输出写入。两个独立算法分别用直接递推和矩阵幂，验证1550个三因子实例、265个端点原输入、弱模型和12种损坏拒绝。它们由同一作者实现，不是外部研究者审稿。

可选精确符号检查使用SymPy（本次1.14.0）：

```sh
python3 -S -B scripts/reproduce.py --output-dir /tmp/b699-e-iq3-replay-symbolic --symbolic
```

其子进程使用普通Python加载SymPy，核对16个零多项式。不同SymPy版本可能因版本字段造成字节差异；应核对实际身份，不要改旧证书掩盖差异。本轮三份生成结果均与冻结输出逐字节相同，见outputs/REPRODUCTION.json和replay-*.log。

## 诊断实验（不属于主证明的必跑链）

C++17编译器与足够存储下，以下命令重建有界实验。默认单进程执行；不得把这些范围当作高度界。

```sh
g++ -std=c++17 -O2 scripts/window_probe.cpp -o /tmp/b699-window-probe
/tmp/b699-window-probe 10000000 > /tmp/window10m.json

g++ -std=c++17 -O2 scripts/drop_g_probe.cpp -o /tmp/b699-drop-g-probe
/tmp/b699-drop-g-probe > /tmp/drop_g_probe.raw.json
python3 -S -B scripts/annotate_drop_g.py --input /tmp/drop_g_probe.raw.json --output /tmp/drop_g_probe.json

python3 -B scripts/residual_probe.py --output /tmp/residual_probe.json
```

residual_probe.py使用SymPy作命中时的素因数分解。本次未命中。drop_g_probe.cpp先以浮点近似定位平方根，再用128位整数上下校正和精确平方等式判断；没有以浮点近似决定是否平方。在包内固定范围的整数界内没有128位溢出。

outputs/drop_g_probe.raw.json是C++原始输出；drop_g_probe.json是另一步精确试除注释，不能混为原程序原始返回。portable output改造后的两份诊断已重放，与冻结结果相同。第一窗口10^7搜索只在最初定向实验执行，本轮最后未重复跑这一未改变的实验。

## 文件和证据完整性

```sh
python3 -S -B scripts/check_manifest.py
```

MANIFEST.json覆盖所有普通交付文件，自身除外。没有打包二进制可执行文件、缓存、字体、外部PDF、旧大ZIP或未运行输出。源文件哈希另外保存在outputs/SOURCE_HASHES.json。

无Lean、Git发布、PR或合并。本ZIP为会话交付，不构成仓库数学独立接受。
