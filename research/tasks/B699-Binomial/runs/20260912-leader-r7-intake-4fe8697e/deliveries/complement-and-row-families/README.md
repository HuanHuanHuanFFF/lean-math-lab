# B699 Pro D — frozen evidence package

阅读入口：[REPORT.md](REPORT.md)。完整证明：[notes/PROOFS.md](notes/PROOFS.md)。继续研究：[HANDOFF.md](HANDOFF.md)。

本包交付三个原题消费者：补指标 γ=mP(m≤7) 的 i=3 无界子族、六位置/大奇素数幂的 i=3 整行消费者、n=4P^(60t) 上同时服务全部合法 3≤i≤14 的共同见证行族。

**整指标 R8 未减少；没有 Lean 验收。** 证据是自包含纸面推导与实际精确程序运行。两个不同实现不是第二研究者。

## 接受

需要 Python 3.10 或更新版本；发布时以 Python 3.13 运行。仅使用标准库，不需要 pip、SymPy、联网、根权限、GPU 或大内存。

在本目录执行：

```sh
python code/accept.py --output ../prod-acceptance.json
```

也可包含历史探索探针的本次重跑：

```sh
python code/accept.py --probes --output ../prod-acceptance-with-probes.json
```

输出必须在包外，避免修改被校验的冻结文件。`MANIFEST.sha256.json` 校验全部成员；接受器临时重生成八个候选文件和一个终端文件，逐字节比对，再用另一实现验证完备候选与两条整除。所有子进程同步、串行运行；失败返回非零。

有限域已由证明界住，不扫描到 n=14,470,828 为止的所有行和 j。记录数为 855，而不是上亿个二项式。需要 Lean 时仍须形式化完整范围与数学前置，不能只检查八行终端。

## 主要文件

`code/complement_certificate.py`：规范候选生成，内容商接受。

`code/independent_check.py`：不导入生成器，改用完整除子遍历和两条必要整除，含坏证书测试。

`code/check_algebra.py`：Q[x,y,z] 精确多项式、完整小二项式、p=3 端点、非空弱解与估值回归。

`code/check_row_family.py`：75—91 位 n 的跨指标行族估值回归，不构造巨大 C(n,j)。

`code/probe_i3.py`、`code/probe_stronger_i3.py`：选路探针，不承担无限覆盖。

`evidence/`：实际候选、压缩终端、运行记录与回归结果。`checkpoints/` 保存阶段状态；以根目录 SESSION_STATE.json 为最终状态。

证明依赖和非依赖见 SOURCES.md；失败边界见 notes/FAILURES.md。未附带其他会话的缓存或无法获得原始字节的文件。
