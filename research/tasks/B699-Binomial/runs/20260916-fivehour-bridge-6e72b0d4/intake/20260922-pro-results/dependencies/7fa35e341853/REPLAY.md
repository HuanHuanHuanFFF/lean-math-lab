# REPLAY

从本包根目录运行；Python 3 标准库即可，无第三方依赖。

```bash
python3 src/explore_core.py --limit 5000 --output outputs/replay_core_scan_D5000.json
python3 src/check_certificate.py outputs/replay_core_scan_D5000.json --self-test-tamper
python3 src/check_certificate_alt.py outputs/replay_core_scan_D5000.json
```

若要验证冻结证书而不覆盖它：

```bash
python3 src/check_certificate.py outputs/core_scan_D5000.json --self-test-tamper
python3 src/check_certificate_alt.py outputs/core_scan_D5000.json
```

预期冻结摘要：

```text
limit_D=5000
divisor_pair_count=195126
core_solutions=[]
current_width_solutions=[]
PASS checker-A
PASS tamper-rejection
PASS checker-B (Pell-square reconstruction)
```

无限域纸面证明不依赖这项计算；重放只复核 `EXPERIMENTS.md` 的有限实验声明。
