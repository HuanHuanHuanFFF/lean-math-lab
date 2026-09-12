# i11 原题最终接合候选

最终入口已经完整写出，只有原题的11<j与j≤n/2两个条件；高度、六张会员表、H/M数值证书、低端padding去除和旧候选列表的见证覆盖均由实际固定声明内部供给。此包未运行Lean，不计B新增；当前B仍0/19，其余18项未增加。

`Final.lean`公开三个最终根：

- `Math.B699.I11OriginalFinal.common_i11`：∀n j，11<j且j≤n/2→实际`Common n 11 j`。
- `Math.B699.I11OriginalFinal.original_i11_gcd`：原HuanAllA同形域，输出存在素数p≥11整除两个choose的gcd。
- `Math.B699.I11OriginalFinal.original_i11`：原HuanAllA同形域，输出同一素数p≥11分别整除两个choose。

显式包装里的1≤11恒真，没有缩小n/j域。p≥11保留等号；没有要求p>11。gcd到两次整除采用已验Row029原包装同样的dvd_trans/gcd_dvd_left/gcd_dvd_right。

证明连接为：局部假设noCommon，实际初始高度给n<2^109；修正后的四阶段消费者给n<29294603；固定stage04六表与常数/小n证书给扩展列表会员；已验Final/Extended由合法域n≥24剥掉(0,23)，得到原1055区间会员；完整覆盖Assembly推出相同n,j的Common，与局部hno矛盾。hno及所有中间高度均未暴露为最终假设。

`Membership.lean`另有5个公开辅助根，固定stage04Data、实际列表等式、常数、小n cover和条件会员。共8个公开根，各有精确typed/#print审计，`Audit.lean`也显式打印全部8根，避免只导入其它Audit而没有输出。候选实际源SHA与建议集成路径见INTEGRATION_MAP.json；精确原题声明见DECLARATIONS.json。

语义审计核对原题README第3行、GapBridge第9-10行的Common和已验HuanAllA第155-163行的原题类型。实际HuanAllA源码与accepted state字节匹配；仅用于对齐，没有导入庞大A链。已验终端Final、Actual和Candidates回执与当前来源字节均匹配。详细逐层域、swap、小n与严格高度端点见SEMANTIC_AUDIT.md。

审读发现的四阶段来源5处元数据命名和4处max顺序问题已由主任务在集成副本修复；实际采用AllStages SHA a5cf8d266c854ec02f40fc38111f1f42975ed83bb3c902d60d64cc4c2e6cff7e。原冻结副本保持原字节，修正未视为Lean验收。覆盖作者已冻结完整1055项/4042见证，Assembly SHA df650e822dc928151b3c4ac5b8daecfd926c458986a97d24a707e5133bab5e62；其最终API只有实际旧列表会员及hij/hjn，没有总coverage/witness检查前提。

本子任务实际完成的独立检查：6561个n,j有限域对中841合法对的边界算术；首合法对24,12，奇数81的j40包含、j41排除；实际列表首尾和stage04四种指数cutoff；8根精确声明与六对数据映射；仅内存字符串修改的三种篡改（p>11、额外高度、错pairData）均被静态契约检查拒绝。未重跑CRT、素性或全部见证计算。该检查不能替代Lean类型检查和传递axiom审计。

仍须主任务真正验收：实际初始高度整链（包含Padé增长）、四阶段24张完整数字矩形、终端6张会员表、旧1055区间的全部见证块及Assembly、本包Membership/Final和8根审计。所有名称已按实际落盘来源核对；确认的短路径中尚未复制的源按INTEGRATION_MAP集成，不得同时导入重复声明的冻结/集成副本。

预期前沿作用是在全部依赖与本入口真正验收后覆盖i=11的全部合法n,j。当前实际交付是可供串行验收的完整源码连接及审计记录，无新增原题验收或新颖性结论。
