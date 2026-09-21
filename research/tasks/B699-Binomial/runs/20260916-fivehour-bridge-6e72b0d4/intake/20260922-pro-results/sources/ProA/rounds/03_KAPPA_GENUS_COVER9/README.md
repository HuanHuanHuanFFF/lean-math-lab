# B699 Pro A / i9：KAPPA-GENUS-COVER9

主结论：同一个冻结K152的固定代数覆盖从≤10推进到≤9；没有EDGE9或原题完整闭合。
阅读顺序：REPORT.md → PROOFS.md → FAILURE_BOUNDARIES.md → HANDOFF.md → SOURCE_ADOPTION.md。

## 离线重放

```sh
python3 -B code/reproduce.py --out /absolute/nonexistent-directory
```

需要Python3.10+、g++（C++17）和Boost.Multiprecision头文件。不依赖网络、旧证据ZIP、旧仓库或符号CAS。
输出目录必须不存在。程序重建31批根门，校验20457个完整子式、低次三缺重分类、2035状态账本、
九分量边界和负面测试；不重跑未修改的历史前置全链。

最终状态：`PASS_NEW_KAPPA_GENUS_SAME_G_COVER9`。
作者原始日志与收据保留于verification/author；干净解压重放回执置于ZIP之外，避免自引用哈希。
PACKAGE_CONTENTS.md提供目录说明，MANIFEST.sha256保护包内文件字节。
