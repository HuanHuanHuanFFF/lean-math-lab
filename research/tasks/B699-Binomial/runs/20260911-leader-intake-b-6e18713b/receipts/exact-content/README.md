# B699 R8：精确内容与共同进位证据包

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。

新增的是自包含的纸面内容定理和完整无界子族，不是整指标闭合。R8={3,4,5,6,7,8,9,14}不变。新链没有数值出版定理前提，尚未Lean化／独立人审。

## 重放

要求Python 3.11或更新版本，标准库即可，不联网、不需要SymPy、GMP或Lean。

```bash
python3 code/verify_manifest.py
python3 code/reproduce.py --record replay/local
```

record必须是replay下新建的空目录。脚本执行6个新检查，保留真实输出/日志和SHA，逐字节对照evidence中的冻结数学输出；拒绝覆盖旧日志。

## 文件

- notes/PROOFS.md：全部量词、逐层兼容性、p=i、内容反射、三次消费者和无限族证明。
- evidence/：6份确定性新输出；其中content含完整逐素数因子记录，consumers含完整共同除子和Bézout证据。
- code/check_independent_dp.py：不使用闭公式或前驱表的独立最小化实现。
- SOURCE_MAP.json、sources/、SOURCES.md：14份实际采用源成员及5个原ZIP恢复映射。
- notes/FAILURES.md：真实失败及未覆盖范围。
- replay/acceptance/：发布前的真实完整重放；时间/内存字段不是Lean成本。

不重复封装数百MB的历史原ZIP。所有新检查的输入已包含，无需恢复旧包才能重放。若需与原件对照，把SOURCE_MAP所列原ZIP按记录文件名放入一目录，执行：

```bash
python3 code/prepare_sources.py /path/to/originals
python3 code/verify_sources.py replay/source-originals.json --original-dir /path/to/originals
```

恢复器先核对每个原ZIP的完整SHA，再读取确切成员；既有不同字节文件会被拒绝覆盖。原ZIP只读。

MANIFEST覆盖全部非replay静态文件，排除自身及Python缓存。replay中的每次运行另保存实际输出哈希。数学优先权未认证；没有用有限扫描支持无限结论。
