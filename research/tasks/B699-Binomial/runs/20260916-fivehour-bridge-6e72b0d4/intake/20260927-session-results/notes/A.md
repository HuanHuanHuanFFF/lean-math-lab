# A / i9：20260927 主包与独立补充

## 口径与来源

本记录只整理 Pro A、固定 `i=9` 的本批材料。主包 `A-i9-fixedG-ALL-EVIDENCE-ZIPS-20260927.zip` 含 9 个直接 evidence ZIP；`B699-ProA-EARLY19-20-Q8-2D7-S5-FRONTIER109-20260926-evidence.zip` 是另一个独立来源根，单列为 A-supplement，不把它按文件名并入主包或断言它已覆盖主包全部阶段。主包原索引、9 个阶段及补充包的逐项成员链接见[ROUND_INDEX](../ROUND_INDEX.md)，主包摘要见[INDEX.md](../objects/7a/7ada999482afdbbb1b1d74afe86eda02bd7010d80124a80b6e2e72fe4eff4ee7.md)。

本轮仅做来源整理和导航。没有执行附件代码、没有复跑作者证书、没有 Lean 或独立数学核验；以下“结果”均是作者 `REPORT/HANDOFF` 的登记。

## 直接交付分类

主包按其 INDEX 的顺序为 A01--A09：`TAIL7-8-9/120`、`TAIL8-COST4/119`、`EARLY2-S5/106`、`MIXED-COST4/104`、`SIX-COST4-COST3/77`、`T-PREIMAGE-S5/56`、`T10-S5-FIXED4/50`、`LATE10-TAIL8/43`、`S5Q-TAIL18/34`。每阶段的原 `REPORT/PROOFS/HANDOFF` 保留在 `ROUND_INDEX` 的对象链接中。

A-supplement 单独为 `EARLY19-20 + Q8-2Δ7 + state1646 S5 / FRONTIER109`，其[报告](../objects/75/75c431775f19519ce8ac959d2c53217cd25b47bcdbb3013df5c857b31d5ef138.md)、[交接](../objects/b5/b57647e19bbcfa8d67d5eb86ea89f3fb6d267bbcfdebfe7ab10d23f9284bc1db.md)、[失败边界](../objects/5f/5f1adc14bf59eb8a38a554eb7bebaafb95b0acd9c3ddb04c91ba55277e8baa56.md)和[来源采用](../objects/81/81ea2502d2152ea3e9b4fc028ee9780cee0d2082ecb25a66fa4dfd5fb22c0cf6.md)独立保留。它以作者交付的 123 状态前沿为基线并报告到 109；主包 A09 则从 FRONTIER43 报告到 FRONTIER34。两条前沿不能直接相加或按名称推定为同一版本。

## 最新主包摘要

A09 的作者交接称 `FRONTIER43 → FRONTIER34`，删除 9 个必要资源状态：`1785,1787,1856,1865,1900,1929,1965,1984,2015`。固定同一 K152 非零 `G` 的 `COVER8`、`E=0`、`D(G)=305`、`h≥125`、`V≤55` 保持；最低 `h=125` 状态为 1794。作者明确写明没有 `COVER7`、`H126`、原 `n` 高度界、原输入有限化或严格 NC 下降。[A09 报告](../objects/57/573d19b9c502cc41e5dfac65e6c4c1583e82b438c9638ed274ceae228c8b1ef7.md) · [A09 交接](../objects/f0/f0572c53b5a17b93c92e8fbf1e52c72474ecfd194782781ae9188bc7248a148e.md)。

作者下一项是 1794 的完整低原像与自身 S5 商源：七个低原像缺口、788 个不饱和组及自身商核尚未完成，不能移植其它状态的零核。主包仍保留 `n,j,k,J,g,β`、`α` 指数、完整粗素数支持/指数、实际 `G` 系数与分解等无界量；证据等级是作者纸面、确定性计算和同作者接收，不是 Lean 或外部独立审读。[A09 失败边界](../objects/ea/ea0244dd8a86e7a362f600c03a6db697cd8a5230061df49d2093d2538826e669.md)。

补充包作者另称 14 个状态由 123 减至 109，最低仍有 `1643` 的 `h=113`，所以没有 `H114` 或 `COVER7`。[补充报告](../objects/75/75c431775f19519ce8ac959d2c53217cd25b47bcdbb3013df5c857b31d5ef138.md)中的 1646 商核及 q19/q20、q8 证书只能按该补充的采用前置阅读，不能静默并入 A09。

## 归档边界

主包与补充包的外层 SHA、原文件名、大小、来源位置，以及每个成员的 `archive_sha256`、原始成员路径、大小、成员 SHA-256、`kind`、`retained_path` 均以 `SOURCE_RECEIPT.json`、`MEMBERS.json/tsv` 为准。仓库只保留普通对象和映射；原 ZIP 留在 `E:/Download` 外部位置。恢复时保持外层到嵌套 ZIP 的父链和原始成员路径，不能用重压缩目录替代原包字节。
