# B699 · 无界素数供应优化 · R2

**状态：部分完成；有效无界尾部有作者级纸面推导，完整G和形式化证据闭包未完成。**

先读 `RESULT.md`，再读 `PROOF.md`、`DEPENDENCIES.md`、`FORMALIZATION-PLAN.md`。

本轮从明示的无条件出版／经典输入推出：所有实数x≥16000000000，在严格区间 `(x,4096x/4095)` 有素数。相对上一轮，尾部阈值降低50倍、所需有限临界线验证高度降低20%。不是原U/L的证明，不是完整G或Lean验收。

## 内容

- 四份核心文档：准确结论、全部推导、来源／缺口、最小验证计划。
- `src/check_constants.py`：标准库精确分数与级数包围检查，实际52项通过。
- `src/LocalGapBridgeCandidate.lean`：137行、7 theorem 的未编译候选；真实核、真实有限素数和、条件接合。
- `certificates/`：精确输入输出、运行标准输出、静态文件检查；不是ζ零点或素性证书。
- `sources/`：公开原文阅读记录及输入字节身份；未获得的公开rawPDF和历史零点数据明确标缺。
- `input-excerpts/`：从原任务ZIP原样复制的入口、接口和状态文件，只供来源绑定。
- `MANIFEST.json`、`SHA256SUMS`：本包成员字节清单，不认证数学结论。

## 仅重放标量

```sh
python3 src/check_constants.py --output certificates/constants.json
```

该命令不调用网络、Lean、素数搜索、数值积分或ζ零点评值。解析恒等式、无界范围、已发表零点验证及有限桥不能用它的PASS代替。

完整目标仍缺 `[122568684,16000000000)` 的新有限桥，原 `[10000000,122568684)` 完整初段独立绑定仍pending。无参数Lean供应仍需真实显式公式、有效N(t)和到800000的完整有限验证。没有修改仓库或运行Lean/AX/checker/CI。
