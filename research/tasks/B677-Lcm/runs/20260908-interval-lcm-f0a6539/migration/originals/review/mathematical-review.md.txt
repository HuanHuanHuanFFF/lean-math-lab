# B677 独立数学与陈述审查

**结论：接受为依赖已发表素数区间定理与精确有限计算的部分数学论证。** 独立重构未发现使所声明部分结论失效的数学缺口、参数遗漏或有限扫描漏洞。此结论不等于原题已解决，也不等于整个部分定理已由 Lean 证明。下面区分纸面证明、文献输入、运行证据与 Lean 结果。

- 审查完成：2026-09-08 05:34:11 Asia/Shanghai。
- 审查者：新上下文 `b677_fresh_review`；初始输入为原题、指定成品与验收问题，未读取实现对话。
- 开始：2026-09-08 05:15:57 Asia/Shanghai（工具 UTC 时间换算）。首轮意见截止 05:35，最终意见截止 05:45；全局探索截止 06:10，旧 10:00 / 11:00 安排已作废。
- 唯一拥有文件：本文件。其它源码、证据与原工作区只读；没有提交、推送、外部联系或新增依赖。
- 预期收益：确认或否决两个无限区域的排除；实际收益：论证和有限覆盖获本次 AI 独立审查支持，未新增数学排除区域。
- 计时纠正：初稿的 `05:19` 检查点标题与发给主任务的一条 `05:22` 消息用了错误估计，已废止；随后工具实测为 05:18:47。初始开始读数有效，以下运行时间均来自工具或实际程序时钟。

## 1. 审查的准确范围

完整平台目标是

\[
\forall n,m,k\in\mathbb N,\quad k>0,\ n+k\le m
\quad\Longrightarrow\quad M(n,k)\ne M(m,k),
\]

其中 `M(n,k)=lcm(n+1,...,n+k)`。候选成品 [complete-proof.md](../explorer/complete-proof.md) 只断言增加条件

\[
m-n\le8k\quad\text{或}\quad n\le369k
\]

后的部分定理。它的纸面与精确计算证明链覆盖这个并集的全部合法参数，包括 `n=0`、`k=1` 和边界等号；第二分支不限制位移。该并集之外的 `n>369k`、`m-n>8k` 仍然无界。主任务的更强有限扫描另外排除了全部 `m<89693`，因此在同一计算证据层级上，残余还必须有 `m>=89693`。这些必要条件不构成有界全题搜索。

原始题面/定义的对应已直接核验：

- [平台 metadata](../../../platform-20260908/bundles/erdos-677-formalized/source-metadata.json) 的 `type_pretty` 与 `.tools/platform/formal-conjectures/FormalConjectures/ErdosProblems/677.lean` 都是自然数、`k>0`、`m>=n+k`；原题结论左右 LCM 次序相反，仅使用不等式的对称性。
- 原定义 `.tools/platform/formal-conjectures/FormalConjecturesForMathlib/Algebra/GCDMonoid/Finset.lean:27` 是 `(Finset.Ioc n (n+k)).lcm id`。项目 [IntervalLcm.lean](../../../../Math/B677/IntervalLcm.lean) 在自然数上的定义与其相同，未改区间端点，也未把整数减法混为自然数减法。
- 原始形式化任务自身有 `sorryAx`，是开放任务占位证明；项目模块不导入这个未证目标，因此它不是项目结构引理的依赖。
- `k=0` 会给空区间，但明确被完整目标及候选部分定理排除。`k>0` 与 `n+k<=m` 本身可同时满足；没有偷偷增加 `False` 或将结论直接写入辅助定义。差值引理中的 LCM 相等是假设性的必要条件，不是对该相等情形存在性的声称。

## 2. 初等论证重构

以下检查为数学重构；除第 6 行的核心整除结果外，当前不是对应的 Lean 定理。

| 步骤 | 独立检查结论 |
|---|---|
| `(1)` 乘积整除 `(k-1)! M(n,k)` | 对每个素数选择区间中达到最大估值的项，其余项的素数幂整除与该项的非零差；差的乘积为 `(i-1)!(k-i)!`，它整除 `(k-1)!`。所有项正，整除确实给出大小关系。 |
| `(2)` `M(n,k)` 整除 `choose(n+k,k) A_k` | 用 `p^s` 倍数计数差表示二项式估值。任意长度 k 区间的倍数数目至少 `floor(k/p^s)`；在超出 `A_k` 最高估值的每一层，区间中恰有一个倍数。故二项式至少补齐所有缺少指数。 |
| `(3)` `A_N<=4^N` | 拆成前缀 `a=ceil(N/2)` 与余段 `b=floor(N/2)`，由 `(2)` 得 `A_N | choose(N,b) A_a`。强归纳使用 `choose(N,b)<=2^(N-1)`，而 `N-1+2ceil(N/2)<=2N`；`N=0,1` 分开处理，没有循环论证。 |
| `(4)` 两个阶乘/二项式界 | 有限级数 `sum(1/j!)<3` 给 `(1+1/r)^r<3`；归纳增量恰为 `3/(1+1/r)^r>1`，所以 `r!>(r/3)^r`。下降乘积不超过 `N^r`，得到严格二项式上界，包括 `r=1` 与 `N=r`。 |
| `(5)` `(k-1)!<=(k/2)^k` | 配对 `j(k-j)<=k^2/4`，平方后取非负平方根，再使用 `k/2>=1`。适用条件 `k>=2` 已明确。 |
| `(6)` 相等 LCM 整除差值区间 LCM | 两段分别选择达到同一最大素数幂的项，它们的差位于 `[d-k+1,d+k-1]`，且该差严格为正。逐素数幂给出整除；额外加入 `d+k` 得 `M(d-k,2k)` 上界，参数合法。核心结果已在项目 Lean 中核验，详见第 5 节。 |

常数链逐项成立：若 `k>=2` 且 `d<=8k`，则

\[
L<\left(\frac{3(d+k)}{2k}\right)^{2k}4^{2k}
=\left(36\frac{(d+k)^2}{k^2}\right)^k\le2916^k.
\]

再由乘积下界与 `(5)`，得到 `(n+1)^k<(1458k)^k`，所以 `n+1<1458k` 且 `m<1466k`。严格不等式来源充足，没有用浮点数或负底数开根。

若 `k>=2` 且 `n<=369k`，前段 LCM 上界与后段下界给

\[
\left(\frac{m+1}{n+k}\right)^k
\le\frac{\binom{m+k}{k}}{\binom{n+k}{k}}
\le\frac{A_k}{k}\le\frac{4^k}{k}<4^k.
\]

分母均正，因子比较方向正确。因此 `m+1<4(n+k)`，从而 `m<1480k`。`k=1` 已由两个不同单元素直接排除，不依赖这里的严格除 k 步骤。

作为额外边界检查，审查者用原定义 `math.lcm` 对 `0<=n<=200`、`1<=k<=80` 的 16,080 个参数逐项验证了 `(1)`、`(2)` 的整除关系，同时验证 `A_k<=4^k`。这只是检错补充；一般引理的接受依据是上述数学证明。

## 3. Dusart 原文、严格常数及来源边界

已读取保存 PDF 的完整命题页和相邻证明页（印刷页 242–243），并成功视觉核对；勘误两页也已文本与视觉核对。作者 [出版列表](https://www.unilim.fr/pages_perso/pierre.dusart/Publications.html) 链接到相同论文与勘误；[出版社页面](https://link.springer.com/article/10.1007/s11139-016-9839-4) 对应 2016 在线发表、2018 卷 45 页 227–251。

Proposition 5.4 的输入是所有实数 `x>=89693`，输出为素数 `x<p<=x(1+1/(log x)^3)`，没有假设完整黎曼猜想。源文结合无条件解析估计、已验证的有限零点信息与历史素数间隔计算；本次没有重做这些底层文献证明及大型历史计算。2018-02-26 [勘误](https://www.unilim.fr/pages_perso/pierre.dusart/Recherche/correctif_RJ.pdf) 修改 Theorem 3.5 的公式并给计算代码，没有列出对 Proposition 5.4 的改动。这里接受已发表命题作为外部数学输入，不能称之为项目 Lean 证明。

一个不影响当前调用的源文算式诊断也保留：第 243 页在一般参数 beta 的充分条件中印有分母 `1+eta/(log x0)^k`，但从紧前一行的下界整理，通常应使用 `1-eta/(log x0)^k`。本文需要的具体参数 `beta=1, eta=0.499, x>=4*10^18` 可直接代入原下界：当 `t=(log x)^3>1480` 时，`1-2*eta-eta/t > 1/500-499/1480000 = 2461/1480000 > 0`。因此这个一般辅助条件的符号问题不否定所引用的具体 Proposition 5.4，也不造成 B677 成品的推导缺口；不要据此声称已发现命题反例或已重证整个 Dusart 结果。

严格常数已独立用 Python `Fraction` / 整数幂重新计算：

\[
e<\sum_{j=0}^{8}1/j!+\frac{10}{9\cdot9!}
=8877691/3265920<87/32,
\qquad87^{57}<89693^5\,32^{57}.
\]

指数级数尾部从 `1/9!` 起，之后相邻比不超过 `1/10` 且至少一处严格更小，所以尾部上界严格。结合 exp/log 的标准单调性和互逆关系，得 `log(89693)>57/5`。精确计算为

\[
(57/5)^3=185193/125,
\qquad185193/125-1480=193/125>0.
\]

于是 `m>=89693` 与两分支得到的 `m<1480k` 同时成立时，`m/(log m)^3<k`。源定理即给 `m<p<m+k`；p 严格超过前段所有项，同时属于后段。右端点原本是 `<=` 不造成边界问题。剩余确实只有 `1<=m<89693`，且 `k<=m, 0<=n<=m-k`。

来源文件 SHA256 已独立重算并与成品一致：

- `dusart-2018-explicit-estimates.pdf`: `fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc`。
- `dusart-2018-correctif.pdf`: `bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d`。

普通本地图片工具因 Windows sandbox helper 启动问题失败；之后经已授权的只读文件读取展示现有命题页，并使用已安装 Poppler 将相邻证明与勘误直接渲染到内存，视觉检查成功。Poppler 报告若干非 ASCII 路径下的 nameToUnicode 文件警告，展示的数学公式仍清晰可读；未修改源 PDF 或安装工具。

## 4. 有限证书的算法覆盖与运行证据

### 素数过滤完整

若 `(m,m+k]` 包含素数，则该素数大于前段所有项，故只需检查无素数的后段。令 `q(m)` 为严格大于 m 的首个素数，无素数时 `k<=q(m)-m-1`，并由不相交得 `k<=m`。

审查者没有复用作者筛法或只用已知素数作试除，而是对每一个 `2<=x<=89753` 用全部整数试除数 `2,...,floor(sqrt(x))` 重建素数表；所得 8,689 个素数与 [prime-gap-certificate-89693.json](../primary/prime-gap-certificate-89693.json) 完全相同。逐一重建 `q(m)` 后，`max(min(m,q(m)-m-1))=71`，唯一最大值见证为 `m=31397,q=31469`。因此遗漏 `k>=72` 不会遗漏任何合法反例。

### 三种扫描的关键不变量

- [check_finite_cones.py](../explorer/check_finite_cones.py)：双栈队列始终保存连续的 k 个正整数，两栈顶分别记录对应栈剩余全部项的精确 LCM。转栈逆序与弹出后，已有累计值恰好排除被移除项。扫描 m 时先加入 `n=m-k`，再删除 `n=m-Ck-1`，所以 Counter 的准确起点范围是 `max(0,m-Ck)<=n<=m-k`。重数避免相同 LCM 的错误删除；在跳过素数见证查询前仍更新 Counter，没有丢失后续候选。
- [check_bounded_start.py](../explorer/check_bounded_start.py)：同类队列；只加入新出现且 `n<=369k` 的前段，不删除允许的旧前段。因此 Counter 准确保存 `0<=n<=min(m-k,369k)`，覆盖所有位移。
- [finite_check.py](../primary/finite_check.py)：稀疏表的第 t 层给长度 `2^t` 的 LCM；两个长度为最大不超过 k 的 2 次幂的首尾块覆盖整段，重叠部分由 LCM 的幂等性处理。每个完整整数 LCM 只保存最早起点：存在不相交同值起点当且仅当其最早起点与 m 相差至少 k。因此无需保存所有同值位置，也无需假设同值起点连续。数组上界覆盖全部 `m<89693,k<=71`。

所有比较使用完整 Python 整数，字典的哈希碰撞只触发完整相等比较，不可能把不同整数当成同一键。原定义复算候选碰撞只承担查错，不是以某个有限样例代替全集扫描。

审查者独立重算覆盖计数：

| 范围 | 无素数 `(m,k)` 查询 | 由整数集合查询覆盖的合法三元组 |
|---|---:|---:|
| `k<=d<=4k` | 691,093 | 17,567,901 |
| `k<=d<=8k` | 691,093 | 40,070,219 |
| `n<=369k, d>=k` | 691,093 | 2,061,156,211 |

这些是被数学上覆盖的集合大小，不是逐三元组直接运行次数，不衡量原题完成程度。

此外，本次完整重跑了主任务当前 `finite_check.py` 的默认范围；只将其两个结果写入操作捕获到内存，计算源码不改，未覆盖任何其他任务拥有的证据文件。实际结果：

```text
fresh_full_finite_replay: true
writes_captured_in_memory_only: true
all_71_rows_equal_saved: true
prime_certificate_equal_saved: true
total_interval_queries: 6368203
witness: null
elapsed_seconds: 10.857995599999413
time_utc: 2026-09-07T21:22:29.937829+00:00
```

这排除了全部 `m<89693` 的不相交等长 LCM 相等，范围强于只检查两个部分区域。它仍是 Python 精确计算证据，没有生成 Lean 穷尽证明。

复跑使用的完整只读 harness（在新 worktree 根目录，以 `python -B -` 从标准输入执行）：

```python
from pathlib import Path
from unittest.mock import patch
from contextlib import redirect_stdout
import io, json, runpy, sys
script = Path('research/tasks/B677-Lcm/primary/finite_check.py').resolve()
saved = json.loads(script.with_name('finite-check-89693.json').read_text(encoding='utf8'))
captured = {}
def capture(path, data, *args, **kwargs):
    captured[path.name] = json.loads(data)
    return len(data)
with patch.object(Path, 'write_text', capture), patch.object(sys, 'argv', [str(script)]), redirect_stdout(io.StringIO()):
    runpy.run_path(str(script), run_name='__main__')
fresh = captured['finite-check-89693.json']
keys = ['limit_exclusive', 'max_k_from_complete_prime_gaps',
        'prime_gap_verified_through', 'prime_count', 'total_interval_queries',
        'witness', 'rows', 'script_sha256', 'evidence']
assert all(fresh[key] == saved[key] for key in keys)
assert captured['prime-gap-certificate-89693.json'] == json.loads(
    script.with_name('prime-gap-certificate-89693.json').read_text(encoding='utf8'))
```

三个现存脚本的 SHA256 与各自保存结果匹配：

| 源码 | SHA256 |
|---|---|
| `explorer/check_finite_cones.py` | `f8a88eab194503657e292154dd891bc6880f32fb00b8ce32e47fb34bd650c19d` |
| `explorer/check_bounded_start.py` | `4794f8e27382eb835f413c0a80cbc9c4fcf32c8160f0a5fc6cf337e3e1b1a305` |
| `primary/finite_check.py` | `9e52793725c388235332fef8412d0db165f8e76fe26133ead539665e1d28d338` |

## 5. Lean 当前实际证明的内容

审查者直接运行以下命令，均退出 0：

```text
pwsh -File scripts/lake.ps1 env lean Math/B677/IntervalLcm.lean
pwsh -File scripts/lake.ps1 env lean Tests/B677IntervalLcm.lean
```

版本锁定为 Lean `4.33.1`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。另读过 [主任务统一验证日志](../primary/public-library-verification.log)，其中记录库构建与 7 个 Lean 文件通过；本审查者没有把读取该日志表述为自己重新运行统一全部检查。

当前源码接受的结构结果：

- `interval_lcm_ne_zero`：任意自然数起点/长度的区间 LCM 非零，包括空区间 LCM 为 1。
- `prime_pow_occurs_in_lcm`：非空、各项非零的有限自然数集合中，整除 LCM 的素数幂整除某个集合项。
- `equal_interval_lcm_dvd_gap`：`k>0,n+k<=m` 与两段 LCM 相等推出第一段 LCM 整除闭差值区间的 LCM。
- `equal_interval_lcm_dvd_prefix`：由前一条得到的较弱前缀版本。
- `interval_lcm_eq_range`：区间定义等于 range 索引的 `n+i+1` 形式。
- `interval_lcm_ne_of_later_prime`：后段内有素数见证时，两段 LCM 不相等。

差值端点 `(m-n+1-k, m-n+k-1)` 虽写为自然数截断减法，但 `n+k<=m` 与 `k>0` 保证其分别等于整数式 `d-k+1,d+k-1`，下端至少为 1。`b-a` 是合法正差；非零假设阻止利用 0 的整除特殊性。

[Tests/B677IntervalLcm.lean](../../../../Tests/B677IntervalLcm.lean) 对四个公开定理（包括 range 定义对应）进行可失败的传递公理断言，实际均为

```text
[propext, Classical.choice, Quot.sound]
```

没有 `sorryAx`、未说明的项目公理或对平台未证目标的导入。辅助素数幂引理通过主定理的传递依赖被覆盖。测试中的重叠区间 `(13,6)` 与 `(15,6)` LCM 同为 1,627,920，而中间起点值为 232,560，正确防止把结论误读为全局单射或同值起点连续；这些例子不满足不相交条件，不是原题反例。`by decide` 是有限边界核验，不证明一般部分定理。

审查对应源码快照：

| 文件 | SHA256 |
|---|---|
| `Math/B677/IntervalLcm.lean` | `1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44` |
| `Tests/B677IntervalLcm.lean` | `cfad6066b5306b165f13c425623083e4b9859f1c3ac3470426f665fc29073b51` |
| `explorer/complete-proof.md` | `a3e31f20f6702a56a51828be308b3df749bf64a7d68e5562cac02aac89e5c900` |

## 6. 全部非 Lean 依赖与验收边界

当前完整部分结论仍依赖：

1. 第 2 节的乘积/阶乘整除、二项式 LCM 上界、前缀 `4^N` 上界、阶乘估计和两个全参数常数归约的纸面证明。
2. exp/log 的标准实分析性质、指数级数尾界与严格整数/有理数常数计算；有理与整数事实本次已重算，但未转为 Lean 常数证书。
3. Dusart Proposition 5.4 及其文献证明和历史计算。没有在项目内公理化该命题来伪装 Lean 完整性，也没有重做底层解析数论。
4. 将数学上的有限覆盖论证对应到 Python 实现的人工/AI代码审查、Python 精确整数和 `math.lcm` 的执行语义、素数表重建，以及本次重新运行的有限结果。不存在 Lean kernel 检查的完整有限证明证书。
5. 上述非 Lean 部分与当前 Lean 结构定理的整体组装；当前没有一个已编译定理完整陈述并证明 `d<=8k OR n<=369k`。

标准 Lean 传递公理只说明结构结果的内核依赖；它不替代这些纸面与计算依赖。未使用第二个独立 Lean 内核实现进行检查。本审查是 AI 独立审查，不是人类同行评审；新颖性保持未确认。主任务另告知有公开 AI 研究日志讨论 #677 的若干固定 k 与 offset/valuation 方法，此处没有独立核验这些未读先例，也不以搜索未找到相同常数支持原创性。

没有阻止作为“部分数学结果 + 已证结构引理 + 精确计算证据”交付的异议。可供下轮复用的结果是差值区间整除、后段素数见证排除、两条有限化链及可重跑有限扫描；后续有价值的数学检查应针对仍无界的 `n>369k, d>8k, m>=89693`，或把当前依赖正式转成 Lean 证明。仅微调常数不会关闭全题。

## 最终快照核对

初稿于 05:30:20 写好后，终检检测到成品哈希变化。主任务说明变更为论文链接改用远端来源、增加 [SOURCE-MANIFEST.md](../explorer/sources/SOURCE-MANIFEST.md)，以及测试加入 range 对应定理的公理 guard。审查者随后完整重读现稿与来源清单，并重新运行 `Tests/B677IntervalLcm.lean`，退出 0；四项 guard 均通过。上表纸面成品哈希已更新为当前快照，Math 源码哈希未变。

尝试仅反转两个链接和末尾说明来重建旧字节哈希没有匹配，具体原因未定位，因此不把这种尝试当作精确差分证据；最终采用完整重读当前数学正文并复核全部公式的方式，仍未发现数学缺口。原先接受的纸面快照哈希为 `3268eec51e570eaea81da34f15b85dae32e164a4306392afabc8e668bfeaefa6`，保留在此便于追踪。未重跑数学源码未变的有限扫描；其全量重跑证据仍是第 4 节的本次实际结果。
