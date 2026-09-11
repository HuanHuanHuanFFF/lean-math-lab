# B699 Leader intake：原文摘取归档

本 run 只做快速行政归档：从四份来源 ZIP 按原字节摘取根层 `README.md`、`REPORT.md`、`HANDOFF.md`、`SOURCES.md`（存在即取），并摘取 Pro-B/Pro-C 包 `notes/*.md` 的直接子层。摘取清单、原路径、归档路径和 SHA-256 见 [`ARCHIVES.json`](ARCHIVES.json)。未导入 `input/` 嵌套旧报告、程序或大型 JSON，也未执行附件代码。

这些文件是原文摘取，不是完整证据包。要完整复现，须取得对应原 ZIP，并在新的目录按 ZIP 原结构解压；本摘取目录不能作为复现根目录运行。原文中的相对链接依赖完整 ZIP 目录结构。`ARCHIVES.json` 同时登记历史 `B699-R9-ABC-context.zip` 的恢复入口；该大包仅作恢复指针，未导入本 run。

## 当前接收口径

A 已交付 i=12/15/20 的纸面推导与精确证书；仍待独立审读和 Lean。B 光滑窗口与 C 统一核各新增整指标 0，分别给出无穷子族结果；B 联合接口包同样没有新增整指标闭合。Leader 未执行数学核验，不登记新增 Lean 接受。

基线登记：PR #9 已 squash merge；main `eaa8d5760117b0b1133424548a162d28e23cc361`、leader `bfb2e1d2b0a0366f5a67ef23a7c9c3782e248447`，两者 tree 均为 `449d1e4a62df0c74df446cb6e71ec7150684d5b0`。该处只记录已确认基线，不预写未发布的最终 SHA。

## 目录

- `receipts/<来源标签>/`：四包原文摘取。
- `prompts/`：新版 Lean 提示词和三份已派发历史提示词；状态说明见 `prompts/README.md`。
- `frontier.md`、`handoff.md`：本次简洁前沿和交接。
