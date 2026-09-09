# 旧 B686 guard 公理补充审计

本批最终消费者需要 `B686PrimeCounting` 的四个声明。旧源码
`research/tasks/B686-Four/formalization/PrimeCounting/LinearPrimeCounting.lean`
把四个 `#print axioms` 放在 `#guard_msgs in` 内。Lean 会校验这些消息，却不把它们作为普通 stdout 输出；冻结审计器只解析实际 stdout，因此旧源码本身编译成功时仍会因为 `source=4 actual=0` 的计数不一致而拒绝。旧失败证据是
`verification/dev-20260909T064402390996Z/evidence.json`。

本批的补充路径只接受下面这个精确身份：

| 项目 | 固定值 |
| --- | --- |
| source | `research/tasks/B686-Four/formalization/PrimeCounting/LinearPrimeCounting.lean` |
| SHA256 | `e5a6a6cc4d10206edbd4e226106d1862f720542f84aa4398b62a624fdab6902a` |
| import | `research.tasks.«B686-Four».formalization.PrimeCounting.LinearPrimeCounting` |

旧模块必须先在本轮的新 object 根编译并产生 `.olean`。随后，`guarded_axioms.py`
在相同 `LEAN_PATH`、相同固定 Lean 与单线程设置下生成临时 companion。companion
只导入该旧模块，并显式打印以下四个全限定名称：

```lean
import research.tasks.«B686-Four».formalization.PrimeCounting.LinearPrimeCounting

#print axioms B686PrimeCounting.wheel_data_certificate
#print axioms B686PrimeCounting.wheel_count_linear
#print axioms B686PrimeCounting.prime_count_le_wheel_add_five
#print axioms B686PrimeCounting.prime_counting_linear
```

companion 不含 `#guard_msgs`。它的源文件、真实 stdout、命令和退出状态分别保存
在本次 evidence 的 `guarded-axioms/` 目录；fresh verifier 另外保留冻结 runner
的诊断日志。补充结果再次交给冻结 `audit_axioms` 解析，要求四个声明和四条实际
输出按顺序对应、只出现冻结允许的公理，并且 `guarded_output_inferred` 仍为
`false`。只有旧源码审计同时满足 `declared=4`、`actual=0`、`guard_msgs=4`、
空 `unexpected_axioms`，且唯一失败字符串正好是 `source=4 actual=0` 计数错误时，
补充结果才会修复该失败；任何缺行、额外公理、导入失败、对象缺失或源码哈希变化都保持失败；不
从旧源码注释、`#guard_msgs` 期望文本或旧日志推断通过。

dev 入口在首次编译和本轮复用该旧 object 两种情况下都运行 companion。fresh
入口通过包装冻结 verifier 的 `compile_source`，只在旧模块成功产生 object 后
运行 companion；其他源、其他 hash、未知 guard 模块继续由冻结审计原样处理。
补充编译不把 companion 加入项目源闭包，也不重编旧证书作为初始化。

实现交接时的静态检查：

```text
python3 -m py_compile verification/guarded_axioms.py verification/dev.py verification/verify.py
```

并已用冻结解析器对四条合成的实际输出和缺失输出做轻量 Python 检查。Lean
companion/fresh acceptance 尚未由本支持步骤运行；最终消费者应在现有固定环境和
单一编译流水线中运行入口，并审阅 evidence 中保存的实际输出。

最终实际结果：主线程07:02:00Z至07:02:51Z的fresh完整验收通过，四个声明由companion真实打印并通过冻结parser；companion源码before/after哈希一致。独立保存的12项轻量拒绝测试见 `verification/check_guarded_audit.py` 和 `verification/guard-checks-20260909T070337615299Z.json`，包含异常公理与计数错误同时出现时的拒绝。
