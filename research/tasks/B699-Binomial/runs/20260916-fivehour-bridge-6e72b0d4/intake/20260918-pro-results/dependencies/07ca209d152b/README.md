# B699 Pro D · 高幂层数字空档（2026-09-18）

先读 REPORT.md，再读 PROOFS.md。SOURCE_ADOPTION.md区分新证明、接续材料及仅作诊断的旧数据；FAILURES.md和HANDOFF.md记录未解决范围。

## 可调用结论

HG是目标i4..8的原生整行充分消费者。其H02⁺/i5与H025尾部/i6的长空档双块行推论没有待验有限底部。

没有闭合整个H02⁺、整个1280/1530类或任何R7指标；历史覆盖并集的严格差集未审计。

## 重放

需求：Python 3.10+，仅标准库。不要用 -O 关闭断言。

    bash REPLAY.sh

入口依次核对清单、整数身份/实例证书、有界原题回归、再核对清单。重放不联网、不读外部旧ZIP、不拉仓库、不运行Lean。

API示例：

    import sys
    sys.path.insert(0, "code")
    from consumer import make_row_certificate, make_point_certificate

    row = make_row_certificate(i=6, n=2227880, p=13, H=5)
    point = make_point_certificate(row, j=130)

make_row_certificate返回None只表示该消费者不适用。大素数可提供完整p−1 Lucas证书；无证书时限制试除规模，不使用概率素性代替证明。证明本身的素数范围无此计算上限。

可选：python3 -B code/overlap_diagnostic.py 只复现与上一包47个冻结末端的有限诊断，不作为新证明前置。
