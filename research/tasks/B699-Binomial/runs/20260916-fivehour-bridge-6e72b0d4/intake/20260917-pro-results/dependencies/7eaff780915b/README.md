# B699 Pro E · valuation-gap closure

负责人：本会话 Pro E 主线程。独立本地 run `B699-ProE-allocation-coupling-20260916`；写入范围仅该目录。没有本輪用户指定的总时限；研究、验收和交付均在本次响应内完成。初始路线与资源见 notes/START.md；路线变更见 notes/FAILURES_AND_DECISIONS.md。

**入口：[OVERVIEW.md](OVERVIEW.md)。** 结果：NC3 ⇒ v2(n)≥4v2(j)+9。作者纸面＋完备有限证书，未 Lean，R7 不变。

- [PROOFS.md](PROOFS.md)：完整前置、归约、系数清单、模周期证明及原题消费者。
- [REPORT.md](REPORT.md)：实际贡献、验收范围和仍无界参数。
- [SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)：冻结输入字节与真正使用的数学依赖。

仅需 Python 标准库，无 CAS、网络、编译器或外部整点程序。建议在独立输出目录复现，避免改写冻结输出：

```sh
python3 -S -B scripts/build_certificate.py --output /tmp/b699-vg8/certificate.json
python3 -S -B scripts/verify_certificate.py --certificate /tmp/b699-vg8/certificate.json --output /tmp/b699-vg8/acceptance.json
```

生成的 certificate.json 与 verification/VALUATION_CERTIFICATE.json 应逐字节一致；acceptance.json 的 seconds 是实际运行耗时，比较时应排除该字段。不要使用 Python -O 禁用断言。

生成器会自行给出证书失败状态；检查器重新枚举完整有限系数超集，逐个验证所有模剩余类并核对原始二项式端点。验收主路径只有 build_certificate.py 和 verify_certificate.py；其他 *_probe.py 与 *_discovery.json 是探索记录，不承担已证明结论。

MANIFEST.json 保存本包普通文件的字节数和 SHA256（不包含清单自身）。未修改 Git，未提交、推送、发 PR 或发布结果。
