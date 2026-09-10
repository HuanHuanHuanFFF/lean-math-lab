# 来源、依赖与核查范围

## A. 固定启动快照

仓库：`https://github.com/HuanHuanHuanFFF/lean-math-lab`。

PR：`https://github.com/HuanHuanHuanFFF/lean-math-lab/pull/7`，已合并，merged_at=2026-09-10T07:29:45Z。采用固定main `784ec1d26f33fbb303ab0b0c14ac35919f03d902`，不随之后main更新。已核准发布头与squash main的完整tree一致，源be579…到发布头仅新增Leader交接元数据。

证据映射在startup_snapshot.json。该文件是把本轮工具观察字段整理成可机读记录，不冒称GitHub原始完整response。重放时check_inputs.py只离线核对原件字节和树，不会声称重新在线确认PR。

CLI fetch失败日志保留为outputs/git-fetch.log（DNS，exit128）。GitHub连接器读取成功。五delivery树的443个非ZIP成员从原件重算匹配固定main；两个Work报告blob在来源与固定main一致，完整Work树采用Leader旧整合核查。没有重新执行Lean、历史生成器或CI。

## B. 原字节输入

`input/B699-research-context-20260910.zip`：17417653字节，SHA256 `84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5`。

实际读取CURRENT_STATE.md、SOURCE_MAP.md及按所选路线使用的原包报告／推导／源码。原件内旧任务只作为历史文件保留，不作本轮指令。附包内7个originals ZIP和ARCHIVES.json的11项恢复均核对原字节、长度、SHA256及Git blob。共享包已包含它们，未在新ZIP重复再存一份展开副本。

核心采用关系：

| 原包 | 本轮采用 | 不扩大之处 |
|---|---|---|
| four-index-closure.zip | 完整赋值／位置权重思路、指数块、CRT及末端见证算法 | 不把19/22/24/25记作新增，不复跑其整套证书 |
| asymmetric-pade.zip | 原非对称近似消费者与有理区间实现、固定种子池 | 不把旧11/16/21高度记作本轮新增；新13方向阈值另行重证 |
| seven-index-closure.zip | 三窗口与完整双幂候选思路、失败边界 | 不覆盖或改写旧七项交付 |
| low-index-bounds.zip | 早先绝对／非有效有限性与方法障碍背景 | 不把非有效常数当数值界 |
| shifted-slope.zip | 核对i3斜率族已有结果 | 未在本轮重新宣称该族为新增 |
| prime-input-optimization.zip | 大指标依赖背景 | 本轮13链不使用其素数输入 |
| two-prime-finiteness.zip | 接收清单字节／Git树核对 | B686内容不作为本轮数学依赖 |

adopted_code.json记录6份原字节源码的member、目标路径和SHA256。生成器与检查器的改写在新code文件，不覆盖adopted原字节。

## C. 唯一采用的外部论文及其精确接口

M. A. Bennett, M. Filaseta, O. Trifonov, **On the factorization of consecutive integers**, 作者稿日期2007-02-26。

原作者地址：`https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf`。

实际打开PDF文字并查看关键页图像（不是只读搜索摘要）：印刷页5–8的Q/E、u₁/u₂、常数与G定义，印刷页10的Lemma4.1，印刷页11的Proposition5.1。最后又查看页5、6、10、11复核。没有使用OCR。

采用内容：

1. **Lemma4.1**：相邻两个次数u=dm、dm−1的近似多项式绝对值分别小于明确C₁、C₂乘Qcal^(dm)、Ecal^(dm)。本轮逐个检查C₁,C₂<1，两个δ都覆盖。
2. **Proposition5.1**：G≥L₁^(dm)，条件m>m₀。只使用下列7行，L₁显示小数按精确有理数解释；没有替换成无具体阈值的极限增长常数。

|c,d|L₁|m₀|
|---|---:|---:|
|3,2|1.5395|138|
|5,4|1.3098|50|
|7,4|1.6219|60|
|2,1|1.9377|150|
|5,3|1.5454|86|
|7,5|1.4135|74|
|8,5|1.5407|53|

原定理G中的指标对应 `binom(2u-r,u) binom(cm-u-1+r,r)`；两种u都核准。多项式整数展开、相邻行列式非零与从这些估计到本题非对称cut的消元，另在PROOFS第3节给出，并用小实例做精确代数检查。没有把有限代数测试当作无限恒等式的证明。

本轮不采用BFT Theorem2.1的旧有限例外表，不采用Corollary2.3未数值化C₀，也不需要Dusart、EEES、Matveev或额外素数分布假设。新cut共同阈值是明示2^8191；任何常数检查失败都会阻断该cut，而不是降低阈值或跳过一行。

原论文整体出版证明没有在本轮重做或Lean化。核准原文假设与页表，并不等于独立同行评审。本次不额外保存一份声称新下载的完整PDF；原用户输入包中的文件照原字节保存。

## D. 两种精确实现与独立性的含义

第一常数检查算法是采用的旧Fraction区间实现：atanh正级数尾界、平方根夹逼、beta积分展开。

第二常数检查算法是本轮新写：整数定点网格10^32向外舍入，−log(1−u)120项正级数与余项，整数二分平方根，带符号多项式逐项反导数。它不导入第一实现。两个算法都必须检查同一个明示出版接口；数学输入错误不会被“两个PASS”自动修复。

有限方向图检查用全部2048方向而非主设计的分支剪枝；CRT检查器解另一余因子，分别重建完整范围与最终颜色并集；末端直接检验原始整数整除及确定性素性。全部来自同一会话，不声称另一独立AI或人类审稿。没有Lean运行。

## E. 新颖性与来源署名

新的组合贡献是11条方向阈值接入13的位置权重、碰撞完整分支、7/10大幂消费者及其完备末端连接。Padé框架、相关出版界、三窗口、指数块和CRT旧工具明确保留来源。没有进行优先权或全球进展调查，不作“首创”“领先”认定。
