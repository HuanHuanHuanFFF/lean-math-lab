# 部分贡献移植：Oct7预算内收尾

用户授权的最多5小时窗口为北京时间02:40:25–07:40:25，不延期；证明进程内部截止07:30:25以预留交接。最后一次资源诊断实际在07:10:43结束，此后只保存核验记录。本轮没有向Conjectures.io提交、创建外部PR、签名、登录、建钱包或付款。

## 结果

来源提取、压缩和政策适配已有可复用候选：七份自包含源码共3,083,914字节，最大832,915字节，源码门0硬错误/6人审提示，保持目标 `{1,2,11,29}∪[35,30000]`、全部合法Nat n/j、同实际Prime p≥i与两个完整choose。精确来源及哈希见 [BUNDLE](BUNDLE-SNAPSHOT.json)。候选大小合格不等于数学验收。

步骤3没有完成。新便携版本只完整 `{1,2}` 独立接受，见 [Small R8签件](reviews/SMALL12-R8-REPLAY-ACCEPTED.json)。另外六叶没有通过完整fresh编译/字面类型/正常内核/独立拒绝式Std3链，完整S组合未执行。原研究已验完整范围仍是上述S，未丢失；本轮原题新增覆盖0，原题仍未闭合。不能把本轮包装失败当作原证明被推翻。

## 实际失败与改善

- A151：恢复getter/依赖与Bool桥，Nat普通结构递归的354goods/209layers解码对照和真实goods检查已通过。真实完整i44 Row归约仍停住，103.748秒、采样峰值约12.853GB，未算出isTrue或isFalse，物理OOM=false；具体内层原因未知，不能当反例。完整A151仍900秒超时。
- i11 Above：命名空间、局部定义重写、额外rfl及多态moment_sum局部化问题分别修补，保184声明及全部原数据；Above/Below完整源仍900秒超时，没有完成验收。
- Middle：完整组出现未确定起点/记录证明metavariable，修成typed列表及显式起点后，首128段和16行高度代表检查已通过。两个完整叶仍退出137。随后完全相同Middle323源的独立资源诊断确认13.25GiB容器硬限OOM、70.657秒，无对象，容器已清理；仅此复现有明确OOM证据，不能追认其他旧137原因。
- High：去除非消费者必需的匿名example，普通fuel具有条件soundness且不假设任意输入64步足够；空列表末尾证明做定点类型修复。完整叶仍137，缺少其现场State证据，原因未知。

决定性记录：[R8六拒收](reviews/R8-SIX-LEAVES-NOT-ACCEPTED.json)、[真实行/组诊断](reviews/PROFILE-9-LAST-FIVE-INDEPENDENT-DIAGNOSIS.json)、[R10三拒收](reviews/R10-SELECTED-THREE-NOT-ACCEPTED.json)、[同源内存诊断](reviews/PROFILE-11-LAST-RESOURCE-INDEPENDENT-DIAGNOSIS.json)。每次证据ZIP校验摘要、安全提取后已删除；源码与普通决定性记录保留。

## 下一授权窗口的第一检查

不重复本轮六叶整900秒。A先按[同一完整Bool目标分块方案](implementation/profiling/20261007-r8-row-semantics/A151-ROW-CHUNK-CONTINUATION.md)验证五合取/16层块，不缩354goods或209layers；再决定完整A的组织。Middle先定位完整源哪一组/高度声明累计耗尽内存，保持节点及域，实际测完再改变表示。High先用相同完整源获取真实State/peak/events再改算法。i11先获取确切完成义务或成本位置，再选闭合义务全局化，不能仅放大预算。

当前七源均保留，除Small外明确pending；本轮停止新数学、候选修改和CI重试。生成/审计必要支持已发布，[行政复现记录](environment/ADMIN-REPRODUCTION-SUPPORT-R8.json)分开记录两旧输入的固定Git blob恢复与非本轮必需的历史悬空导入。未选历史中间稿留在本地，不要求将其全部发布或删除。
