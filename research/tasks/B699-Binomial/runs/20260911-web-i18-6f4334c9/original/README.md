# B699 i=18：新公因子界、有效高度与全域闭合

先读 `REPORT.md` 的第1节，再按需读完整证明。`HANDOFF.md` 供Leader接收。

新增范围仅i=18。剩余集合为 `{3,4,5,6,7,8,9,10,12,14,15,20}`。证据为纸面＋精确整数/有理证书，依赖明确BFT出版输入；没有Lean或人类审稿验收。

```bash
python3 code/verify_manifest.py
python3 code/reproduce.py
python3 code/reproduce.py --regenerate --output-dir replay_fresh
```

不要使用`-O/-OO`。默认验证仅Python标准库；干净重新生成另需g++ C++17与GMP开发库。重放自动使用独立目录，不覆盖本包的数学数据。实际17条命令的干净重生成见 `replay/clean/reproduction.json`。

`SOURCE_MAP.md` 给出来源与依赖路径。`sources/adopted_sources.json` 绑定原字节采用文件及派生源码的上游。完整R13冻结包在 `input/originals/` 原字节保留；未重复展开旧包。

`outputs/` 同时包含接受证书和明确标记的探索诊断；只有 `PROOF_MAP.json` 指定的接受链产生本轮定理。`probe_*`、`*_probe.json` 和 `next_frontier_check.json` 不产生额外B699结论。vendor文件保留原字节，其旧主入口不是本轮复现入口。

`logs/content_finite_15_8.log` 是45秒工具超时的未完记录；后续恢复、完整独立检查和空缓存重生成才是最终验收。gmpy2安装失败的日志也被保留，本包不依赖该库。
