# 探索性计算：不承担无限结论

`probe_core.py`：奇数3≤Q≤1999；`probe_core_50k.py`：奇数3≤Q≤49999。枚举正偶v<Q、v|(Q³−1)，用整数判别式和精确整除恢复ν、h、P。两次结果都只有Q3/v2弱壳。对应实际输出为`../outputs/PROBE_CORE_2K.json`、`../outputs/PROBE_CORE_50K.json`；elapsed是本次记录输出的实际运行秒数，不是证明成本估计。

`probe_norm.py`：素数11≤Q<3000，正偶Q/4<v<Q，核验(Q⁵−(Q−v)²)/v是否为整数平方。对应输出`../outputs/PROBE_NORM_3K.json`，无命中。采用标准库试除素性；这是对早先同范围探索的可留档复算，不冒称无界完备性。

这些脚本用于否证候选引理和隔离弱模型，不参与默认重放，不根据零命中推导无解。需要手工重做时将stdout保存到包外新路径，避免改写冻结输出。一般纸面论证和有限末端证书见PROOFS.md及src。
