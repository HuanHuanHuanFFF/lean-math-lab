# B699 · Pro E · 2026-09-20

**结果：** 最小临界支的整个低比值域Q<P<4Q被压到唯一h=13；补齐旧无界h族，并新增近平方参数带的整支排除。i3及R7总体未闭合。

阅读入口：`REPORT.md`（结论/边界）、`PROOFS.md`（完整证明）、`HANDOFF.md`（直接接续）、`FAILURES.md`（反模型与未完成项）、`SOURCE_ADOPTION.md`（来源和采用等级）。

## 默认重放

```sh
python3 replay.py
```

只需要Python 3.10以上及标准库。命令先核对SHA256SUMS与成员集合，再执行独立证书检查和坏证书拒绝，并在临时目录复现已记录的失败诊断。不要用 `python -O`；断言是检查器的一部分。

默认重放不修改交付文件，不需要网络，不安装Lean，不访问仓库，不枚举原题高度范围。

## 可选重新生成

以下操作仅在隔离副本进行；它们可能重写相应输出，因此新生成字节应另作新的验证记录。

```sh
python3 code/derive_strip.py        # 需要SymPy；生成九个全正系数证书
python3 code/small_h_certificate.py # 标准库；九个h边界的统一有理区间
python3 code/check_certificates.py --self-test
python3 code/diagnostics.py         # 标准库；失败边界/弱模型直接原题检查
python3 code/probe_weak_shell.py 3001 # 需要SymPy；有界模式诊断，不是无限证明
```

`code/h13_pending.gp` 明确未执行，不在默认重放范围，不代表Thue末端已完成。

## 文件职责

`certificates/`是有限符号证书和有理区间；`outputs/`是准确输入范围、验证结果、环境与诊断；`sources/`保留唯一总览原字节；`notes/`保留研究路线记录和被增强的早期草稿。SHA256SUMS覆盖除它自身外的全部文件。

所有证据仅为本轮纸面/精确计算等级；旧高侧h族按总览采用，冻结原件404，未重验。没有修改仓库或做Lean。
