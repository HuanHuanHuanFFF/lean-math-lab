# 固定来源和附件

| 来源 | 固定标识 | 用途 |
|---|---|---|
| main／已合并PR8 | aafecac7192f33215368489ca9b09b98c0279308 | 上轮整合基线 |
| VPS已发布成果 | f71b38c0d9ef9e477b9214084549872b39a150dc | 29/35/36/37、分块核验基础、失败记录和CI工具 |
| 后续CI源码 | be86047704b158593ef0b20d12a70d937aed3489 | 38..45在CI34525396228完成 |
| i18原始ZIP | SHA256 6f4334c937eed01a522d16e9de6618076b751d173fb4fb8614d5fd67370aa9f6 | 新全域闭合 |
| R13原始ZIP | SHA256 9c8f504fc35c4652a2096ad6b947bbb1691eb4d0fa83dfffb5e6860babba1bd4 | 第一轮中间结果 |
| R12原始ZIP | SHA256 5c87cad240bd8b67b20034d22247740194747894745f2e0ed2f2569b3ce34862 | 第二轮中间结果 |
| VPS恢复ZIP | SHA256 edce6e37e5bb90b3e0888d958c8c552334c2cd0dc3327bb8663dcf4ca1ef3934 | 已取回9份原始文本证据artifact＋共享接受对象 |

给两个Pro的同一附件：`B699-R12-dispatch-context.zip`。这是对三包成员按原字节恢复的紧凑传输包，含完整来源映射和恢复脚本，不把重打包SHA冒充原始ZIP SHA。原始三包保留在用户附件中；原报告和交接另原字节归档进各自run。

给huan：同一上下文包、`B699-20260911-recovery.zip` 和 huan任务文件。huan不能访问Leader scratch路径；由用户下载放入huan可访问目录，或使用其环境确实有权读取的附件接口。不以不可访问的Library或GitHub artifact URL代替交付本地文件。

完整恢复包下载：https://chatgpt.com/api/library/files/libfile_1e26032380308191975282c8727e981e/download （用户可下载后转交；不假定huan拥有此URL认证）。
历史核查报告：https://chatgpt.com/api/library/files/libfile_1d7bf3fc2dd881918eb597f6be4e5bdd/download 。

CI：https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/34525396228 。CI文本artifact原保留1天，已从中恢复并保存；8份行对象缓存原保留30天，本恢复包不含这些行对象。不要把Linux缓存自动视为huan平台可直接执行的工具链。


共用上下文包下载：https://chatgpt.com/api/library/files/libfile_c68f83ebd46081919a35867cbcfc3109/download （用户下载后转交；恢复和来源说明见包内 navigation/SOURCE_MAP.md）。

逐成员来源与校验值保存在共用ZIP内 `PACKET_SOURCES.json`；仓库只登记包级元数据，避免在会话中读取整份成员清单。
