# B699：端部7的完整闭合

本轮独立工作目录：20260917-r7-thue（建立时以Thue路线命名，实际成功路线为Pell与显式对数；保持目录身份）。负责人：本会话Pro E。写入范围仅本包。原题及等级见OVERVIEW.md。

实际开始UTC：verification/START.json。用户未给本轮总时限，没有继承旧轮预算。主线程执行，未派子agent。未修改仓库、提交、推送或发布PR。

从 **OVERVIEW.md** 接续；完整数学在 **PROOFS.md**，来源在 **SOURCE_ADOPTION.md**。

新结论：NC3不可能有完整第二窗口端部R=7；旧四格混合也排除。顺带替换L>1的旧特定整点表依赖。完整i3仍未闭合。

## 复现

在本目录运行，使用Python3标准库即可：

```sh
python3 -S -B scripts/build_certificate.py --output /tmp/b699-e7/cert.json
python3 -S -B scripts/verify_certificate.py --certificate /tmp/b699-e7/cert.json --output /tmp/b699-e7/acceptance.json --negative-tests
python3 -S -B scripts/regression.py --output /tmp/b699-e7/regression.json
python3 -S -B scripts/check_manifest.py
```

完整无限结论由纸面证明及一般Matveev定理承担；Python负责明确的整数、向外舍入区间和完整有限证书。未Lean、未独立研究者审稿。没有浮点数进入接受链。

所有冻结输出不被默认覆盖；重放请使用新输出目录。历史来源保持原字节，映射见verification/SOURCE_FILES.json。
