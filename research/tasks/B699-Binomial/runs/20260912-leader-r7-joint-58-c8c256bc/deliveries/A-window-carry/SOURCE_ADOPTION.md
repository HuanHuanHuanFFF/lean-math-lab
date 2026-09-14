# 实际输入、采用边与可恢复性

## 本轮唯一任务附件

`B699-ABD-next-round-20260914-v1.zip`

SHA256: `10311a858e4006dee9800bef43c6bc8e8dc3732a059e7cd25afe0f78404a525c`

实际执行 `python3 prepare_inputs.py A`，命令输出见 `logs/prepare_inputs.log`：A、B、D-old、D-new四原包恢复、外层字节核对通过，没有因此执行数学接收。本轮在独立目录写入，原件没有改动。

外层README、COMMON、A任务、快照、恢复脚本和行政元数据的原字节放在 `sources/task-packet/`。这是相关任务来源快照，不是完整派发包副本；B和两个D的大ZIP没有重复携带，所以不能在此快照目录冒充重新运行完整四包prepare。

## 必要数学输入：A原ZIP完整携带

原名 `B699-ProA-i9-outer-exponent-primitivity-evidence-20260913.zip`，本包路径 `inputs/A-original.zip`。

SHA256: `95d398cd0931ecd8551ef090edbae741e60124fba09e62ea8d71f306650de6d9`

字节数 50,911,609；185个归档成员。原ZIP前缀 `B699-ProA-outer-exponent-20260913/`。它包含fibres、positions原字节成员和共同的58族ZIP，按原 `SOURCE_INPUTS.json` 可恢复149个来源引用（148条唯一路径）。两个更旧外层容器不在此重封装，但其需要的原字节成员映射保留；没有声称所有更早历史容器都取得。

实际读取主REPORT、HANDOFF、SESSION_STATE、FAILURE_BOUNDARIES、PROOFS；采用§1的精确F1/F2（位置、R、完整幂），保留F3及本原性结论。fibres PROOFS §§0–4核对联合高度/标量/单指数接口；positions PROOFS §§6–7及相邻范围核对剩余位置与cut适用边界。选定原件另以原字节放 `sources/A-excerpts/`，方便不展开大包即可看本轮直接接口。

核心一般整行定理不依赖旧数值证书；把m=3候选接到其模条件需要冻结位置及标量。3/7目标赋值增长最后用冻结R。未运行旧content有限块、无限尾部、局部立方大整数块或i9末端CRT，不能将149项字节核对计为这些数学重验。

## 其他路线

新D：实际读REPORT/HANDOFF及PROOFS §7，原字节放 `sources/D-boundary-only/`。只作为“TW必然不覆盖当前双高幂”的方法边界，没有采用TW作正向消费者。

B、旧D：通过恢复脚本取得当前原包，但未读取并采用其数学接口；本包不重复携带这些无关大ZIP。未取得、未等待正在运行的新成果。

## 可选外部出版输入

Yann Bugeaud, Jan-Hendrik Evertse, Kálmán Győry,
*S-parts of values of univariate polynomials, binary forms and decomposable forms at integral points*.

原文地址：<https://arxiv.org/pdf/1708.08290>。实际访问2026-09-14；正文与PDF第3页截图核对定理2.1(i)、2.2。该文件首部有arXiv v1标记与2021手稿日期，本轮以读取到的题名、作者、定理编号/内容定位，不推断其他出版版本等同。

只用于PROOFS §7的**非有效**有限性附录；新两行消费者不依赖该定理。容器下载尝试失败，因此没有PDF原字节或哈希，也没有随包重发全文。没有从作者论文的有效/非有效两个不同定理拼接出不存在的有效界。

## 机器可读清单

`sources/SOURCE_ADOPTION.json` 逐项列出20个来源文件的原路径、读取范围、采用角色、存储路径、字节数、SHA256。`code/check_sources.py` 只做字节/映射核对；`code/reproduce.py` 对本轮327项精确参数义务、21项变异和有限诊断另行运行。它们都不是Lean或外部审读。
