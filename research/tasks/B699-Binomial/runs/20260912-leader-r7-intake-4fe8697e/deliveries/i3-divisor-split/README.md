# B699 R8 · i=3 除子分拆

先读 REPORT.md 和 notes/PROOFS.md。

主结论：β为不超过7倍任意素数时的完整子族，以及两侧有效高度。不是完整i3闭合。

复现：`python3 -S verify_manifest.py`，然后 `python3 -S code/reproduce.py --record replay/local`。
需要Python标准库、C++17及128位整数。仅新数据与新检查重跑；旧ZIP只验证字节。
