# B699 Pro E · 原韦达反射的完整幂运输

**本轮没有新增原始 NC3 域闭合。** 新定理说明单次原韦达反射只要为整数，就把假设的 NC3 输入送到一个有完整共同因子 H 的较小输入；它不保持 NC。另有真实两个窗口、g=2,u=1,H=5 的无限弱模型族，全部具有原共同素数197，不是反例。

## 阅读入口

先读 OVERVIEW.md。REPORT.md 给结论和精确增量；PROOFS.md 给无限推导和原/新数对区分；FAILURES.md 保存可复核错误命题及重试条件；SOURCE_ADOPTION.md 给旧依赖等级。

本包是只读交付。没有修改仓库累计总览、推送远端、Lean 验收或外部人审。不要将两个算法解释为两个独立研究者。

## 核心证据重放

进入解压后的本目录，选一个**包外且为空**的输出目录执行：

```sh
python3 -S -B scripts/reproduce.py --output-dir /tmp/b699-vieta-replay
```

上面只需 Python 标准库，重新构造 CERTIFICATE、独立检查全部有限算术和16种损坏证书，并检查消费者参数拒绝。逐字节比较本包冻结输出；不覆盖它们，不执行历史链或探索用 Pell 扫描。

若本机已安装 SymPy，可同时重放11项精确身份检查：

```sh
python3 -B scripts/reproduce.py --output-dir /tmp/b699-vieta-symbolic-replay --symbolic
```

本轮实际用了 `--symbolic`，4份结果逐字节一致，接收记录在 outputs/REPRODUCTION.json。实际解释器和 SymPy 版本在 outputs/ENVIRONMENT.json。不同解释器下证书浮点误差不存在，因为证明相关算术全部使用整数/有理数；输出比较仍以真实执行为准。

单独命令：

```sh
python3 -S -B scripts/build_certificate.py --output /tmp/CERTIFICATE.json
python3 -S -B scripts/verify_certificate.py --certificate /tmp/CERTIFICATE.json --output /tmp/ACCEPTANCE.json --negative-tests
python3 -S -B scripts/test_consumer.py --output /tmp/CONSUMER_TESTS.json
python3 -B scripts/check_identities.py --output /tmp/SYMBOLIC.json
```

## 可复用局部接口

```sh
python3 -S -B scripts/transport.py 35 13 3
```

此例的**原输入**为 (35,13)，输出的**新输入**为 (19,6)，证明3是后者两个二项式的共同素因子。函数没有证明前者是 NC，也不能由此认定前者的原题结论。

`transport.witness(n,j,p)` 在反射非整数、目标不合法、p不是奇素数或不是共同中间支撑素数时拒绝。结果用不同 source/target 字段和 `REFLECTED_PAIR_ONLY` 防止数对混用。素性使用试除，适合证书中的小见证；没有宣称这个接口是大素数高效分解器。

## 文件与计算边界

- scripts/build_certificate.py 与 verify_certificate.py 不互相导入；后者重新枚举除子，用独立阶乘赋值和二次环幂算法。
- outputs/CERTIFICATE.json 含6,359个反射域计数、778个局部见证、108个全指数最优族的有限回归样本、大弱模型以及无限族周期证书。不可把这些数量写成 NC 数对数量。
- outputs/ACCEPTANCE.json 接收16种坏证书拒绝；CONSUMER_TESTS.json 另有7种非法函数输入拒绝。
- scripts/check_identities.py 与 SYMBOLIC.json 只辅助核查11项代数身份，不替代无限证明。
- sources/ 保存实际使用的冻结源及字节哈希，未包含所有旧 ZIP、证书或历史链。

## 探索记录（不进入主接收链）

scripts/probe_pell_g2.py、probe_g2_many.py 与对应 outputs/*probe*、g2_many.* 是本轮已运行的有界路线诊断。它们使用 SymPy，直接写本目录输出；不应在冻结包内重跑。`probe_g2_many.py` 导入前者会再执行 pilot，此已执行源码行为保留以解释旧日志，主重放完全不导入它们。

探索结果不承担任何 Pell 轨道完备性；完整无限弱族由明确矩阵恒等式和 PROOFS §6 自行证明。失败的较大因式分解调用没有被当作成功输出，见 FAILURES F6。

## 本包完整性

MANIFEST.json 给除其自身以外各普通文件的大小与 SHA256。ZIP 外部 SHA256 和成员检查结果由交付时生成的包装检查报告记录。解压位置变化不改变字节证明来源，但本包中原绝对路径只用于来源说明，核心执行按脚本位置定位。
