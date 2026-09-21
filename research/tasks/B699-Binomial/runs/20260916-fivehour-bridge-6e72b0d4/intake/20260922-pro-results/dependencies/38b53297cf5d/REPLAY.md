# REPLAY · 第五轮 COF40 / COMP1

## 完整离线重放

要求 Python 3.10 或更新版本。主验证器仅使用标准库；没有网络、仓库、SymPy、Magma、Sage 或 Lean 前置。

```
cd B699-D-i3-20260921-round5-complement
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

`replay.sh` 不重写冻结证书/日志，不修改仓库。实际作者运行的日志在 `logs/replay.log`。主验证重建平方差恒等式、完整正系数变换、整数恢复身份、相对高度常数、两个实弱模型的非整数恢复和有限回归记录。

## 条件门与完备恢复

```
python3 evidence/recover.py --cofactor 16 --delta 1601
python3 evidence/recover.py --cofactor 1
python3 evidence/recover.py --cofactor 7
```

`--delta` 只测试条件门。未被该门排除不等于 NC3；被排除是必要核心内的条件结论，也不声称该参数曾存在原NC3数对。

不带 `--delta` 时枚举一个固定 W_Delta 的完备必要候选。`CANDIDATE` 还必须检查真实 P/Q 完整素数幂、全部原窗口、n形状、gcd与NC3；程序不会将它标为反例。没有遍历全部 W_Delta 的终点。

## 可选：重新生成证书

生成器额外要求 SymPy，作者实际版本见 `logs/environment.json`：

```
python3 evidence/generate_certificates.py
python3 evidence/verify.py
```

主重放不要求运行生成器。两套实现均由同一会话编写，不称外部独立审读。

## 证据文件

- `certificates/cofactor_identity.json`：全参数系数证书；不是原题实例列表。
- `certificates/other_source_failure.json`：精确有理隔离区间与非整数恢复。
- `certificates/recovery_diagnostics.json`：选定固定补商的实际完整恢复输出，仅作有限回归。
- `inputs/`：Overview、第4轮ZIP与定向采用原件。没有在本轮重放全部历史链。

最终ZIP另在新解压目录完成成员SHA256检查与一次离线重放，回执在包外 archive-check 文件，避免递归自哈希。
