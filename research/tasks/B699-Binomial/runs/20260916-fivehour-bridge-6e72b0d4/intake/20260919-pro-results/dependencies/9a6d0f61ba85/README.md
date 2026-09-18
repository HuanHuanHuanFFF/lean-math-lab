# B699 Pro D · Source saturation

本轮：原生i6两H025尾类/RES10的**数对充分消费者**。一般RES10未闭，无新绝对参数界。

推荐读取：REPORT.md → PROOFS.md → FAILURES.md → HANDOFF.md。
SOURCE_ADOPTION.md明确旧核和当前接续来源。SHA256SUMS覆盖全部普通内容成员。

## 重放

需要Python 3.9或更新版本，仅用标准库：

```sh
python code/verify.py --json
```

预期：`PASS_SOURCE_SATURATION_CONSUMERS`。
不联网，不分解素数，不遍历原n/j或无界指数，不重放历史支持族。
`build_evidence.py`是可选的固定证据重建器，不是发现搜索。

## 单个原输入

```sh
python code/consumer.py 1066641813770130 4153887361540
```

返回满足的充分条件及真实源见证余因子。余因子不一定是素数，其每个素因子才是合格共同见证。
未触发表示本消费者不作结论，绝不表示NC6或反例。

本包不含Lean；证据等级为作者纸面证明＋同会话确定性复算。没有仓库写入。
