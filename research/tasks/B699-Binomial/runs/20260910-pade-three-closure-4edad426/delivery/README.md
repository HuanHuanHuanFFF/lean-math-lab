# B699 Padé continuation — 三指标全域纸面闭合

**最强结果：i=11、16、21，全部合法n,j均有题目要求的共同素数。**
证据等级为冻结Padé高度依赖上的完整纸面归约＋精确整数证书；没有新增Lean、人审或新颖性认证。完整B699仍未解决。

先读 `REPORT.md` 第0节；全部证明在第3–8节，来源在第1–2节和 `SOURCE_MAP.md`。独立验收51,127个完整候选n，3255个指数块、397,261个CRT幂对，末端零残余；n=330的154个合法j用163、109分段覆盖。

## 复现

需要Python3.10或更新版本；首次实际运行Python3.13.5，只使用标准库。不要使用 `python -O`。在本包根目录：

```bash
python code/verify_manifest.py
python code/reproduce.py
python code/reproduce.py --regenerate --output-dir replay_fresh
```

第一条检验收到的字节；第二条临时副本核验；第三条在没有新证书缓存的干净目录从头生成并比较数学数据，日志保存到 `replay_fresh/`。第三条已实际执行过，结果位于交付中的 `replay/`。完整性清单是发出时的快照，之后覆盖旧日志会改变哈希；先验哈希再重跑，或者换输出目录。

`originals/` 保留实际消费的三份原ZIP，勿覆盖；`vendor/` 是六份原字节源码。`results/` 是首次生成、独立检查和源绑定；`replay/` 是一次干净重生成及66份数学数据一致性的记录。

本轮完整前沿更新与Leader交接见 `HANDOFF.md`，机器可读结论在 `results/frontier_increment.json`。本包不修改Git、不push、不建PR，不覆盖原Padé交付。
