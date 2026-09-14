# B699 · Pro D：跨指标与自由位置证据包

先读 REPORT.md，再读 notes/PROOFS.md。本包只使用 Python 标准库。

完整新接受入口：

```sh
python3 code/run_all.py
```

该入口核对成员哈希、从空目录重建完整有限证书、由不导入生成器的检查器复验，并运行阈值、自由位置和指数提升回归。大整数回归不替代无限证明。没有Lean验收。

sources/B_INTAKE.md明示B原文的接收与导出限制。主结果ROW9、ROW-H和固定α高度不依赖B；B50跨指标族继承B的已交付整行消费者。
