# B699 Pro E · Order-five obstruction

阅读顺序：REPORT.md → PROOFS.md；续接用HANDOFF.md；失败边界用FAILURES.md。

主要成果：规范最小支的原q理想类之r次幂必须有精确阶5；排除全部{2,3}-光滑v及更大可变支持族。不是全i3闭合。

## 离线只读重放

    python3 replay.py

使用Python3标准库，不用网络、Lean或CAS。核对SHA256SUMS、两份有限精确检查结果、坏证书拒绝；不会重跑冻结h13证明或探索性扫描。

仅在新路径重建证书：

    python3 src/generate_certificate.py /tmp/order5-rebuilt.json

生成器拒绝覆盖已有文件。然后可对新证书单独运行：

    python3 src/verify_exact.py /tmp/order5-rebuilt.json
    python3 src/verify_independent.py /tmp/order5-rebuilt.json

数学主链为纸面证明并采用明确列出的无条件阶理论；代码验证其有限代数和整数末端，不是理想理论形式化。

sources/PREVIOUS_H13_EVIDENCE.zip 为按原字节保存的前一轮证据，内部已有更早低侧原件。新默认重放只校验这个冻结ZIP的字节哈希，不把它重验为新的验收结果。
