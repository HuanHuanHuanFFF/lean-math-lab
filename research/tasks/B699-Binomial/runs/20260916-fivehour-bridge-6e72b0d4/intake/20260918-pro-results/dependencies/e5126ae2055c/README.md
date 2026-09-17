# B699 Pro D · 仿射两窗口二次消费者

入口：REPORT.md；完整证明PROOFS.md；采用边界SOURCE_ADOPTION.md；失败记录FAILURES.md；接续HANDOFF.md。

主结果是无H02前提的i5二次移位gcd/完整幂消费者；另在H02⁺完成q3/q4余部R³≤n的整行闭合，并给显式过滤后的i6/i7/i8转移。

主定理自含；齐次推论另依赖冻结QIG与已接受n<2^37。没有新增完整指标，R7不变。

## 重放

Python 3.10+，仅标准库，Linux/macOS可运行：

```sh
bash REPLAY.sh
```

也可依次执行`python code/check_manifest.py`、`python code/assemble_finite.py`、`python code/verify.py`、`python code/regression.py`。最后两个默认不覆盖原接受JSON；verify另重建确定性行名单。REPLAY.sh将新JSON与日志保留在replay-latest。

数对接口是code/consumer.py中的pair_certificate(n,j,target=5)。返回None仅表示当前判据未决定；返回的witness_cofactor不是声称素数，而是其每个素因子均为共同见证。

whole-row函数complete_power_row_test明确要求另有p的素性证明，不将未认证的p当成素数。数学主定理中的Q始终是完整源素数幂。

精确字节清单MANIFEST.sha256；源身份sources/PROVENANCE.json。代码不访问网络、仓库或其他会话，不安装额外依赖。
