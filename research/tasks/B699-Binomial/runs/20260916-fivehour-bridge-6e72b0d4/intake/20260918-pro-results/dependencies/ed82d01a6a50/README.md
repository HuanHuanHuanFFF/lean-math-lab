# B699 Pro D · dominant-q4 closure · 2026-09-17

入口：REPORT.md → PROOFS.md → SOURCE_ADOPTION.md / HANDOFF.md。

新增整行消费者：i5/H02+存在完整素数幂Q∥q4且(q4/Q)^10≤n；i6两个尾类1280/1530对应九次方条件。五槽可全非空，余部R和其他参数不固定。R7未减。

重放：

```sh
bash REPLAY.sh
# 将本次重放结果另存（不覆盖冻结证据）：
bash REPLAY.sh --output /tmp/b699-replay.json --rows-output /tmp/b699-rows.txt
```

Python 3标准库即可，无网络、CAS或Lean依赖。程序重新核对多项式、常数与有限基底；QIG作为冻结数学合同采用。

对单个原输入运行充分测试（False只表示本消费者不决定）：

```sh
python3 code/consumer.py 1280 640 --i 6
```

sources保存实际采用的冻结系数与末端数据。evidence保存本轮输出，recovered_rows.txt是完整有限恢复名单，不是反例表。MANIFEST.sha256用于成员完整性；没有任何仓库外部操作。

交付前另从全新ZIP解压副本重放，见evidence/isolated-replay.json；该记录区分数学载荷重放与最终归档哈希。最终ZIP还在会话中另作精确归档重放。
