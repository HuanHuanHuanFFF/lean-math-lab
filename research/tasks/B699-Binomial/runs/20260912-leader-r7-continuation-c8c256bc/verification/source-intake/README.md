# 来源与恢复检查

结果见[result.json](result.json)。检查原ZIP、全部落地文本及完整恢复环境的文件字节；不执行作者数学脚本或Lean。三份原ZIP及其Library身份见[ARCHIVES](../../ARCHIVES.json)。

重现：在本批目录运行 `python3 restore_archives.py --archives-dir <原ZIP目录> --output <新目录>`，再逐成员比对ARCHIVES中的大小与SHA256。已有目标目录会被拒绝，避免覆盖历史环境。
