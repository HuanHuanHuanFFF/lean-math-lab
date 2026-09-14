# B699：A / B / 新D 下一轮完整输入包

用户先取得提示词和本包，自行投递后再通知Leader整理。三个任务共用这一份附件；建议先A＋新D，B待研究槽位空出后投递。旧D只作为交付来源，不再另派一轮。

## 开始

1. 阅读 `tasks/COMMON.md`、`context/RESEARCH_SNAPSHOT.md` 和对应 `tasks/A.md`、`tasks/B.md` 或 `tasks/D.md`。
2. 在本目录运行 `python3 prepare_inputs.py A`（或B、D）。每路均恢复四个当前原包，便于按任务选择读取；这只是字节恢复，不做数学计算。
3. 在恢复目录之外开展本轮工作。必要历史嵌套ZIP按原作者入口按需恢复，不递归展开全部历史证据。

| 路线 | 完整任务 | 主报告路径（恢复后） |
|---|---|---|
| A-2 | tasks/A.md | inputs/A/B699-ProA-outer-exponent-20260913/REPORT.md |
| B | tasks/B.md | inputs/B/REPORT.md |
| 新D（本輪接续） | tasks/D.md | inputs/D-new/B699-ProD-three-window-threshold-20260913/REPORT.md |
| 旧D（只作输入） | — | inputs/D-old/B699-ProD-R7-transfer-verified-20260913/REPORT.md |

## 完整性与来源

`archives/`保存用户四个当前ZIP的原字节；仅去掉上传文件名中的`(1)`以便跨环境引用，映射和SHA-256见`ARCHIVES.json`。A约50.9 MB，其嵌套58族包保持原样；新D内含旧D、B及Dtail冻结输入，外层仍独立保留本次用户提供的四包身份。不修改任何作者报告、证据或历史manifest。

`administrative-review.md`和`provenance.json`记录本轮字节/路径检查及历史来源缺口；它们不是数学或证书接受。四份当前交付完整可取得，不代表每个历史ZIP容器或出版论文均随包。完整性检查不运行作者任何verify或reproduce脚本。

`PACKET_MANIFEST.json`覆盖除其自身外的全部外层成员。恢复脚本先核对其中任务正文和原包，再安全解压；若已有不同内容的恢复目录，则拒绝覆盖。后续会话不需要访问Leader的scratch目录或Git认证。
