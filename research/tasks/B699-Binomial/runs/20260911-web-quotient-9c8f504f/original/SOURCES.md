# 来源、采用关系与核查范围

## 冻结输入

- 用户原ZIP：`input/originals/B699-R13-Pro-context-af3006e0.zip`。
- 26,176,196字节；SHA-256：`7afcc3b3d51c45fa0ae44030bdb2dd0932d0f9b5b2975f12de09734237e7aa1f`。
- 顶层CURRENT_STATE、SOURCE_MAP、TASK_PROTOCOL已读；prepare_context.py已实际运行，但原包内旧研究任务不作为本轮新增指令。
- 原ZIP中的i13归档SHA为`ad35779eec77c3a325de441da28698719db096437c3abbdaec79226e3e2d5d0e`；Padé三项归档SHA为`4edad4264faeafedac9c169693257d1d47a12537fe8cc0b4169374d3d51f76d9`。
- i13归档内保留的旧共享ZIP SHA为`84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5`。

`code/check_sources.py`从最外层ZIP逐层读入实际成员、核对用户清单及本包采用字节；不依赖机器原工作目录，也不运行旧数学全链。

## 所采用的旧数学

1. `shared/originals/shifted-slope.zip` 中 `B699-shifted-slope-research-20260909/REPORT.md`：i=3的4|n、两条宽松窗口整除及n≤10000的完整证书。第1项前置已在新商证明中重新展开。旧脚本与结果只绑定，不重新计算。
2. `shared/originals/asymmetric-pade.zip` 中 `B699-asymmetric-Pade/results/refined_profiles.json` 与i13的 `input/i13_cuts.json`：提供读取的有限冻结余因子边。本包`input/frozen_cuts.json`是按列表拼接的新派生数据，不冒称原文件原字节。检查器直接重建相同列表。
3. i13的 `notes/PROOFS.md` 第3节：旧非对称多项式、相邻行列式、BFT估计的消费者。新自由次数消元由本轮给出。
4. 旧有理区间助手原字节保留于 `code/vendor/rational_intervals.py`；第二实现的助手函数体从i13的独立检查器提取，函数体逐字节绑定，新增文件头说明该提取。二者都不是本轮新发明；新证书的公式、阈值和清分母接口由本轮实现。

## 外部原始文献

M. A. Bennett, M. Filaseta, O. Trifonov, *On the factorization of consecutive integers*, author manuscript, February 26, 2007.

原文：`https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf`

采用：Lemma4.1（印刷页10）、Proposition5.1（印刷页11）及方程(2.8)。实际看了零基PDF页9、10的页面图；表项(25,17,1.5540,582)与严格m>582核对。页面10的一次截图超时后原页重试成功。没有依靠摘要，没有把论文证明重标为Python/Lean已验。

不采用：负z延伸、任意c/d的未给出数值阈值、Corollary2.3的隐含C₀、曲线整数点的定性有限性。没有新增解析素数分布依赖。

## GitHub启动

只读GET：

- `https://github.com/HuanHuanHuanFFF/lean-math-lab/pull/8`
- `https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/git/commits/af3006e0fa696e9ad113450b3448e84bf304ba31`
- `https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/git/commits/aafecac7192f33215368489ca9b09b98c0279308`

两固定提交的树SHA均为`4fdb45494babf0492899a6cb5f38db38eba40568`。仅记录实际元数据和树对象一致，不宣称重审整个Work树或运行CLI fetch。没有读取新的进行中研究。

## 探索性输入和可重现范围

- `input/frozen_candidate_pool.json`为冻结旧种子生成器的实际输出；仅供浮点诊断，不能供应接受链的数值常数。
- `input/bft_grid_rows.json`为旧探索表的显示数据，亦仅供诊断。接受链单独使用整数`15540/10000`与582并核对原表。
- 有限曲线与MILP、定向种子搜索和负z探针均有显式脚本、输入与真实输出。便携版本从本包相对路径取数据，不要求原机器目录。
- 本轮没有人类审稿、第二模型审稿或新颖性调查。相对旧包的新增性不等于世界范围首创。
