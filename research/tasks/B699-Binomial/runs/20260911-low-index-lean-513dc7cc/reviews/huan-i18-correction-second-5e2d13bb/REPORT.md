# i18 无限尾部修正：第二位独立数学审读

核验者：AI `/root/i18_correction_review`。固定仓库基线 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`。

## 接受结论

**接受 CORRECTION.md 的分段数学修正与全部 279 项精确证书；接受补丁中 verify_tail 的数学实现。** 在绑定原有限素数证书已有验收的前提下，三条 G 定理可保持原 L、严格起点 m0、两种 delta 及全部 m 范围。没有发现修正引入的未控无界参数。

**原 corrected-theta.patch 不能直接按原字节应用到恢复原件。** CRLF 补丁与 LF 原件使实际 Git 应用检查失败。仅规范换行后的 [corrected-theta-lf.patch](corrected-theta-lf.patch) 已在本目录的小型副本中通过检查和实际应用，数学文本与候选一致。另有 Windows 入口依赖缺口：新生成器调用检查器时触发缺失的 resource 模块；默认尾部命令没有运行通过。

这是针对修正层的第二份独立 AI 接受，**不是整个 i18 原证书的重新验收，也不是 Lean 验收或人类同行评审**。原错误版本仍不能原样接受。

## 范围、顺序和固定输入

原目标为：对自然数 n,j，19≤j 且 2j≤n，存在素数 p≥18 同时整除 C(n,18)、C(n,j)。合法输入有 n≥38；18 合数使 p≥18 等价于 p≥19。本次只审它所依赖的三条 G 下界修正，不重做其余完整消费者。

先读取仓库规则、题面、原 content_bounds.py/check_content_bounds.py、CONTENT_PROOF.md、候选修正与 BFT 原页，独立完成推导和小型精确检查，再读取既有 REVIEW.md 作结论对照。首次独立检查完成于 `2026-09-11T01:26:27.366530+00:00`；当时未读第一份 REVIEW。该时刻的原始脚本与结果保存在 [initial-before-first-review/](initial-before-first-review/)。最终脚本仅将历史顺序字段改为“检查器不读取第一审报告”，数学代码未改，随后再次通过。

原件根目录：`D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911`。
候选根目录：本仓 `research/tasks/B699-Binomial/runs/20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/`。
所有写入均在本报告目录，原件与候选只读。复查的文件路径、大小和 SHA-256 全部写入 [INDEPENDENT_CHECK.json](INDEPENDENT_CHECK.json) 的 inputs。

## 原文、常数和两个 delta

独立抽取并查看固定 [BFT 作者稿](https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf) 第17–19页。PDF 219865 字节，SHA-256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`。本次本地页图和文本保留于本目录 `BFT-page-17/18/19.*`。不是仅凭第一位核验者的转述。

第19页 Lemma 5.4 为：1≤x≤10^11 时，x−(259/125)√x < theta(x) < x；x≥10^8 时，|theta(x)−x|≤(213/10^6)x。正确 eta 确为 0.000213，原程序中的 213/10^7 不正确。两个有效范围重叠；没有 x 落在两者之间的空档。

对 N=c+d、t=Nw+r、j=dr mod N、N/2<j<N，令 g=d（j≥c）或 c−d（j<c），v=gw+1+floor(gr/N)。第17–18页 (5.14)/(5.15) 分别弱化到

    log G(c,d,dm−delta) ≥ sum max(theta((Nm−2)/t)−theta(gm/v),0).

上端 Nm−1 改成 Nm−2 是减小 theta 的输入；下端出现的 gm−1 改成 gm 是增大被减项，方向均为下界的弱化。j=c 时 r=N−1，d/[d(w+1)] 与 (c−d)/[(c−d)(w+1)] 相同，两种 delta 的分组边界没有漏项。严格 N/2<j<N、t>0、0≤w≤W 及原行的 w,j 标签均独立反向枚举核对。c>d≥1、gcd(c,d)=1 对三组参数成立。m≥2N(W+1) 保证这些 w 位于原式合法截断内。

这里采用的是 BFT 本身的带重数区间和；没有另行把重叠区间当作互不重复的素因子乘积。遗漏的原式项非负，因此可以只用选定的有限子集。

## 两段解析推导

记 A=N/t、B=2/t、C=g/v，X(m)=Am−B、Y(m)=Cm，三者系数皆为正。

在 M≤m≤T=10^9 上，逐项核对 e0≥0、e0²≥(259/125)² A/M、AM−B≥1、AT−B≤10^11、CT≤10^11。A,C>0 将端点检查推广到整个区间。因此 e0 m≥(259/125)√(Am)≥(259/125)√X(m)，而 theta(Y(m))≤Y(m)。所以

    max(theta(X(m))−theta(Y(m)),0) ≥ b m,
    b = A−C−e0−B/M.

此步完全不需要旧的错误 eta。实际最小 Y(M) 也均大于 1。三行的最大 X(T) 分别为 2499999999、11499999999、12999999999；最大 Y(T) 分别为 2000000000、8000000000、11000000000，均处于小范围估计内。

在 m≥T 上，取 eta=213/10^6、epsilon=1/100000、e=eta A+epsilon。有

    4 eta epsilon − (259/125)²/T = 16511/3906250000000 > 0,
    e² − (259/125)² A/T
      = (eta A−epsilon)² + [4 eta epsilon−(259/125)²/T] A ≥ 0.

因此 e≥eta A 且 em≥(259/125)√(Am)。若 X≤10^11，用平方根界；若 X≥10^8，用 theta(X)≥(1−eta)X≥X−eta Am≥X−em。X≥1 由 M≤T 及 AM−B≥1 保证。对所有 y≥0，theta(y)≤(1+eta)y：y<1 时 theta(y)=0，其他 y 由两个重叠范围覆盖。于是

    max(theta(X(m))−theta(Y(m)),0) ≥ h m,
    h = A−(1+eta)C−e−B/T.

两段中的 −B/M、−B/T 方向正确，因为 m 分别不小于分母阈值。所有 b,h 都严格为正。

## 独立精确算术与连续覆盖

[独立检查器](independent_check.py) 不导入原生成器、候选生成器或候选检查器。主余量使用 integral_1^L (1/x) dx 的 256 格精确有理梯形上界；1/x 的凸性保证每格梯形面积为上界，中点面积为下界。它不同于候选生成器的 100 项 atanh 级数、候选检查器的 180 项 −log(1−u) 级数。另按明示正项级数和几何余项重建候选所报告的对数上界，核对其精确分数。

| c,d | 项数 | 原有限区间 | 解析桥 | 本审读桥余量下界，近似值 | 无限尾部余量下界，近似值 |
|---|---:|---|---|---:|---:|
|3,2|106|12019..29999999|30000000..10^9|0.0041939983|0.0088593035|
|15,8|95|4212..5999999|6000000..10^9|0.0048225454|0.0311875931|
|15,11|78|1374..2999999|3000000..10^9|0.0074807613|0.0483414614|

表中小数仅显示；裁决比较 exact Fraction。完整分数、最小逐项速率及所有源哈希见 JSON。固定 279 项与原证书集合恰等、无重复、无缺项。原有限块数量 6774、7494、6448，逐块核对相邻端点及合法 W，最后一块各止于 M−1。本次没有重算这些块的素数权重。

桥包含 M 和 T，尾部包含 T，故接合无遗漏。把已验原有限段一并采用，即得到两种 delta∈{0,1} 的原接口：

- (3,2)：m>12018，L=8103/5000；
- (15,8)：m>4211，L=4541/2500；
- (15,11)：m>1373，L=361/250；

均有 G(c,d,dm−delta)>L^(dm)。严格性来自 sum b、sum h 严格大于 d log L，而不是依赖浮点或把 ≥ 改成 >。

## 保留旧数据的准确含义

旧 L、m0、原有限块和十条 Padé 数据都可保持。独立读取十条原 Padé 行，确认其中七条采用这三组完全相同的 L、m0；其余三条来自原 BFT 表，不受本 theta 修正改变。新 G 接口的量词和严格性足以保留原高度及末端数据作为同一旧证据链的输入。本次未重验 Padé 消费者、600000 位高度、指数块、CRT 或末端证书，不将这种接口保持写成那些证书重新运行通过。

有一处必须保留的语义区别：新尾部 h 比旧逐项 rate_lower 更小的项数分别为 2、1、1。**旧逐项 rate_lower 不能一律解释成新无限区间中同一项的下界。** 它们仍是桥见证，且每行新尾部总和都不小于旧总和。补丁实际检查了 bridge≥legacy、tail≥legacy，并同时检查两段都大于目标；因此保留旧整体 logG_over_m_lower 是成立的。新生成器保留的小常数只负责选取同一批有理桥见证，最终接受必经正确双段检查，未把小常数再次当作 theta 定理。

补丁中的 need/reverse_cells/verify_tail 三个实际函数经 AST 提取执行，注入本审读的独立梯形对数上界，三行全部通过；两个改动 Python 文件语法有效。此项是定向数学函数运行，不等于默认程序入口或整包重放。

## 两个工程问题与采用方式

1. **原补丁换行不匹配。** 原补丁全部220行 CRLF，四份原文件使用 LF。在原字节的独立小副本上，Git 2.45.1.windows.1 的 apply --check 返回 1，四个目标均不匹配。仅 CRLF→LF 的副本通过 check 和实际 apply，均返回 0，五份输出与候选规范换行后完全相同。没有使用忽略空白选项。日志和实际文件哈希见 [PATCH_DELIVERY_CHECK.json](PATCH_DELIVERY_CHECK.json)、[原补丁失败日志](PATCH_APPLY_RAW.log)。可采用的 LF 补丁 SHA-256：`8a436452bdf9f80cab829ced878cc64c67be429a1d250181835d12ae07e9d892`。实际 LF 文件哈希不同于第一审 PATCH_SOURCES.json 的 CRLF 候选哈希，必须按新字节登记，不能照抄旧 new_sha256。
2. **默认 Windows tail 入口失败。** 在 LF 小副本内补齐原 rational_intervals.py 后，执行 content_bounds.py tail 返回 1：生成器第60行新导入 check_content_bounds，后者第10行导入 Windows 没有的 resource。见 [PATCH_WINDOWS_TAIL.log](PATCH_WINDOWS_TAIL.log)。原检查器本来就依赖 Unix resource；补丁又把该依赖带到了 tail 生成入口。该问题不否定上面的解析证书，但不能报告 Windows 默认入口已通过。后续可由执行者在有 resource 的平台验证，或将仅用于统计内存的依赖隔离后另做运行验收。本次没有偷偷 stub resource 来制造通过记录。

整合时使用 LF 补丁，随同带入 CORRECTION/精确证书/来源/两份审读，给新字节建立新 manifest。第一审关于“尚无第二位独立审读”的句子是其历史时点状态；由本报告新增状态，不改写其原文。

## 复核入口与未做事项

本次最终小型复核 exit 0，状态 `PASS_SECOND_INDEPENDENT_ANALYTIC_REVIEW`，耗时约0.08秒；完整输出见 [INDEPENDENT_CHECK.log](INDEPENDENT_CHECK.log)。重复检查时，把 independent_check.py 复制到本审读目录下新的 verification/时间戳/ 子目录，再执行以下命令；脚本结果只写到该脚本所在目录，避免覆盖已有证据。

```powershell
$repo = 'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb'
$review = "$repo/research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/reviews/huan-i18-correction-second-5e2d13bb"
$fresh = Join-Path $review ('verification/' + (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffffffZ'))
New-Item -ItemType Directory -Path $fresh -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $review 'independent_check.py') -Destination (Join-Path $fresh 'independent_check.py')
& 'C:/Users/幻/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe' -B (Join-Path $fresh 'independent_check.py') --source 'D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911' --candidate "$repo/research/tasks/B699-Binomial/runs/20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb"
```

实际解释器为 Codex bundled Windows Python。没有重跑7500万素数筛、39,238,326个区间、Padé/指数块/CRT/末端全量；没有运行 Lean、审计传递公理、提交、推送或联系他人。出版引理自身仍是外部已知数学依赖，未在本次重证或形式化。完整 B699 与新颖性均不作完成声明。

记录建立于 2026-09-11T01:18:00.9320750Z，无总截止时间；当时可用 RAM 2.47 GiB、D盘2.61 GiB，另有约1.19GB Lean进程，故仅执行轻量审读和算术。实际前沿作用是给 i18 既有纸面路线的修正提供第二份独立接受，其他 i 的全局未知区域不变。下一步是按正确字节采用修正、处理执行平台入口，并由原有限证书负责人绑定旧验收；Lean 接受仍须另行完成。

## 核心源哈希

| 固定文件 | SHA-256 |
|---|---|
| original:outputs/content_tail_certificates.json | `b04b3f1f3051da6e01feb53a47e7e155e5aa22a527cf89308ca9a4bcb3147b46` |
| candidate:CORRECTION.md | `64ea46eb738a39d0c00cf8f8b4112d8b67f9f3a9b291c99ad39395ba1f876338` |
| candidate:CORRECTED_THETA_CERTIFICATE.json | `dd807081b08e6cd3141b1dc85652800048e3d4e73cdb1a73a1bcfb0afd3dbd4d` |
| candidate:corrected-theta.patch | `f832537da9c5197d473603f06ac631ac6ca0fdf7b7992762cd3f61601cd1e9f4` |
| second-review:independent_check.py | `99d501ec9ae9347c2a70990ecb2272753601efb5b619e080911711c83845ff28` |
