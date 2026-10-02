# 已接受pilot的对象恢复导航

PILOT-ORIGINAL-ACCEPTED.json及原CI raw receipts/source-manifest/byte-manifest按接受时原字节冻结，不修改其中历史object路径。2026-10-02 11:29的对象搬移只是行政字节映射，不改变数学源或接受范围，不重新计算旧证明。

原artifact的55个compiled文件、12,526,880字节现存ignored路径：`.tools/b699-lean-20261001-01a0f779/20261002-finite-retry-onehour/runtime/artifacts/37000189936/objects/`。11个逻辑olean模块（含audit）的各parts按原SHA256保存。

逐member的oldrepo_path→stored_path、大小与SHA256见[原对象搬移映射](../runtime/ci/37000189936-object-relocation-map.json)。接受记录里`runtime/ci/37000189936/objects/...`或原LinuxCLI对象路径均先转为原artifact member，再经此映射读取，不把路径搬移当新技术接受。

仓库外原archive为`D:/ResearchArtifacts/b699-finite-retry-onehour/b699-finite-retry-onehour-37000189936.zip`，SHA256 `fa8322e19c237b11e5d5e0e294da452217a0935dd096d185f86c9c937fec5a7c`。archive及compiled cache不入Git；Git保普通source、原日志与来源映射。
