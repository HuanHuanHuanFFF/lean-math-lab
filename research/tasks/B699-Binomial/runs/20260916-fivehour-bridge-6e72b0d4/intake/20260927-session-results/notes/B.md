# B / i3：20260927 会话 12 个直接阶段包

## 口径与来源

本记录只整理 `B699-ProB-session-all-evidence-zips-20260927.zip`。外包的[INDEX.md](../objects/8e/8ed548e967954830dd9b595933b500c974ae2a00cc67f2ade45b63c0660cf3e1.md)和 12 个阶段的 `REPORT/PROOFS/HANDOFF` 见[ROUND_INDEX](../ROUND_INDEX.md)。B 的外包清单顺序保留为来源顺序，不把它解释成研究时间线。

未执行附件中的 `verify.py`、`consume.py`、`replay_archive.py` 或发现脚本；没有 Lean、外部独立数学核验或完整 i3/B699 验收。下述前沿是作者登记。

## 阶段分类

12 个直接包按原清单分为：`CARRY2-NEAR`、`K3-NEG-B0-T2`、`K3-T0-HENSEL`、`K4-GENERAL-SLOTS`、`K5-SLOTS-CLOSURE`、`K6-TERMINAL`、`M1-CARRY-MULT`、`M2TOP-LCM`、`M2ZERO`、`TWOPP-DIGIT`、`U1-LINEAR-SLOTS`、`ZERO-SPLIT`。每包的原文件名、容器 SHA、成员数和普通对象链接以 `ROUND_INDEX.md` 为准；K3-NEG 与 U1 的包内根成员使用通用路径名，不能依据 `retained_path` 的目录名反推阶段身份，须以 `MEMBERS.tsv` 的外层 archive SHA 映射。

## 最新作者交接

作者 `K6-TERMINAL` 报告：在采用 K5 的两奇幂首档接口后，`k=6` 的全部整行末端关闭；两种枚举共 200,890 条必要记录，`T2` 和 `T0` 均无通过行，33 条“大小过”记录仍整除失败，实际完整两底幂审计也被原源条件拒绝。作者据此把该采用链的首档剩余收紧为 `k≥7`。[K6 报告](../objects/60/6061cde81379169612e5d75ea094285c32cc237b6f7412eb9080bf3067d3f42b.md) · [K6 交接](../objects/b0/b01474de4d7086112c6f57218157781d3cbfc704d2faa8aef5d7af19572d1233.md)。

K6 交接明确保留真实 `P,Q` 为不同奇素数底完整幂、原 Lucas/源窗口、同一原 `n,j`、`T0|j` 及每个 `T2` 槽；`k≥7`、首档外参数、多底、非恰好两奇幂和一般 i3 仍开放。200,890、5,333 等记录数不是原题实际 NC 数，也不是 R7 的删除数。[K6 失败边界](../objects/07/07df1c72dc978fda320c0270b15220545625531b26596f2b978267dc28b626a5.md)。

## 证据与恢复边界

本包报告的作者级前置、必要条件、完整幂审计、双枚举和清洁重放必须与“数学接受”分开登记；CRC/SHA 只约束来源字节和载荷对应关系。原包的阶段顺序、嵌套成员、内层来源快照和复用对象均要在 `MEMBERS.json/tsv` 中保留：`archive_sha256`、`index`、`name`、`size`、`sha256`、`kind`、`retained_path`，以及容器的 `parent/member` 关系不能丢。当前 B 仍不提供一般 k≥7 的统一界或完整 B699 结论。
