# 20261004 nonprime：普通文件归档入口

两包分别记为A（nonprime FINAL）/B（Nonprime MASTER），只是本接收来源标签，与i9/i3作者方向A/B无关。

阅读从 [接收摘要](SUMMARY.md)、[逐阶段与原件导航](ROUND_INDEX.md)、[材料审读](REVIEW.md)、[限定实测状态](VERIFICATION_STATUS.md) 开始。全部原路径见 [成员表](MEMBERS.tsv) 与 [机器映射](MEMBERS.json)；[来源回执](SOURCE_RECEIPT.json)、[完整性统计](INTEGRITY.json)、[作者校验表](SOURCE_CHECKSUMS.json)、[行政复核](FINAL_CHECK.json)、[恢复复核](RESTORE_CHECK.json) 各自保留边界。

11个唯一ZIP容器，796条成员记录（普通679、嵌套引用25、目录92），284个不同普通文件哈希，新增283个普通文件/974938 bytes，精确复用1个。706项同容器校验匹配、377项按准确哈希定位；没有源校验不符或缺失。共享容器按hash只展开一次，每个父成员仍有映射。

## 读取与恢复

所有原包在 `E:/Download`，Git中仅普通文件。附件脚本、任务提示、候选Lean及旧报告按原字节保存为来源数据；没有因为提取而获得执行/采用/验收资格。

从本目录运行 `python locate_member.py --help` 搜索原名。`python restore_members.py --archive <唯一容器哈希前缀> --destination <仓库外或ignored目录>` 默认只计划；加 `--write` 才恢复普通文件，不重建ZIP、不执行程序、不覆盖不同字节。`python verify_intake.py --downloads E:/Download` 重放原件及映射，属于行政校验。不要直接从hash objects目录导入Lean模块；真正接入由源所属执行者恢复规范模块名并重新核验。

原包SHA-256：

- B699-nonprime-FINAL-20261004.zip：`d86a89f8cf0e7a3b54af54d96e0c4a2b3576698940e1add09f482bbfdbf16553`。
- B699-Nonprime-4884-4888-MASTER-20261004.zip：`7ad6bf4211a93973a36e7695c8b0d335a229998908ee16218c7b4c3f36af17b0`。

## 具体来源不足

作者整合报告当时没有上游FiniteConsumerLegacy完整传递依赖、129对象及正常checker入口；对另一会话A只能读Library文本、不能物化原ZIP。现在A最终包已一并接收，其原始成员可按MEMBERS定位，不能倒填作者旧轮已验。原Lean工作分支中的供应器/签件由具名审读定位，使用固定commit链接，不把整条工作分支合进此次材料接收。
