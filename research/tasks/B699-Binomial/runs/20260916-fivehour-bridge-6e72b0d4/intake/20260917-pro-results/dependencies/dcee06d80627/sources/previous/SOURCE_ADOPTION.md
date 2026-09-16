# 来源采用与本轮状态

## 实际读取

1. 用户附件 `OVERVIEW2026-9-16-11.md`：完整读取。按§1记录R7；平方b=3、单位窗口等采用其报告状态，不重跑其数学或Lean。§3A的新A/B/D仅保持“作者交付待定向核验”级别。
2. 本会话上一份 `prime-radix-two-digit` 的 REPORT 与完整 PROOFS：原字节副本在 sources/previous-*.md，原ZIP在 sources/previous-prime-digit.zip。
3. 总览所指的新B `.../intake/20260916-pro-results/sources/ProB/notes/PROOFS.md`：GitHub连接器实际读取。先在总览五小时数学提交67b494c...尝试该后补路径，返回404；随后按总览同一分支 huan/b699-fivehour-20260916-6e72b0d4 取得原文。内容blob为 `a611c30e22216b46e4080bfaaabe8f9e80a0b188`。完整§5—6及ROW3证明已读取。本轮重写ROW3和两位进入条件，不依赖该稿E4/E5分类正确性或其未执行的有限证书。没有查询其他正在运行的工作。
4. 官方mathlib文档中 `Nat.factorization_factorial`、`Nat.factorization_choose` 的公开表述：本轮联网核对，数学证明在新PROOFS §1.1重写；并未运行Lean，也未把网页存在作为本轮定理内核证明。

## 定向公开来源

- `https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html`
- `https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/huan/b699-fivehour-20260916-6e72b0d4/research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260916-pro-results/sources/ProB/notes/PROOFS.md`

GitHub接口可读，但尝试通过容器下载对应raw文本时DNS失败，原始错误见sources/remote_read.json。
所以本包没有假称保存了新B整篇原件；固定blob定位、实际采用范围与新自足重构分别记录。
新B的两源核刚性只作为选路背景，没有进入新证明依赖。

## 采用闭包

NC3的完整进位/分母取消 → α形状、4|n和严格半区间 → 三窗口整数性与ROW128 → ROW3；
同一输入的P进制无进位 → 两块表示；ROW3排除短间隔 → 本轮纯整数KERNEL → Common。

KERNEL不使用NC、素性或ROW3。它只用两个弱整除及T的奇性、块系数界、间隔下界。
BLOCK在P已整除第一二项式的通常分支中直接调用KERNEL，不调用ROW3。
没有新增BFT、Padé、Masser、BEG、椭圆曲线、对数形式或素数分布依赖。

## 完整性

sources/SOURCE_MAP.json逐项列出本地原始输入与原字节副本的SHA-256；复制后未改旧原件。
仅在新的 /mnt/data/b699-odd-radix-closure-20260916 内写本轮成果。未修改Git仓库、未发PR或push、未运行旧接受全链。
