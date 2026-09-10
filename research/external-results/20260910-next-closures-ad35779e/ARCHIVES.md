# 原始附件与 ZIP 恢复

本次两个原 ZIP 已由用户作为附件提供，原件未修改；文件名、原件身份、字节数与 SHA-256 见 [MANIFEST.json](MANIFEST.json)。Git 保存全部223个文本成员，4个嵌套 ZIP 保留在相应原附件内，位置见 [ARCHIVES.json](ARCHIVES.json)。

需要运行原包的入口时，优先解开原附件到独立工作目录。若从 Git checkout 运行，按清单把嵌套 ZIP 恢复到对应 delivery 路径并验 SHA-256；已有同名文件只有内容一致时才能复用。所有原始报告、验证器、数学证书和历史日志保持原字节，避免修改旧 MANIFEST 来适配新位置。

原件：B699-i13-global-closure-evidence(1).zip；B699-Pade-three-index-closure-evidence-20260910(1).zip。压缩包在文件系统中解析或通过支持的文件通道传输，不输出 Base64。
