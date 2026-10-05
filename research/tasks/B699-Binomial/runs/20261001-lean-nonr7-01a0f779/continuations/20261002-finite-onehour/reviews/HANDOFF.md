# 语义核验接续记录

Owner semantic_verify_sol（gpt-6.1-sol/xhigh）；本轮硬截止2026-10-02 10:25:29 UTC，10:21数学源冻结，不延期。本文10:06 UTC检查点，不是最终技术接受。

独立源审已完成：原题实际Common、反例高度/无限Gap/finite三输入；旧finite从gcd拆为两个完整choose整除的特化；Real/Nat同D/Y等价与显式DusartStrictInput边界；新ChainCore和32节点pilot及实际pilot_common的量词/严格端点对应。入口interface-review.md，逐源source-scope-manifest.json。

源对应确认而尚未kernel接受：新pilot覆盖全部Nat n/i/j，19662301≤n<19811023、4883≤i、i<j≤n/2，输出同一实际Nat.Prime p≥i同除两项choose，无prime/chain/height/Gap前提。32给定literal均来自固定旧pool，最大相邻差4876，词面记录pilot-literal-provenance.json不代替primality证明。

独立typed数学源已冻结：

- semantic/OriginalPilotTyped.lean，SHA256 ee7191af959e3a7935d0b0cf6e14fc803a9d4fb0daba195eb8c260f4a097328d，仅导入新PilotConsumer。
- semantic/NewChainTyped.lean，SHA256 48cc72477c26e0849525a09c3ee9b7fff4d84289d4ac6f8657ba0864897362e0，仅导入新Pilot32。

runtime_recovery_sol负责窄LinuxCI及actual编译、公理、normal checker。10源manifest由独立核验逐项actual哈希匹配，记录narrow-ci-source-review-axiom-corrected.json。实际源码/type/object/argv/exit/rawstdout及完整目标根公理列表绑定齐全后方可登记接受。公理标准为actual axioms⊆{propext,Classical.choice,Quot.sound}，未知/额外公理及缺根拒绝；不要求证明必须用齐三项。normal checker用同固定Lean kernel且信任导入环境，不称第二独立实现。

本地物理余量低于900MiB，受控入口实际拒绝启动证明；语义核验者未运行proof/checker，也未绕过门槛。旧270对象闭包未恢复，semantic/OldFiniteTyped、finite/OldFiniteTerminal仍候选。旧接口typed（InterfacesTyped/RealDusartTyped）未编，不与本窄CI的技术接受混算。

即使新pilot通过，范围与历史n≤20M结论重叠：新完整指标0，累计{1,2,11,29}∪[35,4882]。有限20M全供应输入仍未消，无条件无限Gap4095/10M未证。尚有所有i≥4883、合法i<j≤n/2、n<4096i的未接受区域；其中无限n/i/j及Gap的y均保留，R7未改，不主张新颖性。

下一可执行义务：先接窄CI真实原题root收据；资源允许的后续轮再恢复完整旧finite闭包或核验全部稀疏链并接已接受height，才使全i≥4883消费者只保真实无限Gap输入。没有输入供应时不能把条件消费者称为完整原题定理。

## 本轮终点

最终状态见FINAL-PENDING.json：新primality、原题Common、完整finite与无限Gap接受均0。两次CI原件保留：第一次cache guardstop；第二次cache及9pins成功，随后NormNum.Prime源hash守卫拒绝，未进入新数学编译/公理/checker。独立固定Gitblob对应见normnum-pinned-blob-independent-map.json；8719B/LF与Windows8926B仅CRLF物化差异，实际失败remote叶hash未被旧runner捕获。

新的入口守卫静态审核要求固定pinned Gitblob的SHA/大小及actual remote raw source与它完全相等，并保留binary stdout来源；历史Windows源/原失败哈希不改写。此修复只标nextcheck-ready-not-run，不增加数学接受。所有数学审查于10:25:29前结束；此后只行政封存已结束记录。
