# B699 · Pro C 第二轮接续交付

先读 **REPORT.md**。若是 A 或 Lean 执行会话，优先读 **notes/PADE_MINIMAL_INTERFACE.md**：它把显式共同因子变成可以不依赖运输/精确 gcd 的充分归一化接口。

本轮 R8={3,4,5,6,7,8,9,14} 不变，新增整指标闭合0，无 Lean。六个更小 m0 和两个完整行族的上游依赖均在报告标明。

## 重放

Python 3.10+，接受链仅需标准库，从本目录运行：

    python code/reproduce.py

输出在 evidence/；不需要网络、不需要重跑旧大型证书、不需要 SciPy。可选 `probe_factorial_minorants.py` 属于失败路线的发现性实验，需要 SciPy/NumPy，不参与接受链。

`frozen/` 不作修改；`source/` 保留原路径与原字节。顶层 MANIFEST 记录打包时文件哈希；重放会更新带耗时的检查日志，因此重放之后这些运行输出的哈希可能变化，输入本身应保持不变。确定性证书的字节另由清洁目录重放核对。
