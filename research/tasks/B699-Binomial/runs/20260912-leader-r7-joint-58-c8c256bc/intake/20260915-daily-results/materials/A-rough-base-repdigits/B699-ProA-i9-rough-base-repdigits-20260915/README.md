# B699 Pro A — rough-base repeated-digit rows

先读 REPORT.md、SOURCE_ADOPTION.md、FAILURE_BOUNDARIES.md，再读 notes/PROOFS.md。

运行本轮新接收：

```sh
python3 code/reproduce.py
```

只使用 Python 标准库。它检查本轮整数／有理义务和有限诊断，不运行旧历史接收器、发现搜索、LLL或Lean。日志中的耗时不是旧证明链或Lean耗时。

主结论：B≥11、gcd(B,210)=1、1≤C<B、e,k≥1、t≥2，且n=C B^e∑_{r=0}^{t−1}B^{kr}被400整除，则i9的全部合法j成立。B可为合数；没有合数进制无进位假设。

证据等级：作者纸面推导＋本轮精确有限检查，采用明确冻结PC/content、局部立方桥和A9-FINITE；未Lean，未外部独立全篇审读。

最新原字节ZIP只保留一份于inputs/。旧任务/授权/状态不是当前要求。SOURCE_ADOPTION记录选用原文和已核对的嵌套来源；不要解压整个历史链来运行本轮接收。
