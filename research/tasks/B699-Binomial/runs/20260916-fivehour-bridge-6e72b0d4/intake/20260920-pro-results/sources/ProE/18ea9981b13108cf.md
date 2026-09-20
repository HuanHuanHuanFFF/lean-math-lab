# 重放与证据边界

解压后，在本目录运行：

```bash
python3 replay.py
python3 consumer.py --example
python3 consumer.py --pair 66 67 67
```

Python标准库即可；主重放不需要网络、SymPy、Lean、PARI或Magma。

重放检查全部成员哈希、12个代数多项式、完整槽映射与9个槽对、原2^83行的完整分解及确定性素性、第一三槽弱点的原完整进位、13类坏证书、消费者输入边界，并检查前后字节未变。

主检查器：`code/primary.py`使用`code/poly.py`的稀疏整数系数运算和递归Lucas素性证明。另一个检查器`code/independent.py`不导入这两份算术源码，用完整坐标次数网格、试除到平方根、以及原基p逐位进位复核。它仍是同会话复核，不冒称另一位数学审稿人。

`consumer.row(...)`接受提供完整因子与素性证书的原行；`consumer.pair(X,j,P)`只在充分条件实际成立时返回PROVED_COMMON3。NOT_COVERED不表示NC3或反例。

`code/generate.py`是证书生成器，使用SymPy，**不是**主重放依赖。diagnostics保存探索时的源与确切输出，部分脚本有当时的容器输出绝对路径；它们不是一般证明，也不作为主重放任务。

无限参数的论证与完整原题回传在PROOFS.md。程序不是该纸面证明的形式化替代品。
