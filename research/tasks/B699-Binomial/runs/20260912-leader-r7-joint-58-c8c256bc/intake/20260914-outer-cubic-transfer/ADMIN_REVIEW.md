# B699 intake 行政复核

范围：只读四路 INTAKE_MANIFEST、总 SOURCES、SOURCE-LOCATION、INTAKE_REVIEW，并按 storage 指针核对 stage、实际仓库、git-recovery blob 清单和四个 upload 外层 ZIP。未修改 stage/仓库，未递归展开嵌套 ZIP，未运行作者脚本、证书、Lean或数学验收。

## 通过范围

- 四路外层成员数：A-outer 185、B-cubic 58、D-transfer 20、D-three-window 229；合计 492。总 SOURCES.members 同样为 492，差异 0。
- 492 个外层成员的 route/member key、mapped repo path、stage candidate path 均唯一；目的字节解析结果：{'PASS': 492}。
- 179 个 main git_reference 均有实际 repo 文件或 blob-cache 文件，且对应 blobs-*.json 的 SHA-1/size/path 记录通过（179/179）。
- 实际仓库 HEAD 为 79a3f52c28aad167903a9eb6744bb8abb62b3479，与复核入口给定固定 SHA 一致。
- 四个原始 upload ZIP 的 manifest 元数据、中心目录成员数/大小/CRC 对账通过；库/归档指针保持为可恢复定位。

## 492/495 统计解释

- 173 = 20 个 local_copy_required + 153 个 local_copy；179 = git_reference；119 = route_reference；18 = library_zip_member；2 = library_archive_reference；1 = library_member_reference。
- 正确的互斥相加是 173 + 179 + 119 + 18 + 2 + 1 = 492。显示的 173 + 179 + 122 + 21 = 495 是重叠汇总：122 已包含 119+2+1，21 又包含 18+2+1，后三个库/归档指针被重复计算。

## 有证据的问题与真实缺口

- 未发现成员去向、字节摘要或来源表的实际不一致。
- Nested ZIP contents were intentionally left opaque; this review checks a nested ZIP member as bytes in its outer ZIP and does not inspect internal members.
- Members classified as library_zip_member/library_archive_reference/library_member_reference remain recoverable through upload/Library locators; they are not copied into the repository.
- INTAKE_MANIFEST records are a staging plan; this review does not copy stage files into the repository.
- Documented A-outer source boundary: Shared BASELINE ZIP remains opaque; historical outer containers, public PDF, and older source closure were not acquired.
- Documented B-cubic source boundary: The earlier previous-five.zip, SOURCES.json, and public PDF were not included in the supplied B archive.
- Documented D-transfer source boundary: B_INTAKE is recovery narrative rather than the original B ZIP/PROOFS; public PDF, historical containers, and complete historical source closure were not acquired.
- Documented D-three-window source boundary: The B-five input is absent; Dtail/general/nonempty historical containers retain selected members only; three nested ZIPs and large members were not recursively expanded.

A、B、旧D、新D的详细外层元数据和入口路径保存在 ADMIN_REVIEW.json；本复核没有把 stage 内容写入仓库。
