# B686 / B677 / B699 外部成果接入

本批保存 2026-09-08 的一次性外部检索交付，并以本仓 `6074823870dfda8076710cefe063bf44b0fcc1c9` 验收对照旧 `08a8ac6872e8abfd4a2c480496da350a97ecdc13` 快照。主线程负责本目录、两题接入和索引；Luna Max 只读复核状态，Astra Max 只读审查两个数学归约。用户未设截止时间。

- [原始报告](original/Erdos-686-677-699-report.md)
- [原始证据包](original/Erdos-686-677-699-evidence.zip)
- [原件完整性检查](archive-integrity.json)：报告与 ZIP 内报告一致，清单全部 77 项哈希相符。
- [当前状态与接入决策](integration.md)
- [署名与复用边界](ATTRIBUTION.md)
- [B677 接入批次](../../tasks/B677-Lcm/runs/20260908-external-reductions-b3c1b7/README.md)
- [B699 接入批次](../../tasks/B699-Binomial/runs/20260908-external-reductions-b3c1b7/README.md)

原始报告及 ZIP 保留原字节、旧路径和历史接受状态；其内部绝对路径是来源会话语境，不能当作本仓可运行入口。只运行本批新建的 [verify.py](verify.py)，原 ZIP 中脚本和二进制没有执行。数学结果与新验收放在对应题目批次内。

本次不会由归档自动提高未验证外部源码、纸面结论或有限实验的证据等级。原报告后续失效的“待完成”描述以 integration.md 的精确范围与本仓验收链接解读。


接入结果已接受：两题原范围消费者的 fresh 项目依赖编译、源码 policy 与全部传递公理守卫通过，独立追加审查无阻断项。见 [最终检查](final-checks.json)及两题 acceptance。复验命令：

```sh
python3 research/external-results/20260908-erdos-686-677-699-b3c1b7/verify.py
```

本批交付范围是外部快照整理、旧状态对照和两组归约接入；三个原题均未因本次接入获得完整解答。
