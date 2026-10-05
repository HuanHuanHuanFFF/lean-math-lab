# 本目录的证据范围

`constants.json` 是 `../src/check_constants.py` 实际运行产生的52项精确标量比较。每个左右值用十进制整数分子／分母记录；全部接受判断由 `fractions.Fraction` 完成。

π包围来自Machin恒等式与交错arctan级数；log包围来自先做精确2的幂缩放后的atanh级数及几何尾。恒等式的数学依据和全部参数见PROOF.md。程序不是解析恒等式的形式化证明。

`replay.txt` 为首次实际标准输出；`replay-check.json` 为本轮同一环境、同一程序重复执行并比较输出字节的记录。重复执行不是独立算法，更不是外部独立审读。`static-source-review.json` 仅列出源码结构及原路径核对，不代表类型检查。

没有素数证书，没有ζ零点证书，没有kernel结果，没有CI或AX输出。不得从本目录的PASS推出新有限桥、原初段已独立验收或完整G。
