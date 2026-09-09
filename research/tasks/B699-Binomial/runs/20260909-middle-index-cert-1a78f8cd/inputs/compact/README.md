# 主机首批：323..999，统一高度 2,000,000

本目录是为了选择并交付较低成本的 Lean 验收输入而生成的派生证据。它不属于原 Chat ZIP 的原始交付，也尚未 Lean 化。

原始报告完整证明三窗口高度证书的声音性和顶端正素数链的覆盖方式。这里仅将首批索引范围限制为323..999，把统一N降到2,000,000，并从原始素数链取一个间距不超过322、终点超过N的子序列。所有 n,j 的无界量词仍来自原高度消费者与有界区间覆盖的拼接。

`code/exact_height_certificate.py` 与 `code/independent_height_check.py` 从原包同名源码复制，改动仅为 N=2,000,000、遍历范围323..999，以及第一算法的输出 i_min 元数据。第二算法的试除基底仍覆盖全部p<1000，且足以分解本批涉及的所有整数。

`code/check_prime_chain.cpp` 从原包复制，调整覆盖终点区间为[2,000,000,2,000,322]、最大间距322。生成器实际保证终点严格大于2,000,000。C++检查器重新对每个提供的素数见证执行完整试除，不依赖子序列生成器的素性声明。

实际核对记录在 `verification.json`。其中两个高度算法的PASS、素数链试除PASS都仅是外部精确计算验收；主机仍须构造Lean可核验的证书、证明检查器的声音性并接通完整消费者。算法运行时间不是Lean性能估计。

## 重现命令

在本目录执行，已有成功结果可直接读；仅在输入变化或需要定位问题时重跑。

```text
python -B code/exact_height_certificate.py
python -B code/independent_height_check.py
python -B code/make_compact_chain.py
g++ -O2 -std=c++17 code/check_prime_chain.cpp -o build/check_prime_chain
build/check_prime_chain outputs/prime_chain_2m_gap322.txt
```

编译前自行创建临时build目录；Windows可用本机等价编译入口。原始20,000,000证据仍在上级source ZIP中，供首批之后扩展185..999时采用。不要将压缩链用于i<323，也不要将N=2,000,000高度结论无核验地推广到185..322。
