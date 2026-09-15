# B699 Pro A — gcd耦合边缘与完整素数幂双块

入口：REPORT.md → SOURCE_ADOPTION.md → notes/PROOFS.md；失败与接续：FAILURE_BOUNDARIES.md、HANDOFF.md、SESSION_STATE.json。

Python 3标准库即可接收本轮新证据：

```sh
python3 code/reproduce.py
```

该命令流式核对4份实际采用源原文，然后运行本轮有限算术接收、损坏测试和有限诊断；不会执行历史脚本、发现搜索、Lean或联网。完整输入原ZIP只保留一份，嵌套源路径见sources/RECOVERY_MAP.json。

code/build_certificate.py是本轮小证书生成器，不是接收必需步骤；重放使用现存evidence/certificate.json。code/common.py还提供保守的整数消费者比较函数，超出内存预算时返回NO_CONCLUSION，而非浮点接受。

所有结论的无限证明在notes/PROOFS.md，不把JSON通过状态当成证明内核。归档SHA256清单排除自身；外部发布收据记录ZIP完整性和干净目录的新重放。
