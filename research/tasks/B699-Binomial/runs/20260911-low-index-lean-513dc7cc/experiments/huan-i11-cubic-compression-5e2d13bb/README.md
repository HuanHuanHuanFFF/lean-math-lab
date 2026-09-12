# i11 六对立方压缩的全局拼装候选

负责人 `/root/pade_construction`；唯一写入本目录，未运行Lean/Git，未改已验源。开始2026-09-11 15:08:35 UTC，20分钟检查点15:28:35 UTC。Lean源于15:24:29冻结。

精确目标：给定原题的11<j、j<=n/2、not Common n11j，以及**单独的初始假设 n<2^15360**，再给定六条明确的有限pairCheck=true证书，推出n<2^109。六份数值接受与初始高度都没有被升格为本包已证明的事实。

## 固定六对

SixPairRows只存六个List BlockDatum，字段rows23/25/27/35/37/57。每项元素仍是原BlockDatum{u,L,b0,v}，不复制或替换任何block checker。

| 字段 | p,q | astart | amax | cut |
|---|---|---:|---:|---:|
| rows23 | 2,3 | 45 | 15359 | 68 |
| rows25 | 2,5 | 44 | 15359 | 66 |
| rows27 | 2,7 | 43 | 15359 | 65 |
| rows35 | 3,5 | 32 | 9691 | 75 |
| rows37 | 3,7 | 32 | 9691 | 75 |
| rows57 | 5,7 | 32 | 6615 | 109 |

所有w=10、H=2^15360。每个checkpq假设的原式都是 `Math.B699.CubicBlockCover.pairCheck p q 10 astart amax cut (2^15360) data.rowspq = true`；没有只检查某个自定义摘要标志。新amax已用精确整数幂核对 `p^amax<2^15360<=p^(amax+1)`，未使用浮点。

## 证明结构

`Schema.lean` 给纯数据容器和交换窗口适配：将两窗口、两指数、两余因子一起交换，并用min_comm保留双方小立方条件。偏移可以相同。

`PairDispatch.lean` 明确列出p,q∈{2,3,5,7}的16种顺序。4种p=q由已知p!=q排除，其余12种用对应的六份原pairCheck；反向顺序只调用交换适配，不重证block数学。各cut均<=109，因此得到统一界。

`Compression.lean` 显式先分n<2^98：低分支直接由98<=109结束。高分支调用**实际已验** `B699LowIndex.I11CubicBridge.actual_i11_cubic_bridge`，得到真实binomial赋值幂、两窗口、正余因子及小立方条件；将偏移<11转为<=10后交给12顺序分派。没有位置互异假设，没有新增余因子互素假设。Common仍是原题的包含端点p>=11定义。

## 数值表绑定与未完成事项

按primary指示，仅只读正确run目录下high_block_11_p_q.json的u,L,b0,v纯数值字段；旧前缀仍从固定delivery/results读取K,L,B,inverse_hex。没有运行迁移后的生成器，没有采用扩展包重新定义的checker或soundness。

DATA_BINDING记录逐文件SHA与映射：旧309块加高段78块，共387块；六对的首点、旧新连接和终点均精确一致。此检查只确认数据拼接、字段和整数高端，**没有宣称全部387个block数值已被Lean接受**。最终数值模块可直接构造SixPairRows的六字段，再提供六个原pairCheck证明。更改名称不影响接口，字段数据必须按绑定清单保持一致。

主实际立方桥receipt/evidence已读取并核对成功；Pair在本任务发出时仍是候选依赖，因此本包没有把它当作已验。集成时Schema的冻结Pair导入要改为单一正式集成Pair路径，不应混入两个声明同名类型/定理的副本。

Audit打印3个新公开定理及实际立方桥/Pair两个根。审计器只做合成日志自测，未运行Lean。下一步：primary先接受Pair，再串行验证Schema、PairDispatch、Compression、Audit；之后由正确归属的纯数值模块消除六个checker前提。初始n<2^15360仍需独立原题证明，n<2^109之后的末端覆盖也未由本包完成。B保持0/19。
