# B699 i10 全域纸面闭合证据包

先读 `HANDOFF.md` 与 `REPORT.md`。本包新增且仅新增 i=10 的全域纸面＋完备整数/有理数证书；不是 Lean 或独立人审通过。当前0.3639的3/7对称命题仍未证明或否定，本轮用另一组15条真实非对称约束绕过它。

## 复现

进入本包根目录，Linux/POSIX、Python3.9+，不要使用 `-O` / `-OO`：

```bash
python3 code/verify_manifest.py
python3 code/reproduce.py --output-dir replay/check
```

默认完整接受仅需Python标准库。六对指数块全部由Python大整数重检，全部580879个候选的消费者被实际执行；不是只读取PASS标签。

空缓存、空证书重新生成，需要 g++（C++17）和 GMP 开发库：

```bash
python3 code/reproduce.py --regenerate --output-dir replay/fresh
```

输出目录必须为空或不存在。原发行文件不被改写；失败时保留工作副本与逐步记录，成功时默认移除副本。`--keep-work`保留成功副本。建议约2GiB可用内存、2GiB工作盘；同时运行别的任务时另留余量。

`replay/clean_regeneration/`与`replay/isolated_acceptance/`为本轮实际执行记录。最终发行副本另有 `replay/final_delivery_acceptance_retry/` 完整通过记录；此前外层超时的额外检查保留在 `replay/final_delivery_acceptance/`，它不是完整接受。核对最终 `result.json`，不是仅查看中间 `progress.json`。检查命令不联网、不写仓库、不编译Lean、不在会话结束后继续运行。

## 内容

`input/`存显式数学参数；`evidence/`存完整新证据及已执行诊断；`code/`存生成和接受代码；`adopted/`存选用的冻结成员原字节；`originals/`仅存一次本轮冻结ZIP原字节；`SOURCE_MAP.json`绑定来源。

数学比较仅排除明确列出的时间、峰值RSS和序列化文件长度字段；所有数学常数、起点、区间、素数权重、指数、候选、见证均参与。发行包哈希检查与数学重放是不同层级。

可选设计代码 `discover.py`、`select_i10.py`、`relax_content.py`、`use_symmetric_contents.py`另需NumPy/SciPy。它们可以重新产生浮点选路结果，但不属于定理接受；应在新副本中运行，因为其输出会更新设计记录。论文新颖性未认证。
