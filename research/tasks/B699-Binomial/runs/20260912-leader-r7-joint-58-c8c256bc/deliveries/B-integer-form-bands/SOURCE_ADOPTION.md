# 来源、实际读取与采用分层

## 本轮启动与原件身份

收到的唯一外层 ZIP 为 `B699-ABD-next-round-20260914-v1.zip`，52,044,532字节，SHA-256：

    10311a858e4006dee9800bef43c6bc8e8dc3732a059e7cd25afe0f78404a525c

本轮在安全解压目录实际执行 `python3 prepare_inputs.py B`，四份原包全部按清单字节核对并恢复成功。原始输出保存在 `intake/prepare.log`。该步骤不是数学接受；没有运行 A、D 或旧 B 的历史大生成器。未访问 Git 仓库、未等待其他会话、未运行 Lean。

原外层包、四个恢复原 ZIP 都留在本轮输入目录，未修改。最终前后核对另存 `intake/ORIGINALS_AFTER.json`。新证据 ZIP 只再携带两份实际采用的较小原 ZIP：B 的105,768字节包和新D的868,926字节包。无需重复嵌套约51 MB的A包。数学重放只依赖新包内完整源文本。

## 实际读取与采用

|原件|精确成员|本轮使用|
|---|---|---|
|B 最新立方包|REPORT、HANDOFF、notes/PROOFS、notes/FAILURES|全部读取；采用原NC3的归一化、R/U/CG定义，核对NCUBE及ROW256/512的边界。新证明不把这些必要式等同于noCommon。|
|新D three-window-threshold|REPORT、HANDOFF、notes/PROOFS、notes/INTAKE_AND_DEPENDENCIES|全部读取；用于TW实际覆盖比较，以及区别原NC3与新目标相关投影。未把NC_i直接当作NC3。|
|新D中保存的Dtail|HANDOFF、notes/MINIMAL_INTERFACE、notes/PROOFS|**本轮首次实际完整读取**；采用正z、共享窗口整数性，比较精确主体/端点两条带。不能倒记成上轮已读。|
|本轮外层任务|README、tasks/COMMON、tasks/B、context/RESEARCH_SNAPSHOT、prepare_inputs.py|实际读取并按B流程执行；只存读取记录/哈希，不复制任务正文作为研究成果。|
|A当前包、D-old当前包|原ZIP字节和恢复入口|通过prepare_inputs校验；本轮未采用它们额外的数学结论，不声称全文数学审查。|
|B旧 min(C_s)≤B 高度|`n<2^(2^129 B^10)` 的已交付范围|仅保留前沿标签；新证明不调用其BEG2013 Prop3.10，也未提升证据等级。|

逐文件原 ZIP 成员、工作副本、字节数及 SHA-256 全列在 `sources/SOURCE_MAP.json`；11份实际采用/比较源文本原字节随包。读取时间层次另见 `intake/READING_RECORD.json`。

## 可恢复性

源文本由 `sources/originals/` 两个原 ZIP 的明确成员复制得到。默认复现中的 source_audit 会先验原 ZIP SHA-256/CRC，再逐成员比较字节，因此不需要任何旧临时路径、联网、Library或Git权限。

原件头部的历史结论依照原件的证据标签使用。本轮对新采用的正z等接口重新写出短证明，但不宣称重新接受其余旧有限证书。

## 出版、软件与新颖性

本轮新定理不依赖外部出版输入：阶乘完整估值、gcd、精确整数恒等式、正整数间隙、奇偶和模3/8分析足够。没有使用新搜索到的外部定理，也没有下载或重证任何出版论文。标准库脚本是新有限检查，不充当无限纸面证明。

没有独立研究者审读、人类审稿、Lean/公理审计或Git发布。不同实现均为本会话实施。未作系统新颖性检索，不声称首创或全球领先。
