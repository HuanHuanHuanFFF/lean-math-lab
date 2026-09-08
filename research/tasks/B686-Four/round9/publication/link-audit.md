# round9 链接与发布卫生审计

审计范围是当前 round9 工作区的 58 个 Markdown 文件，以及暂存/工作区文件名和有限文本模式。没有修改冻结材料，没有重跑 Lean 或算术验证。

结果：本地链接 82 个存在，真正缺失的本地链接 0 个；远程目标 20 个（去重 16 个）；绝对原机器路径 0 个。解析时排除了 Markdown 代码 span，因此 `even-owner-sparsity.md` 中的数学 `(1+i)`、`(1−i)` 没有被误报成链接。

工作区卫生检查发现 19 个编译输出文件、总计约 9.5 MB，均属于 uniform 验证镜像或本机 `.olean`，暂存文件中没有编译缓存。新机器需要用已有 `verify.py` 重新构建这些对象；它们缺失不代表源码丢失。

外部 ELS PDF 和页面渲染当前存在于工作区，但 `independent/external/.gitignore` 明确排除 `ELS-1988-26.pdf`、`ELS-page-*.png`、`ELS-jpeg-*.jpg`，且暂存文件中没有 PDF/图片。`external/README.md` 已记录远程来源与 SHA；新机器若需视觉复核，应从远程地址重新取得并核对指纹。

没有发现绝对原机器路径、超过 10 MB 的临时文件、暂存凭据命名文件，或高置信私钥/AWS/GitHub token 模式。16 个去重远程链接是来源和文献依赖，需要网络访问，但不构成丢失的本地发布文件。

完整结构化结果见 [link-audit.json](link-audit.json)。
