# 输入与来源边界

## 固定输入

- 原始上一轮ZIP：`input/originals/B699-R13-quotient-free-degree-evidence.zip`，26307136字节，SHA-256 `9c8f504fc35c4652a2096ad6b947bbb1691eb4d0fa83dfffb5e6860babba1bd4`。原字节保留，不覆盖。
- 其内部的R13上下文：SHA-256 `7afcc3b3d51c45fa0ae44030bdb2dd0932d0f9b5b2975f12de09734237e7aa1f`。恢复映射由check_sources.py实际验证。
- `input/previous/`：上一轮纸面证明、代码、两个区间实现和冻结约束的只读字节副本；本轮运行的是新code/内接受链，不重跑全部历史实验。
- `input/i13/PROOFS.md`：从上述嵌套上下文中的originals/i13-evidence.zip恢复的原始证明。用于Padé整数多项式、相邻非零行列式的通用依赖。
- i18闭合采用本次用户明确更新，只更新R，不用于本轮任何证明。没有读取其本轮源码或证书。PR8已在前轮确认合并，本轮不访问实时Git分支或其他会话。

- `input/shifted/{README,REPORT}.md`：从嵌套i13原包中的固定共享上下文恢复，核对旧平方根整数斜率带与固定移位分子族；只读，不重跑其历史扫描。两份字节也由check_sources.py验证。

## 本轮实际读取的外部原文

Bennett, Filaseta, Trifonov，*On the factorization of consecutive integers*，作者稿2007-02-26：

`https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf`

实际通过网页PDF工具读取并查看截图：印刷第10页Lemma4.1、第11页Proposition5.1，以及第4页Theorem2.1表。采用的唯一新数值行是c=9,d=4,L₁=1.7666,m₀=87，(2.8)要求m>m₀，两种δ同时适用。定理T（有理斜率带）完全不依赖BFT。

所采用出版结论的精确消费者、积分和代入写在notes/NEW_PAIR_PROOF.md。常数证书不证明出版结果。Theorem2.1的(2,11)旧表指数0.059只用于比较；不构成本轮消费者依赖。

**原PDF没有成功保存到容器。** 实際container.download失败，随后urllib请求因DNS临时解析失败停止；网页工具的PDF读取和截图成功。因此本包含来源定位、参数映射和完整新消费者，不假称含原PDF字节或其下载哈希。复核出版证明需按上方作者链接取得原文。

## 代码来源与独立性

`code/vendor/{rational_intervals,decimal_intervals}.py`为旧原件逐字节副本；新配方、种子输入及两个消费者独立编写。第二消费者没有导入第一消费者。两套有理斜率检查分别使用稀疏多项式/除数恢复与次数插值/完整h区间枚举。它们来自同一模型会话，不是独立人类或第二模型审稿。

`probe_*.py`是有限探索脚本，部分延续旧探索实现，完整原件也在input/previous/code。它们可能需要NumPy/SciPy；不属于标准库接受链。浮点输出与截断结果保留而不升级。

新颖性只按已读冻结材料区分：旧稿已有一般有理方向整除式、自由次数清分母方法；新贡献为统一零分支及带宽消费者、两条新种子的显式约束、原建议的精确强度反向证书和一个固定重数轮廓最小次数。未做全面文献优先权调查。
