# SOURCE_ADOPTION · 本轮实际采用与证据等级

日期：2026-09-17。交付范围：i5/H02⁺ 的 q4 非中心缺槽绝对高度，及旧 D6 两个尾类的安全转移。所有数学源按下面列出的准确版本采用；作者结果、有限证据、出版输入与完整形式化分别记账。

## 1. 唯一全局接续入口

用户上传 `OVERVIEW-2026-9-17.md`，本轮已读取。采用其原题、NC_i、s_i/q_r 完整幂约定、同一输入要求、R7状态以及D6尾类范围。没有把模板数或几何类数当成原题有限反例数。SHA-256：`360cbf89666044cd0f2bd21ff2a955f0c8fc2c53bb9f5ab40763c08894961c11`。该总览是截至其记录时的状态快照；本轮新结果留在本交付，不修改仓库总览。

本轮主定理的粗幂分配、互素、alpha形状、i6桥和高度收口在PROOFS中重新写明，不以“总览说已完成”替代这些步骤。

## 2. 上一轮三底绝对高度包：只采用实际需要的部分

输入：`B699-ProD-three-base-absolute-height-20260917.zip`。
SHA-256：`eef2235bc58ea185aa276f2a15afd43dbab384ac602ca96509590f591f8154e5`。

原包中实际读取：REPORT、PROOFS、SOURCE_ADOPTION、HANDOFF、FAILURES、EXTERNAL_THEOREMS，以及相应有限证据/接受代码。下列原成员按字节复制，身份见 `sources/PROVENANCE.json`：

- `sources/previous-PROOFS.md`：端点八点曲面的全次数分类、Z0、解析收口的来源；
- `sources/previous-geometry.json` 与 `sources/previous-verify.py`：端点16个类、六因子、交数、原点/中心阶的冻结数据及整数工具；
- `sources/previous-SOURCE_ADOPTION.md` 与 `sources/previous-EXTERNAL_THEOREMS.md`：旧依赖及出版定理版本，不表示本轮重验了其中所有历史材料。

本轮实际重新计算端点16类的全部有限几何接受，输出在 `evidence/previous-targeted-replay.json`，最终接受也再次调用此定向部分。新接受复用冻结代码的多项式/有理数/端点检查函数；**不是从零独立实现，也不是外部独立数学审读。**

对旧纸面链定向复核了：全次数d界、所有不可约曲线交数而非样本检查、Reider适用、在原合法点非零的有界有理核基、真实变系数U/V的高度。没有发现这些接口中的断点；这个结论是作者级复核，不是证明已无可能遗漏的保证。新主定理不直接把旧CP-ABS的结论当黑箱，而是重新给出补点/近侧构造和同一解析收口。

## 3. 新增构造与有限证据

新端点：在旧S0上额外爆破T=(0,2)，N0中的`-(8h+1)E_T`与典范类抵消后得到T处8h阶。新例外曲线、其余曲线的T重数、交数下界以及N0平方在本轮纸面证明中逐项计算。

新近侧：缺槽1的八点配置，全次数d≤27先由纸面证明；随后完整枚举36个类、1198条Taylor条件，并以非零整数核和模65521精确秩确定全部核。六因子的绝对不可约、合法非零、Z1和所有q2槽精度均由新标准库checker接受。模秩没有被反向当作特征0核存在证明。

`code/probe_near_slot.py`、`code/near_roots.py` 是SymPy发现/生成入口；`code/assemble_certificate.py` 可从保存的发现输出精确重新装配完整证书；最终 `code/verify.py` 只用Python标准库。发现程序的布尔不可约标志、浮点判定或扫描上限不承担验收。

## 4. 外部出版输入：本轮实际再次核对的版本

详细合同见 `sources/EXTERNAL_THEOREMS_THIS_ROUND.md`。本轮读取并截图核对了：

1. Takeshi Kawachi, *On freeness theorem of the adjoint bundle on a normal surface*, arXiv:alg-geom/9603022，第1页对Reider经典定理的明确陈述。应用于本轮的光滑复射影爆破曲面和nef整数除子N，N²≥5；任何障碍有效除子需有N.E=0或1，而本轮对每条不可约曲线证明N.C≥2。
2. J. J. Bravo, C. A. Gómez, F. Luca, *Powers of two as sums of two k-Fibonacci numbers*, arXiv:1409.8514，第4页Theorem 2所述Matveev乘积减一显式下界。本轮保留变动有理底U/V的对数高度；n/(n−2)−1非零；常数和域次数按本轮计算。

没有重证Reider或Matveev的原始证明，也没有声称读完其原始发表全文。两份研究论文中的准确陈述是采用版本；不是用搜索摘要、博客或软件输出替代定理。

## 5. 可选旧中心槽消费者：单独登记，不暗入主链

合同：在NC5、H02⁺及合法区间下，`gcd(q4,j−2)>1`。

本轮通过GitHub只读工具实际读取原证明的§0、§4–5及相关边界：

- 仓库：HuanHuanHuanFFF/lean-math-lab；
- 固定提交：`f232982bc5d27ba4de68cc3abb916796f771dec6`；
- 路径：`research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260917-pro-results/dependencies/489628d85193/PROOFS.md`；
- 返回blob SHA：`014e8de35940310e955ec7d64c50d7762f2efc45`。

该原证明将缺中心分支归到小g/纯幂行，再用目标5 QIG、LTE和有限末端；**本轮没有重跑其旧QIG证明及41行/12末端证书**，按冻结作者纸面/旧确定性证据等级采用。`sources/CENTER_CONTRACT.md`是本轮摘要合同与定位，不是该原件的精确字节副本。GitHub工具已读取；另外的原始URL容器下载没有成功，不据此声称完整原文件已附入包内。

此合同只用于“任意缺槽（含中心）都有界、无界尾部必须五槽非空”的附加推论。主MS-ABS四个非中心缺槽以及其i6转移不依赖该旧合同。

## 6. 明确未采用、未核验与未执行

主链不采用NC3、其他指标的s_i、旧单位窗口完整链、QIG/SIXG有限末端或d6消费者。没有等待或读取A/B/E的新交付。没有重跑全部历史材料。

本轮证据等级：作者纸面推导＋新确定性有限代数接受＋明确的出版定理输入；没有Lean、传递公理审计或外部独立数学审读。新接受代码不形式化几何曲线全称论证、Reider、Matveev，也不枚举n<2^(2^513)的原题底部。

没有仓库写入、提交、推送、PR、发布或其他会话任务执行。没有新增完整指标或原题反例。
