# 实际来源与证据采用

本轮只接续i9。本文件登记实际来源、准确采用范围及没有取得的材料。文件哈希是字节来源核对，不是旧数学证明的独立验收。完整机器清单见`evidence/source_manifest.json`。

## 冻结文件（旧大证据不重复打包）

### OVERVIEW
原件：`/mnt/data/OVERVIEW-2026-9-17.md`
SHA256：`360cbf89666044cd0f2bd21ff2a955f0c8fc2c53bb9f5ab40763c08894961c11`；25738字节。
唯一项目总入口；本轮只写增量，不覆盖它。

### C3_ZIP
原件：`/mnt/data/B699-ProA-i9-cubic-source-consumers-evidence-20260917.zip`
SHA256：`61ca2267be0d29b9565e15f30d34c553fc17a9fb12b7619fec651a848edd6ca2`；3230597字节。
上一轮完整作者证据；只读取相关文本及9.5KiB源掩码，不重跑旧全链。

### C3_PROOFS
原件：`/mnt/data/B699-ProA-i9-weight7-20260917-c82e5a17/PROOFS.md`
SHA256：`3ffb35f971ee4ca821c024e75202631361fe509d38b9cfcd4d4c58e35cdd9d2b`；19542字节。
完整读取。采用C3-L200、源重数容量及冻结接口；C3-L85在本轮重新展开证明与预算。

### C3_HANDOFF
原件：`/mnt/data/B699-ProA-i9-weight7-20260917-c82e5a17/HANDOFF.md`
SHA256：`27c24c96b0536547cf60eb0432ee882c0fffeeae47156016525e5e5628eb91da`；3536字节。
完整读取；1357/1303源掩码及旧43前沿。

### C3_FAILURES
原件：`/mnt/data/B699-ProA-i9-weight7-20260917-c82e5a17/FAILURE_BOUNDARIES.md`
SHA256：`765ee5ef2b95f485c34a045967ca68a0fe524064d8b012c9550d5eb33711fd40`；2994字节。
完整读取；不重复通用乘子失败构造。

### W6_ZIP
原件：`/mnt/data/B699-ProA-i9-weight6-closure43-evidence-20260917.zip`
SHA256：`d870040b47b93beea4b475fb715b7d74ca279160f79e6739ec00bfd78e9316b9`；387916字节。
冻结W6及其来源，未重放49,040旧配置。

### W6_PROOFS
原件：`/mnt/data/B699-ProA-i9-next-9ea5d61e/PROOFS.md`
SHA256：`4219988b8f6f98e091a7b97edadbbdb206bdd9b528b156f9b76509ebf33d4411`；19462字节。
§0–2冻结前沿和接口；没有声称本轮重新接受整条W6。

### S14_ZIP
原件：`/mnt/data/B699-ProA-i9-source14-closure-evidence-20260917.zip`
SHA256：`6c56adef3d2d270f00d5606e2fb302ab373352f698da9d786ecae54ea4e44415`；58208字节。
冻结S14；未重放12/13源配置。

### S14_PROOFS
原件：`/mnt/data/B699-ProA-20260917-source13-7c2a91e4/PROOFS.md`
SHA256：`572a82261109c4caf3c13d433624e1eb0d5fde2741815db22469f154bff3cbb1`；20237字节。
准确采用S14接口；§0第29行保留K152因子预算公式。

## K152必须保留的G本身上界

同一会话早先通过GitHub读取的固定原件：
`HuanHuanHuanFFF/lean-math-lab`，commit `f232982bc5d27ba4de68cc3abb916796f771dec6`。
路径：`research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260917-pro-results/sources/ProA/07_QUADRATIC_CLOSURE50/B699-ProA-leading-linear-20260917/notes/PROOFS.md`。
Git blob SHA1：`e4b0b5fa9b79a70a104dc40f31549e2ec9f49269`。该SHA1不是本轮取得文件的SHA256。
准确输入为G加权次数≤305、23562个允许单项式、每系数≤2^1242694；不是从“每个因子范数<2^1243166”反推G范数。未在本轮新增远端读取，也未恢复G。S14原件第29行保留`1242694+15+305+152`的原预算计算。

## 本轮新增与旧链的界限

新增：C3-L85的完整局部商/高度论证；联合Mahler计账43→39；Q8-L21四次子族；EDGE39。
冻结：P/E、六窗粗块、BC/S14、Q2/W6、C3-L200、K152及它们原有的出版依赖。未独立重放局部立方桥、H013、C31、旧有限末端或旧大矩阵。
新接收只验证本文列明的有限整数义务；维数逃离、全部完整素数幂转移、结式以及Mahler论证由新PROOFS承担。两个公式互查不等于外部独立数学审稿。

## 经典外部原文

Shabnam Akhtari / Jeffrey D. Vaaler，*Lower bounds for Mahler measure that depend on the number of monomials*，arXiv:1810.12413v1（2018-10-29）。
实际核对PDF解析正文第1页(1.2),(1.3)，以及第3页多元定义。链接：`https://arxiv.org/pdf/1810.12413`。
这里只采用经典Jensen/系数不等式；没有消费论文更强的Theorem1.1/1.2来替换本轮待证步骤。二元系数界与全部计数在新PROOFS中证明。
截图0/2页实际请求返回Cache miss；HTML亦失败，容器下载DNS失败。因此没有声称视觉核对、下载到PDF字节或生成PDF哈希。正文未使用图片、图表或视觉测量。

## 可选新诊断

`code/source_rank_gate.py`显式读取旧ZIP中`B699-ProA-i9-weight7-20260917-c82e5a17/evidence/weight7_residual_masks.txt`，只重新诊断1303个残余源掩码在18列补空间中的有限域秩；不参加M39接收，不改变任何源集合数。
初始诊断文件为`evidence/source_rank_gate.json`；可移植入口重放见`logs/optional-rank-portable/`。这两份记录属于同一个诊断的原运行与入口修订检查，不是两个数学成果。

本轮没有Lean、外部独立全篇审读、仓库提交/推送、PR、合并、任务转派或其他会话新成果。
