# B699 Pro B｜第二偏差证据包

本轮新增：BAL 平衡区域整族排除、ZERO 零第二偏差排除、LOW-11分支、RHO-HEIGHT 固定ρ有效高度。一般i3和R7未闭；无Lean。

## 阅读顺序

[REPORT.md](REPORT.md) → [proofs/PROOFS.md](proofs/PROOFS.md) → [SOURCE_ADOPTION.md](SOURCE_ADOPTION.md) → [FAILURES.md](FAILURES.md)。继续研究直接使用 [HANDOFF.md](HANDOFF.md)。

## 核心复现

在包根目录执行，输出目录须是**包外的新空目录**，不覆盖冻结输出：

```bash
python3 -S -B code/reproduce.py --output-dir /tmp/b699-defect-stdlib
python3 code/reproduce.py --output-dir /tmp/b699-defect-full --with-sympy
```

第一条仅用Python标准库；第二条额外需要SymPy（本轮版本见outputs/algebra.json）。程序先核对MANIFEST.sha256，然后生成新证书、另一实现完整恢复、稀疏多项式身份检查、小C冻结见证核验、充分消费者API回归。最后与冻结的5份确定性JSON逐字节比较。

无限结论依赖证明中的完整分类与尾部代数。有限重放不能替代Masser出版定理或Lean内核验收。

## 单项命令

```bash
python3 -S -B code/build_certificate.py --output /tmp/balanced-cert.json
python3 -S -B code/verify_certificate.py --certificate /tmp/balanced-cert.json --output /tmp/balanced-check.json --negative-tests
python3 -S -B code/verify_algebra_stdlib.py --output /tmp/defect-algebra.json
python3 code/check_algebra.py --output /tmp/defect-sympy.json
```

## 代码用途

- `consumers.py`：同一原输入的精确充分谓词；固定ρ的有限曲线超族和符号高度表达式。未命中不表示NC3。
- `build_certificate.py` / `verify_certificate.py`：BAL 271状态的两种完整枚举与恢复。
- `check_algebra.py` / `verify_algebra_stdlib.py`：SymPy与自写稀疏整数多项式核验。
- `check_small_C.py`：只重验冻结的1406个原数对见证。
- `balanced_probe.py`、`second_defect_probe.py`：保留的早期探索脚本/输出；不是正式接受入口。前者已由上述构造器取代；后者对应FAILURES的负η投影，运行会写本包outputs，复现时请在另一个副本中执行。

## 来源与权限

`sources/previous` 只保存新证明实际需要的上一轮冻结成员；原包SHA及成员路径映射在SOURCE_ADOPTION与sources/source_manifest.json。没有要求重放旧GAP31全链。

论文Lemma2已核原文与页614截图，本地下载因DNS失败，没有PDF字节存档；准确请求记录保留。未访问或改写新的远端仓库状态，未commit/push/PR/merge。包内所有新工作只属于本会话。

两个程序、两种符号算法仍由同作者完成，不等于独立研究者或人类审读。MANIFEST核验与ZIP重放只说明文件/程序一致，不提高数学证明等级。
