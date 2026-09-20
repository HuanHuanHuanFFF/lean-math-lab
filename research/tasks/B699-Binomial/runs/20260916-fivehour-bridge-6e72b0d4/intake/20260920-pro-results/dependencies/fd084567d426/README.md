# B699 Pro E — h13完整终点（2026-09-20）

主结果：固定三次方程 X³−46YX²+312Y²X−338Y³=1 的全部整数解为(1,0)。因此规范最小支的h13全排；与上一轮L拼合，整个Q<P<4Q无界域闭合。全i3仍开放。

阅读顺序：REPORT.md → PROOFS.md；接续研究读HANDOFF.md；证据依赖看SOURCE_ADOPTION.md，失败看FAILURES.md。

只读重放：

```sh
python3 replay.py
```

Python3.9及以上，标准库，无网络或CAS依赖；不要使用`python -O`。程序核对哈希、三个根分支与全局有限化中的精确数值证书、双实现末端、坏证书拒绝。纸面推理及Matveev外部定理的语义依赖详见PROOFS，不冒称形式化验收。

目录：

- `certificates/h13.json`：有理根区间、三个整数格及完整末端期望值。
- `code/verify.py`、`exact.py`：标准库精确检查器。
- `code/verify_endpoint_matrix.py`：不导入前者算术核的独立矩阵末端。
- `code/reject_bad.py`：七种坏证书拒绝。
- `code/generate.py`：可选证书重新生成，需mpmath；不作为证明可信根。
- `code/probe_*.py`：探索程序，不承担完备性。
- `outputs/`：实际执行结果、工具失败和环境记录。
- `sources/`：总览、上一轮原包和外部定理准确出处。

没有Lean、仓库修改或原题反例。仅本研究分支的明确域被删除，不把指标R7更新为更小集合。
