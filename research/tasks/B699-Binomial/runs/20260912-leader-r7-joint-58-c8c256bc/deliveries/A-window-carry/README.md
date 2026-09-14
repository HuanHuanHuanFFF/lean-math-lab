# B699 Pro A — 2026-09-14 完整窗口／上层进位交付

入口：REPORT.md（结果）→ notes/PROOFS.md（无限推导）→ FAILURE_BOUNDARIES.md（边界）→ HANDOFF.md（接续）。本轮没有整位置闭合；58族/R7不变。未Lean。

## 运行新接收

仅需Python 3.10+标准库；本轮实际运行Python 3.13.5。不要加`-O`。

```bash
python3 code/reproduce.py --out /tmp/b699-a-window-carry-check
```

输出目录必须为空。入口核对本轮完整参数证书、21项变异、有界诊断及必要输入字节；不运行历史搜索/大块，不访问网络，不跑Lean。

## 一个整行证书的实际命令

```bash
python3 code/row_consumer.py \
  --n 1584073256573769635769600 \
  --r 7 --p 1000003 --e 3 --i 9
```

同一n对i8也可运行。该工具是充分条件检查器，不是全域判定器。当前实现只对P≤10^12做确定性试除；这是实现资源限制，不是纸面定理的上限。指数是否完整会在输出单列。无限展示族无需展开其全部巨大整数；基底不等式和模周期已在主接收中核对。

## 源码/证书/日志

- `code/arithmetic.py`：精确整数算法、正向消费者。
- `code/verify.py`、`evidence/certificate.json`：完整移位/中心表及参数义务。
- `code/diagnostics.py`：有界组合数、完整幂与上层递归诊断。
- `code/negative_tests.py`：21处算术/覆盖/范围变异。
- `code/check_sources.py`：原ZIP和149个映射引用的字节校验，不执行旧数学。
- `logs/receiving-run1/`：真实首轮命令、平台和输出；`logs/prepare_inputs.log`为实际恢复记录。
- `code/probe_full_window.py` / `evidence/full_window_probe.json`：先前已跑的低成本发现探针，主接收不重复运行，不作全域证明。

## 固定原件

`inputs/A-original.zip`是当前A外层指数原交付的原字节，包含fibres/positions完整成员和58族嵌套包。需要读历史时，按`SOURCE_ADOPTION.md`及原SOURCE_INPUTS映射按需恢复，不递归展开全部ZIP，不打印Base64。

本包只保留必要A大包和相关来源片段，不重复携带无关B/D大包或外层整派发包。原任务包的身份、读取/采用范围、SHA256在`sources/SOURCE_ADOPTION.json`。文件级MANIFEST不包含自身；最终ZIP哈希与干净解包重放由独立的发布收据记录。
