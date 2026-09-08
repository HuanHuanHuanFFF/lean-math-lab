# 外部资料来源与本地参考件

本目录的公开项目记录来自[williamjblair/lean-proofs固定提交](https://github.com/williamjblair/lean-proofs/tree/aff1d30b3b1c6bd705810fa4d588b03940fb31df)。相应MIT许可文本保留在[本轮复用记录](../../reuse/LICENSE-Will-Blair.txt)。这些外部记录是待审计材料，不能替代本仓的源码与命题验收。

ELS论文从[作者资料站原PDF](https://www.renyi.hu/~p_erdos/1988-26.pdf)读取，用于核查印刷页507、508、521的条件。本机文件名为ELS-1988-26.pdf，其SHA256为 `99517f5d11bb9ecba3ad036603c6544e295ceeca1cf3782fddc43453f9d91cba`。论文全文与本机页面渲染保留在本地、由本目录.gitignore排除；仓库发布来源链接、指纹和[条件审计](../external-decision-review.md)，不重发论文全文。

独立分支的checkpoint-hashes.json是当时本机证据快照，包含这些下载件和渲染的哈希，不能理解成每个条目都由Git分发。算术复核脚本不依赖该PDF或页面图片。需要重新目视核查时，从上述原站取得论文并核对指纹；新渲染的字节不必与原机器相同。

magma-rank-live.xml为本次官方计算器返回的计算记录，相关参数、证明标志和未穷尽标志见条件审计。不得只凭外部摘要或本目录文件名把整个686问题标为已解决。
