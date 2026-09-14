# B699 Pro B · Dyadic defect and effective height · 2026-09-14

先读REPORT.md，再读notes/PROOFS.md、SOURCE_ADOPTION.md和notes/FAILURES.md。用户最新角色是Pro B，本轮仅i3。R7不变，未Lean／独立人审／Git发布。

## 重放本轮全部新检查

需要Python 3.10或以上，只用标准库；本次实际版本见replay/ENVIRONMENT.json。使用 `-S -B` 禁止site副作用及写入__pycache__，以便保持封包只读。

从解压后的包目录运行：

```sh
python3 -S -B verify_manifest.py
python3 -S -B reproduce.py --out ../B699-ProB-fresh-replay
```

输出目录必须位于包外，且不存在或为空。重放会检验全部manifest成员和未列出文件，重新生成证书、用另一实现检查、核对来源字节、检查对外消费者API，逐字节对比10份冻结数学输出，再复查封包未变。日志、真实返回码、版本和秒数进入输出目录。默认不联网、不运行旧研究脚本、不执行巨大的HEIGHT-B有限枚举。

重放通过只是本轮精确程序义务通过；不把纸面无限证明或BEG全文变成机器证明。

## 可单独使用的消费者

```sh
python3 -S -B code/consumers.py pair 256 64
python3 -S -B code/consumers.py pair 256 64 --with-publication
python3 -S -B code/consumers.py bound 3
```

pair接受十进制或0x十六进制整数。DYADIC不依赖出版输入；LOG-BAND需显式带入BEG。False仅表示该充分条件不接受，不是反例。bound返回严格高度 `n<2**E` 中的E（十六进制），不会构造双层巨数，也没有声称该有限集合已排空。

## 目录

- `notes/PROOFS.md`：全部新无限证明、所需初等前置的重证、完整例族／差集及出版专门化。
- `code/`：生成器、作者第二实现、来源审计和对外API；无第三方依赖。
- `evidence/certificate.json`：精确整数／十六进制证书和符号例族规格。
- `outputs/`：10份冻结数学输出，不含运行时间。
- `sources/`：精确来源映射、最新B完整原ZIP及历史D层次、A/D边界参考、外部定理的准确接口和原字节未取得声明。
- `intake/`、`replay/`：输入哈希、实际版本、运行记录、未删除的开发失败说明。
- `MANIFEST.json`：自身之外全部成员的SHA-256和大小。

新生成的最终ZIP和干净解包重放收据在包外提供，避免自引用ZIP哈希。证据等级不因封包完整性提升为独立审读或Lean。
