# B699 Pro A · 三次源集合与统一低高度消费者

Run `20260917-weight7-c82e5a17`。负责人：本会话Pro A；写入仅本目录，无远端写入。用户未指定总时间预算；旧回合预算未继承。

**结果：** 三次载点因子的统一低高度与部分完整高系数源类闭合；43分量上界不变。REPORT给准确前沿，PROOFS给完整新推导，SOURCE_ADOPTION登记冻结输入，FAILURE_BOUNDARIES/HANDOFF记录接续。

## 新接收

```bash
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

只需Python标准库。必须新建或空输出目录，不覆盖已有验收。入口分别调用verify.py和verify_diagnostics.py。成功状态`PASS_COMPLETE_NEW_CUBIC_CONSUMERS_REPLAY`。接收不会自动重跑旧证据或发现程序。

## 证据布局

`evidence/final_profiles.json`：全部392个计数／对角配置，361个接受窗口权。

`evidence/integer_kernels.json`：311个本原整数辅助，多数用于仅靠行列数不保证核的配置。

`evidence/source_closure.json`：62个仅B7有效的源闭包证书。

`evidence/cubic_residual_masks.txt` / `weight7_residual_masks.txt`：重建后的1357／1303源集合，不是原题实例。

`evidence/linear_multiplier_diagnostic.json` / `seven_forms_gate.json`：明确通用构造的失败边界。

其他evidence、code及logs保存本轮发现过程。发现可用SciPy、SymPy、C++17；最终重放只使用整数、模整数与标准库。C++可执行文件和Python缓存不打包；源文件及实际输出保留。

`SHA256SUMS`用于成员字节校验；ZIP自身哈希及干净解压验收见ZIP外的release-receipt。没有重复包含旧大ZIP或旧证据全链。

## 不能误读

证书数量≠原题有限候选。不存在已恢复G、全部三次闭合或43→38的声明。纸面无限论证、有限精确接收、来源哈希、Lean和外部独立审稿是不同等级。
