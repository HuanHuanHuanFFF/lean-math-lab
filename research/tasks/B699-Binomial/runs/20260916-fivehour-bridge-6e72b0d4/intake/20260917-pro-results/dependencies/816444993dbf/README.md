# B699 Pro D — 原生i6的H02整行闭合

先读REPORT.md，再读PROOFS.md；完整来源在SOURCE_ADOPTION.md与sources/SOURCE_MAP.json。HANDOFF.md记录真正剩余子域，notes/FAILURES.md记录没有采用的路线及边界。

本包结论：六窗口n,…,n−5的最大完整2/3/5幂均可在0/2取得，则全部合法i6输入成立。108个模1800类可直接查；不是整个i6闭合。

## 完整新链重放（仅标准库）

    python3 replay.py --out /tmp/b699-native-six-h02-replay

重新生成新证书；另一实现重验整数核、完整候选域及末端；执行有限回归、损坏证书测试。所有输出写入指定目录，不运行sources中的旧接受链。evidence下保存本轮实际产生的固定数学输出；与重放目录逐字节比较即可。

## 行消费者

    python3 code/consumer.py --n 1352
    python3 code/consumer.py --n 8750 --j 7
    python3 code/consumer.py --n 1280

最后一项应返回NOT_COVERED_BY_THIS_CONSUMER，不是反例或不成立。消费者只使用已证明行条件，不尝试求一般未知输入。

## 证据等级

作者纸面证明＋精确整数与完备有限证书；两套实现同作者。无Lean，无外部独立审读。冻结QIG/SIXG仍沿用明确原证据等级。完整R7及i5/i7模板计数不变。

optional discovery脚本需要SymPy/NumPy，不属于标准库接受入口。原生NC6与旧NC7完全分开，复用核不复用未经桥接的反设。
