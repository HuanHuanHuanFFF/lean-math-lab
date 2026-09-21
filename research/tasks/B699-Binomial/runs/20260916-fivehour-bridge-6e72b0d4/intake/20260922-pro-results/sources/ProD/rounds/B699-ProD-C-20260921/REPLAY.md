# REPLAY — 可重放入口

## 核心验算（无需外部依赖）

要求 Python 3.10 或更高版本；只用标准库。先进入解压后的本目录：

    python3 -B code/verify_hashes.py
    python3 -B code/replay.py

预期核心状态：`PASS_EXACT_REPLAY_NOT_FRONTIER_CLOSURE`。

核心验算包括：6 条有理系数多项式的逐系数恒等验证；完整源接口和直接完整幂乘积接口的实现回归；a132 的实际范数弱模型与 p=7 估值；F31 的四个命名参数实例；Pell 弱族的四个实例；指定 p 商运输但源身份丢失的例子。

12996 个小输入的实现回归只为检测公式/实现错误，不登记为新增原题覆盖。无限结论由 PROOFS 的纸面证明承担；F31 的几个实例不承担其全 H/m 量化证明。

`outputs/core_replay.json` 保存实际本会话输出。可把一次新重放输出写入其他位置：

    python3 -B code/replay.py /tmp/B699-ProD-core-replay.json

## 原输入/候选接口

    python3 -B code/source_adapter.py --n 1530 --j 18

对范数候选，在 Python 中调用

    import sys
    sys.path.insert(0, "code")
    from source_adapter import assess_norm_candidate
    assess_norm_candidate(n, g, a, delta, z)

它严格检查 `n=g*3^a`、本原整数范数、真实 gcd 和 j 区间。它不是 LROW 枚举算法；拒绝候选也不会自动声称给定整行已闭合，除非另有已证明的完备生成器保证这是唯一可能候选。

## 发现过程（可选，默认不重跑）

    python3 -B code/probe_norm.py
    python3 -B code/probe_short_norm.py
    python3 -B code/local_depth_family.py

前两者是有限路线否证/候选发现，不是已有限化后的原题末端。最后一个重建 F31 的展示输出。它们会重写对应 outputs 文件，但确定性重放应保持其内容相同。

`code/probe_squareclass.cpp` 是曾经使用的侧路诊断源，保留发现记录，不是核心依赖。其有限未发现结果不承担任何数学证明；解析弱族已在 PROOFS §8 给出。

## 哈希规则

SHA256SUMS 包含发布时全部文件，唯独不包含它自己；不包含缓存/二进制/ZIP。本轮哈希验证脚本也被清单覆盖。压缩包本身的哈希在包外单列 `.zip.sha256`。

字节校验通过不能替代数学审读；数学重放通过也不代表 Lean 或外部独立验收。
