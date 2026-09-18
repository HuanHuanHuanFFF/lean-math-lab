# 来源、采用接口与证据等级

准确原字节路径、SHA256和大小见evidence/source_manifest.json。旧大型证据不重复纳入本ZIP。

|来源|本轮实际用途|状态|
|---|---|---|
|OVERVIEW2026-9-18-2.md|原题、R7、证据边界；其33为旧快照|用户原始总入口，不覆盖本会话随后19→16|
|NF35/COVER19 PROOFS和HANDOFF|完整阅读，采用同G原源jet、P/E、完整粗窗、PC、K152、载点筛及NF35位置接口|冻结作者数学；未执行历史全链|
|cover22 PROOFS §§3.1–3.3|定向重读NF23/NF29单缺重位置|冻结作者数学，不提升为本轮独立验收|
|SAT54 code/discover_sat54.py、code/reproduce.py|软件结构祖先：发现侧二项式/Lagrange、接收侧Newton/Horner|未执行历史SAT54；本轮修改为新根数剥离、无z范围和新整数证书|
|NIST DLMF §3.3|核对Lagrange/Newton插值公式|公开标准公式；本轮证明同时给出初等唯一性；没有PDF或外部新黑箱|

本轮新增的无限数学：源直线根数剥离、无z下界饱和归纳、新四个高次SAT类别、源普通单缺重位置容量纳入主账本、COVER16/EDGE16。新增有限证书：完整新根门、7231个增广子式证书、整数对照、全计账和条件下一门。

发现程序不导入接收程序；接收不读取发现的大根门JSON，只读取compact残余子式证书并自行生成完整所需门。源构造代数参数在新账本中重新计算；旧高幂算术及低次消费者仍按原作者等级采用。

公开参考：NIST Digital Library of Mathematical Functions, §3.3, https://dlmf.nist.gov/3.3，访问于2026-09-18。未下载PDF，不虚构PDF哈希。几何主证明不依赖未说明的出版结论。
