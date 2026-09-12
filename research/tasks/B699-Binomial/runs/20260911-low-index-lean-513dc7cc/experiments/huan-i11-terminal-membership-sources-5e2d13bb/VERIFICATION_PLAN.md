# 主任务串行验收次序

1. 核对实际RowCell/Block/Grid/Pair与INDEX输入绑定。后续必要修复保留前后SHA和新回执，不改本冻结源。
2. 先真正验最坏单cell pilot，尤其pair23 a1 b1的3490参数；本子任务没有运行Lean。
3. 每pair复制至本run lean/I11TerminalMembership/PairXY/，先Data，再RowA001..amax逐文件，最后Composer/Audit。总INDEX给出全部源文件、目标路径、精确根名和SHA。
4. Composer只消费各行证明，不替换成whole-grid decide。每个文件真实exit0、全部公开root的标准axiom闭包方可记为通过。Data自身已有#print，避免definitions-only wrapper无根拒收。
5. 六个pair_check验收后，连接SixPairGrids及终端Actual/Final，使用真实Candidates.small_cover、H/M证书和旧originalCandidates全部Witness检查；这些闭合前不声称终端Common或新增原题覆盖。

若单cell或整行出现memory_exception，在新授权目录依据真实错误构造更细的位移/参数拼接，保持本包和数据冻结。JSON实验通过不能替代Lean验收。本包不优化常数、不产生新的CRT候选，不修改任何已有源。
