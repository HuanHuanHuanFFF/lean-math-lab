# B699 中指标成果接收审读与两份报告的合并推导

日期：2026-09-09。用途：控制中心接收记录及后续 Work 的数学输入。本轮没有修改仓库或运行 Lean。

## 1. 接收结论与准确证据等级

收到的原件为 B699-middle-index-closure-evidence(1).zip，主要入口为包内 b699-new-math/REPORT.md、HANDOFF.md。原件的 34 项 MANIFEST 哈希全部匹配。

该包在纸面证明与确定性计算层给出：对所有自然数 n,i,j，若 185≤i<j≤⌊n/2⌋，则有素数 p≥i 同时整除 C(n,i)、C(n,j)。没有把 p=i 删除，没有用素数集合替代完整幂。

审读了实际避免部分、三窗口分母消去、超阶乘归一化、对数比较，以及无限尾部与有限覆盖的拼接。未发现主链的阻断。计算核对不等于所有纸面推导已形式化，也不构成新颖性或人类同行评审认证。

本地实际重放的四步均成功：

- 原包第一种有理对数算法：815 条高度证书全部通过；
- 原包第二种素因子指数与不同级数算法：815 条全部通过；
- 从源码编译原包独立 C++ 素数链检查器；
- 对归档中的全部 116,667 个素数见证执行完全试除；首项 2，末项 20,000,093，最大相邻差 184。

两次高度计算的最小对数余量均大于 774，达到最小值的指标为 i=200。本地没有重做筛生成器、浮点诊断或低指标旧证书。

原证明按下列三块穷尽参数：

| 范围 | 闭合方式 |
|---|---|
| 185≤i≤999，n≥20,000,000 | 815 条严格高度证书，加已证明的单调性 |
| i≥185，n≤20,000,000 | 一条共享素数链，直接产生 (n−i,n] 内的素数；同时处理全部合法 j |
| i≥1000 的其余高度 | 新三窗口归一化给 n<4096i，再由 Dusart 两输入闭合；小 y 分支落回素数链 |

这是全部 i≥185 的全域纸面结论，不只是每个 i 的高度界。

## 2. 与已有交付合并后的前沿

主机最终提交：
63a04b064d62e7e8752b1edd75c186d07dc57a20
https://github.com/HuanHuanHuanFFF/lean-math-lab/commit/63a04b064d62e7e8752b1edd75c186d07dc57a20

主机纸面/精确结果覆盖 {28,29,31}∪[34,184]；其中 151 条高度与通用有限覆盖消费者已经 Lean 验收，具体全范围覆盖数据未完成 Lean 验收。28、31、34 的 Matveev 链另有未形式化依赖。

云端已验高度提交：
24cb8dc2f1befccc5432673b34e7c5422fb4939a
https://github.com/HuanHuanHuanFFF/lean-math-lab/commit/24cb8dc2f1befccc5432673b34e7c5422fb4939a

结合本轮新包，纸面上所有 i≥34 均被全域排除；另有 28、29、31 及旧已解决的 1、2。剩余恰为：
{3,4,…,27,30,32,33}。

只剩有限个指标，不代表只剩有限多个输入：这些 28 个指标各自的 n,j 仍可能无界。不得将这个前沿升级为全题有限化。

相对上一份深度研究 i≥150000 的纸面前沿，本包进一步完整排除 185≤i<150000，共 149,815 个指标；相对本包自己收到的 i≥10^6 基线，则为 999,815 个指标。两种统计采用不同基线，不能相加。

## 3. 本会话新增的合并推导：用 RS/Schoenfeld 保持 i≥185

这一节是本会话把两份交付接合后的纸面推导，不属于原 ZIP 的既有结论。它保留三窗口的新归一化和同一份有限证书，将解析输入改为深度研究给出的 Rosser–Schoenfeld 1962 与 Schoenfeld 1976。没有声称源定理已经 Lean 化，也不声称其完整形式化成本必然低于 Dusart。

### 3.1 采用的新三窗口输入

设 i≥1000，原题参数合法，并假设 noCommon。令
t=π(i−1)，ρ=t/i，L=log i，X=n/i>2，h=(i−1)/n。

原包第 4 节由三窗口结构和初等超阶乘估计给出：
U≥i^(−3) X^((i−5)/3)(1−h)^i。

结合 U≤n^t，可得
(1/3−5/(3i)−ρ)log X
≤ρL+3L/i−log(1−h)。                    (A)

此输入不依赖判别式或 Dusart。它的完整纸面推导在原包第 2–4 节，尚未整体 Lean 化。

### 3.2 Rosser–Schoenfeld 给出的常数

采用 Rosser–Schoenfeld 1962，Theorem 2 的上界：
π(x)<x/(log x−3/2)，x>e^(3/2)。

原包的初等对数估计已经给出：
L>20/3，log 1000<7，log 2>56/81；
log x/x 在 x≥1000 递减，因而 3L/i<21/1000。

因此
ρ<1/(L−3/2)<6/31，
ρL<L/(L−3/2)<40/31。

于是 (A) 的左侧系数严格大于
1/3−1/600−6/31=2569/18600>11/80，
最后一次比较的精确余量为 23/37200>0。

假设 X≥16384=2^14。则
log X≥14log 2>784/81>48/5，
最后一次比较的余量为 32/405>0。

同时 h<1/16384，因此
−log(1−h)≤h/(1−h)<1/16383<1/16000。

(A) 左边严格大于
(11/80)(48/5)=33/25，
右边严格小于
40/31+21/1000+1/16000。

后者与 33/25 的差为
33/25−40/31−21/1000−1/16000
=4273/496000>0。

矛盾，故得到新的纸面必要条件：
i≥1000 且 noCommon ⇒ n<16384i。         (B)

这里牺牲了原包的 4096 常数，换掉了 Dusart 的素数计数输入；没有降低最终覆盖范围。

### 3.3 Schoenfeld 固定比例区间闭合大 y

采用 Schoenfeld 1976，Theorem 12：
x>2010759.9 时存在素数 p，满足
x<p<x(1+1/16597)。

令 y=n−i。

若整数 y≥2010760，由 (B) 有
y<16383i，
故
y/16597<i。

Schoenfeld 的见证满足
n−i=y<p<y+y/16597<y+i=n，
与 noCommon 的顶端素数排除矛盾。

若 y<2010760，由合法性 y>i，得
n=i+y<2y<4021520<20000000。
原包已验真的同一素数链排除这一分支。

因此 RS/Schoenfeld 加新三窗口归一化及同一素数链，覆盖全部 i≥1000。再加入原包 185≤i≤999 的 815 条高度证书，仍得到全部 i≥185。

### 3.4 依赖变化

- 原新包：三窗口归一化＋Dusart 计数＋Dusart log² 短区间推导＋有限证书。
- 本合并推导：三窗口归一化＋Rosser–Schoenfeld 计数＋Schoenfeld 固定比例区间＋同一有限证书。

后者不需要两轮 log² 推进，也不要求重新生成有限数据。它仍依赖经典显式素数分布定理；这两条源定理的 Lean 证明义务并未消失。旧判别式高度结果和 Dusart 证明继续作为独立成果保留。

## 4. 下一步任务判断

数学探索应集中到剩余 28 个低指标，不再以压低大指标阈值为主目标。

原报告通过已知三角格点覆盖定理，排除了一个明确受限的方法类：只用单个素数幂的支撑、仿射线性因子的非负权重乘积、统一 O_i(n) 大小界和 U≤n^t。在该类内增加任意直线方向不能恢复剩余指标的正净指数。这个障碍不排除小素数估值的联合约束、高位进位、非线性多项式或保留更细大小信息。

以 i=27 的高重数非线性插值作首个判别点是合理候选，但“存在次数<18m 且能处理全部零集合的多项式族”目前只是待证明目标。少数 m 的秩检查失败不能证明全部 m 不可行，构造消失多项式也不能省略合法域非零性的义务。

形式化应拆分工作量：
1. 185≤i≤999 的全域结论：不需要外部解析定理，但需要将 815 条高度证书与共享素数链接入 Lean；先证明检查器并测量完整证书片段的真实成本。
2. i≥1000 的无限尾部：选定三窗口归一化与素数输入，先落实外部定理实际可复用的证明链；带显式假设的消费者不能算无条件完工。
3. 主机 151 项全范围数据仍是独立工程缺口，不会由本包的通过自动解决。

本次没有启动这些任务，也没有合并分支或上传成果到仓库。

## 5. 外部数学定位

- Rosser–Schoenfeld (1962), Theorem 2, p.69：
  https://doi.org/10.1215/ijm/1255631807
  可读原文副本：https://denisevellachemla.eu/Rosser-Schoenfeld-1962.pdf
- Schoenfeld (1976), Theorem 12, p.359：
  https://doi.org/10.1090/S0025-5718-1976-0457374-X
  本会话对其表述另核对了 Dusart 原文第 8 页的明确引用及先前深度研究；没有声称重新证明这条源定理。
- Dusart (2010), arXiv v1，Proposition 6.8、Theorem 6.9：
  https://arxiv.org/pdf/1002.0442v1
  本会话实际读取了相关定理文本。原包的应用在 y≥400000、i≥1000，避开来源阈值的端点歧义。
- Basit–Clifton–Horn, Covering triangular grids with multiplicity，Theorems 2.1–2.2：
  https://arxiv.org/pdf/2307.13257
  本会话实际读取了相关精确覆盖公式和下界论证的适用说明；它只用于方法障碍，不参与 i≥185 的主定理。

## 6. 本地重放与常数记录

下列是本次实际命令输出及精确合并常数。路径属于隔离副本；原上传 ZIP 未被改写。


```json
{
  "archive_sha256": "b96965a898f6f097d66fbb0d8df4e12e5b03c8f238e43143cd32fe7c506e0cf0",
  "checks": [
    {
      "command": [
        "/opt/codex/runtimes/codex-primary-runtime/dependencies/python/bin/python3",
        "code/exact_height_certificate.py"
      ],
      "returncode": 0,
      "seconds": 0.416,
      "stdout": "{\n  \"status\": \"PASS\",\n  \"i_min\": 185,\n  \"i_max\": 999,\n  \"rows_verified\": 815,\n  \"N\": 20000000,\n  \"log_scale\": \"1000000000000000000000000000000\",\n  \"atanh_terms\": 24,\n  \"small_prime_count\": 168,\n  \"minimum_margin_row\": {\n    \"i\": 200,\n    \"t\": 46,\n    \"r\": 66,\n    \"s\": 140,\n    \"ell\": 133,\n    \"lam\": 214,\n    \"E\": 28651,\n    \"delta\": 4305,\n    \"scaled_log_margin_lower\": \"774417867723445970502792550354367\"\n  },\n  \"minimum_log_margin_integer_floor\": 774,\n  \"elapsed_seconds_diagnostic\": 0.3539951929997187\n}\n",
      "stderr": ""
    },
    {
      "command": [
        "/opt/codex/runtimes/codex-primary-runtime/dependencies/python/bin/python3",
        "code/independent_height_check.py"
      ],
      "returncode": 0,
      "seconds": 1.412,
      "stdout": "{\n  \"status\": \"PASS\",\n  \"method\": \"prime-exponent cancellation and log(1-u) rational series\",\n  \"rows_verified\": 815,\n  \"N\": 20000000,\n  \"terms\": 110,\n  \"log_scale\": \"10000000000000000000000000000\",\n  \"minimum_i\": 200,\n  \"minimum_scaled_log_margin_lower\": \"7744178677234459705030184283400\",\n  \"minimum_log_margin_integer_floor\": 774,\n  \"unique_prime_logarithms\": 1088,\n  \"elapsed_seconds_diagnostic\": 1.3613188310009718\n}\n",
      "stderr": ""
    },
    {
      "command": [
        "g++",
        "-O2",
        "-std=c++17",
        "code/check_prime_chain.cpp",
        "-o",
        "build/review_check_prime_chain"
      ],
      "returncode": 0,
      "seconds": 0.521,
      "stdout": "",
      "stderr": ""
    },
    {
      "command": [
        "build/review_check_prime_chain",
        "outputs/prime_chain_20m.txt"
      ],
      "returncode": 0,
      "seconds": 0.122,
      "stdout": "{\n  \"status\": \"PASS\",\n  \"method\": \"complete trial division of every supplied witness\",\n  \"count\": 116667,\n  \"first\": 2,\n  \"last\": 20000093,\n  \"max_gap\": 184,\n  \"base_prime_count\": 607,\n  \"integer_divisions\": 49580021\n}\n",
      "stderr": ""
    }
  ],
  "rs_schoenfeld_substitution_arithmetic": {
    "coefficient_margin": "23/37200",
    "log_X_margin": "32/405",
    "contradiction_margin": "4273/496000",
    "interval_width_margin": 214,
    "small_y_max_n": 4021520,
    "small_y_below_shared_chain": true
  },
  "scope": "Finite certificate replay and exact substitution constants; no Lean run and no independent formal verification of paper reasoning."
}
```

