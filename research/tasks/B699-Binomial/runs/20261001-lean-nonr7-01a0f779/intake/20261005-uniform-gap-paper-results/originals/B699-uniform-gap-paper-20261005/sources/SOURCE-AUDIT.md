# SOURCE-AUDIT — 固定来源与本轮阅读范围

## 1. 私有任务来源

唯一私有输入：`B699-20261004-uniform-gap-paper-1c862c44.zip`，255,907 字节。

SHA256：`83eaa61a344ffaf30530a8182c6eecfbadde0605214a1d81748393aebbf09b4e`。

先完整阅读 TASK.md、CONTEXT.md、SOURCE-INDEX.md，再读取两份 θ/Dusart 依赖笔记、实际 Lean 接口、固定 mathlib Chebyshev 源码和提供的 Dusart PDF。已核对 CONTENTS.json 的全部 25 个声明成员及无额外未列文件；具体字节/SHA 在 INPUT-BINDING.json。该核对仅为来源身份，不是有限初段独立验收。

## 2. 新增公开原文

以下均是公开论文原文，不是搜索摘要、二手综述或用户仓库内容。本轮使用网页 PDF 解析，并对公式页/表格页作截图阅读。**未在容器获得新增公开 PDF 的原始字节，因此这些来源没有本地 SHA256，也未把它们伪装成 ZIP 中已保存的证书。**

| 编号 | 固定地址 | 核对的主要位置 | 用途 |
|---|---|---|---|
| B18v2 | `https://arxiv.org/pdf/1511.02032v2` | pp.3–4 定义、Prop.2；p.13 Eq.(6.2) 及说明；相关参考文献 | 主路线的 EF 与有限 F；不用整份大数值表 |
| B16v4 | `https://arxiv.org/pdf/1410.7015v4` | p.2 正核/Fourier 表示；Prop.2；p.7 Lemma3 与 N 证明；pp.10–11 的 Theorem1/表格仅作版本和公式风险审读 | 核归一化、EF 上游、N/Z；不使用 Prop.3/Theorem1 的特殊尾估计 |
| B16v4-HTML | `https://arxiv.org/html/1410.7015v4` | 定义、Prop.2、Lemma3 与来源跳转 | 辅助对照；数学式以固定 PDF 页阅读为准 |
| PT20v1 | `https://arxiv.org/pdf/2004.09765v1` | p.2 Theorem1、§2 方法和完整性说明 | 有限 RH 覆盖 H=589824 的无条件纸面依据 |
| B18-meta | `https://arxiv.org/abs/1511.02032` | 版本历史与出版信息 | 确定 v2 2017-10-22 |
| B16-meta | `https://arxiv.org/abs/1410.7015` | v4 2022-05-25 与修正说明 | 不混用 2016 原版和修订版 |
| PT-meta | `https://arxiv.org/abs/2004.09765` | v1 与 DOI | 固定 2020 原文和 2021 发表关联 |

提供的 D2010 PDF 为 `evidence/papers/Dusart-1002.0442v1.pdf`，其固定公开地址是 `https://arxiv.org/pdf/1002.0442v1`。本轮重读 p.4–5、p.8、相关 Table6.3–6.6 和 bibliography；此原件实际在唯一 ZIP 中，233,779 字节，SHA256 `3f11eca84613ad00e6a447f99b318d5c3d76e360283efcc6d3eebdda25ff3923`。

## 3. 两个必须显式处理的来源细节

**归一化。** B16v4 的 η 使用 c/(2ε sinh c)；B18v2 所打印的 η 系数大一个 2，但 λ 同样由 η 积分定义。主证明始终使用 η/λ，等比例因子抵消；不能把 B18 的 η 和 B16 的 λ 混接。PROOF §5 从一个固定归一化推导正权平均与显式公式所用的 ℓ 比值。

**尾界版本。** B16v4 Theorem1 的 E₂ 打印形式与其 Proposition3 所给尾界存在需要解释的因子差异。本轮不以省掉 log(3c) 的读法进行优化，也不宣布旧论文表格错误。直接重证所需高处核界后，整个特殊尾项命题被移出主依赖。

D2010 的表号交叉引用问题、0.00002758 不能单独推出 1/36260 的精确数值问题，以及 submitted [7] 原件缺口，分别保留在 DEPENDENCIES §6 与 PROOF §13。没有用新的已发表论文名称为缺失的旧 [7] 自动背书。

## 4. 没有取得或没有执行的材料

没有取得 F 的完整筛法/舍入证书、RH-H 的短前缀严格符号及完整性证书、γ<5000 倒数和的完整证书；没有打开声称在本地 D 盘的材料，没有取得原完整仓库、原对象闭包或旧大型父证据包。

Schoenfeld 的固定相对素数间距路线曾作为候选比较，但相关原始定理页没有成功取得，未据二手引文使用。Barner、Rosser1941、Rosser–Schoenfeld1962 等上游特定原件未全部取得，详情见依赖表。

本包没有声称公开 PDF 的作者运行等于本项目 kernel 运行；也没有声称正文中的有限 RH 是尚未证明的 RH 猜想。
