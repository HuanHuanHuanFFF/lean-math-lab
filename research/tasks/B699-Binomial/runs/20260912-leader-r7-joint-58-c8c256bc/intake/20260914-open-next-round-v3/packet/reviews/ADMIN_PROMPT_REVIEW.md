# open-round-v3 行政提示词审查

**结论：PASS。** 未发现必须修改项。

本审查只核对三份可复制提示词、任务入口、资料导航、作者报告所声明的范围与证据等级；不做数学研究、证明验收或性能比较。四个原 ZIP 未全文读取、未递归解压；未运行作者代码或 `prepare_inputs.py`，未修改 packet 或仓库。

## 核对结果

| 项目 | 判断 | 核对依据 |
|---|---|---|
| 角色、入口与责任范围 | PASS | `PROMPTS.md` 与 `tasks/A.md`、`tasks/B.md`、`tasks/D.md` 分别对应 Pro A=i9、Pro B=一般 i3、Pro D=i4–i8及跨指标；`README.md` 的投递表与四个 archive 路径一致。D正文明确说“上一轮误收到B任务”且“恢复Pro D身份”，并明确保留 D-as-B 的 i3 成果、不得当作 i4–i8 已推进。 |
| 自主路线与旧 HANDOFF 处理 | PASS | `README.md` 说明方法由研究者决定、旧 HANDOFF 只是历史意见；`tasks/COMMON.md` 明确无需先完成旧建议。A/B/D 三份正文都允许换表示、换方法或放弃旧路线，只固定负责范围、目标交付和必要权限；没有自动启动研究会话的指令。 |
| 原题与关键保护 | PASS | `tasks/COMMON.md` 保留原题的全部量词 `1≤i<j≤⌊n/2⌋`、共同素数 `p≥i`、`p=i` 情形及完整素数幂；明确 `D=V` 只可在完整 `noCommon` 下使用，并区分同一输入、`Π` 与弱投影。 |
| 证据等级、时间与权限 | PASS | `tasks/COMMON.md` 分开纸面证明、实验、有限计算、证书、作者第二实现、独立审读、Lean、公理审计和 Git；明确当前不派 Lean、Git 由 Leader 按用户授权处理、无用户总时限、不自行启动其他研究会话。报告交付要求含准确量词、来源采用、失败边界、运行记录和恢复入口。 |
| 原件恢复与证据缺口 | PASS | `sources/ARCHIVES.json` 固定 A、B、D-as-B、D-quartic 四份原 ZIP 的 owner、路径、字节数和 SHA；`README.md` 给出 A/B/D 按需恢复及嵌套原件按需读取的入口。`context/EVIDENCE.md` 明确 A/D-as-B 外置复验收据未单独收到、BEG 原 PDF 字节/SHA 缺失，未把说明文字冒充这些证据。 |
| 报告范围是否被提示词夸大 | PASS | A提示词保留“i9仍为58族、外层参数无绝对界”；B提示词限定为固定缺陷后的高度与部分无界输入，且明说一般 i3 未解决；D提示词只把 D-as-B 作为已保留的 i3 输入，主责仍为 i4–i8 与跨指标。上述边界与四份 `REPORT.md`、`FRONTIER.md` 的作者声明一致；本审查不判断这些数学声明真伪。 |
| 导航可访问性 | PASS | `README.md` 中的 `tasks/A.md`、`tasks/B.md`、`tasks/D.md` 链接均存在；提示词附件名与 `PACKET_MANIFEST.json` 的 `filename` 一致；manifest 列出的 33 个路径均存在，其中 4 个为原 ZIP。`ARCHIVES.json` 对 reading 副本逐项绑定 source archive/member/hash。 |

历史材料中 `reading/D-as-B/SOURCE_ADOPTION.md` 自称上一轮 **Pro B**，这是被保留的来源署名；当前 `README.md`、`tasks/D.md` 与 Pro D 正文已经明确纠正本轮身份，因此不构成入口或角色冲突。

## 已阅文件 SHA-256

以下是本次实际阅读的文字文件固定哈希；原 ZIP 内容保持不透明，仅记录其 manifest/source index 中的身份哈希。

| 文件 | SHA-256 |
|---|---|
| `README.md` | `d35482dfb57677f6a571113e1709c3d4b9811d402772479ac30715ba394735aa` |
| `PROMPTS.md` | `2c08dec36cfe5deb63a4fcdf109fbcc6f96776c9314f6cbf888fadd0a554804e` |
| `PACKET_MANIFEST.json` | `19dc7b42d01d3ba4e47b642ce4982e1a5cdfd4584fed3628e8085764d46a4aa4` |
| `tasks/COMMON.md` | `a05aa68b3f90c3c67690dad681910fad7a06c7b7e214b9165f82cadcedb9264e` |
| `tasks/A.md` | `0b777db03622ae85a85598fb446e5d7c1e21f62a4b5449f1255556af2e1bba64` |
| `tasks/B.md` | `e39cf7931f1b40f2cd0fa003cec58ae383d706e9d97cd5eadb203ffad7ec7bc7` |
| `tasks/D.md` | `0113f6dac1194ed0009dbf9a2eb5d49c922bd1b164832a05fb090684fe87c19a` |
| `context/FRONTIER.md` | `4cf761aaeb6fd525f9cb46f3bcb131988b3fc5b4549f2a4cc624d4560318fb51` |
| `context/EVIDENCE.md` | `b56135fa5a708540c2a95a418ba7665cb2356b5d5f80c7a3f1886d30bd1d5a6f` |
| `sources/ARCHIVES.json` | `24486906450f885afa3ac177872f966f519a91d740ff7c8f3986d89739c815f9` |
| `reading/A/REPORT.md` | `42e9b97a763ae609216e7ee41185a84d2444c585a984bf0426151097cfa2ee05` |
| `reading/A/SOURCE_ADOPTION.md` | `c9c381ce4486ed456383513015d6bbff7b8c21bdf01ff3ebfd726d40c302ff53` |
| `reading/B/REPORT.md` | `9beb318274169a0ecbc3a19dc62f57f506e46afdc075ce980eee0161e6261184` |
| `reading/B/SOURCE_ADOPTION.md` | `5c7d2aba5428df1e2182c34f83c2bfd8ddedc29f0911019c0ca91ecee56ead1a` |
| `reading/D-as-B/REPORT.md` | `abdb7f2541e231a07103f85a68ecea93c5c2d1e8e14156b3ee0654a07b5fd581` |
| `reading/D-as-B/SOURCE_ADOPTION.md` | `8af16b4b69a08d34bea2d2db3fe86b150d5389e6362142cbbdb48e307d1b7708` |
| `reading/D-quartic/REPORT.md` | `16fa2706204884fe5617539d3d9eacab9025d84d011d3048797e6730aaf1c2e3` |
| `reading/D-quartic/SOURCE_ADOPTION.md` | `c7fbc52f438d3507d200767bbbf479aff3b7174b3b98d7efed6a5a91ddd4da77` |

四份原 ZIP 的索引 SHA 分别为：A `eb6ac52d15127bf29f4cded7929a696aa5aaf0a04aaf0c9f25b16ec881c4dc7e`；B `faf79dae94288a1935a24776ed2d0d3ff969346075c91a6a1666e15f19ff0525`；D-as-B `994594f197904746cab01000e4f5ada864e9d24056f1f8230135fe106a3a29e3`；D-quartic `6fe555795567a3cac52d985767727a6e4693f8717c7af93c5de85308c0427065`。
