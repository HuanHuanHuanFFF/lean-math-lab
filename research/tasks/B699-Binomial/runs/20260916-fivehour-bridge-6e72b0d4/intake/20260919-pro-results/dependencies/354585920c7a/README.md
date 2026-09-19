# B699 Pro D · q5近侧四重核、L7与{13,61}支持

本包包含作者纸面证明、全部确定性整数/多项式证书、重放和交接。
先读REPORT，再读PROOFS；唯一新增出版输入为Yu1994 §0.1，来源边界见SOURCE_ADOPTION。

## 默认重放（Python 3.10或以上，仅标准库）

    python code/verify.py --json

预期状态：PASS_Q5_NEARSIDE_L7_1361_CLOSURE。
先核对SHA256SUMS完整成员清单，再核对新核、QIG身份、8张对偶证书、4817个已界三元组、
42条完整原行以及真实共同素数回归。默认不联网、不调用CAS、LLL或Lean。
程序不证明Yu定理，不代表外部独立数学验收。

## 原输入消费者

    python code/consumer.py 5130 370

只接受原生i6两个尾类。输出covered=false不代表反例。
输出witness_cofactor的每个素因子都是实际共同素数≥7，余因子本身不冒称素数。

## 可选证据重建

    python code/build_evidence.py --output /tmp/b699-new-evidence

重建新核整数数据、8张仿射分离证书、已界域和原行终端；只写指定输出目录。
内部有理LLL只负责找候选向量，verify.py不依赖其正确性。
重建文件可与evidence/比较，但不要为通过核验而自动改写已冻结证据或SHA256SUMS。

## 证据层次

GROW5和新整数恢复自含；SUP1361另用明确出版分析输入；末端已全部完成。
42是支持族证明的终端数，不是一般RES10剩余空间。R7仍不变。
无Lean、无仓库写入或发布、无外部独立审读和全历史差集认证。
最终ZIP自身的SHA256和新解压重放回执放在ZIP旁，避免哈希循环。
