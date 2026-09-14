# 来源采用、实际读取与执行边界

本轮角色：**Pro B，一般 i3**。这是最新用户指定，不沿用本会话更早的 Pro D 角色。唯一用户输入是 `B699-ABD-open-next-round-20260914-v2.zip`，SHA-256：

`9fdaea3d6ea46ed552bb593b2e48ed5641fc497422aeeb54022659c4c55a8929`

## 实际读取和采用

开工已读 README、tasks/COMMON、tasks/B、context/FRONTIER、context/EVIDENCE，执行 `python3 prepare_inputs.py B` 恢复 A/B/D。三路最新 REPORT 均已读。

**B 最新**：完整读 HANDOFF、REPORT、SOURCE_ADOPTION、notes/PROOFS、FAILURES、CHECKPOINTS。正向采用同一 NC3 输入的 N/K、完整幂分配、H/U/R、正 z、Q/Bscr/J、共享身份、Bscr≠3V。新 proof §1和§5重写所需初等前置；旧 GAP、D-center/end、TW 和单独 g 大小后果用于差集比较。旧固定 C、低 v 接受表不参与新正向定理，没有重跑。

**A 最新**：完整读 REPORT；PROOFS 原字节另行保留，但未全读。只作 i9 的58族、尚未闭合、不能将 NC9 拼接到 NC3 的边界参考。不调用 A 的高度、cuts 或数值证书。

**新 D 最新**：完整读 REPORT，读取 PROOFS 前约210行。只用来核对四窗口判据从 NC4/NC5 出发、包含 n−3 窗口的边界。没有将其多项式整除或光滑行闭合迁移到 i3，不采用其正向定理。

**旧 D 与上一轮新 D**：通过最新 B 中的固定原文和来源链绑定；原源文件、上一轮新D三窗口ZIP完整留在 bundled latest-B ZIP。其正 z／条带等在最新B中已有完整证明或准确接口。没有声称重新阅读或重放每个嵌套ZIP的全部内容。区别三个D时间层次的精确成员、哈希见 `sources/INHERITED_LINEAGE.json`。

## 固定字节与恢复

`sources/SOURCE_MAP.json` 逐项给出输入ZIP成员、所属三路ZIP SHA-256、精确原成员名、复制件SHA-256和读取范围。`sources/originals/` 附最新B完整ZIP，含其原D/B来源链；A、D只保留本轮边界参考的原字节报告／证明，不捆绑未采用的51MB A大证书。输入 ARCHIVES/SOURCES/HISTORY/PACKET_MANIFEST 也保留在 sources/packet，可按唯一原输入恢复。

准备器成功不等于旧数学全链验收。`intake/INPUT_IMMUTABILITY.json` 是文件哈希复核，不是独立数学审读。

## 新出版接口与材料缺口

HEIGHT-B 与 LOG-BAND 采用 BEG2013 arXiv:1301.7168v1 Theorem 2.3；已实际读取原PDF定义／定理并查看第4页截图。准确适用条件和专门化在 `sources/references/BEG2013.md` 和 JSON。PDF原始字节下载失败，未取得SHA-256；包内明确记null，不把说明文件哈希冒充PDF哈希。定理按固定公开版本和页码恢复。

DYADIC、DYADIC-DIV及两种CRT/普通例族证明完全初等，没有新增出版输入。HEIGHT-B为采用该明确出版定理的结果，程序不重新证明BEG。

## 执行权限、审核等级

全程仅在独占新工作目录写文件；没有Git命令、提交、push、merge、删除或修改输入仓库。没有派子agent、等待或读取A/B本轮未交付工作；没有Lean或公理审计。

本轮生成器、第二实现与纸面复核均来自同一作者会话；不是独立核验者、不是人审，也不是形式化证明。有限实验的域和失败对照单独登记，不把未接受输入说成反例。
