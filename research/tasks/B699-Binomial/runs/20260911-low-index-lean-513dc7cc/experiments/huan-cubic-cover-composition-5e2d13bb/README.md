# 已验连续覆盖批次的短组合接口

负责人 `/root/pade_construction`。唯一写入本目录；没有编译、改已验源或Git操作。开始2026-09-11 15:59:52 UTC，检查点16:19:52 UTC。

`Composition.lean` 直接导入已验 `lean/CubicCover/Coverage.lean`，不重定义checker。三个完整候选定理：

- `coverageCheck_empty`：空批次保留相同端点。
- `coverageCheck_single`：一份已验blockCheck证明变为对应单行覆盖。
- `coverageCheck_append`：已验[start,mid)左批与[mid,stop)右批合成[start,stop)的left++right覆盖。

append对左列表归纳，只传递已有的首行证明和右批证明。公共mid保证接点一致。后续可平衡地多次应用append，再用已有List.append_assoc调整列表括号；不需在最终总目标重新decide全部387个数值块。

使用形状：`coverageCheck_append p q w left right (start := start) (mid := mid) (stop := stop) left_checked right_checked`。每个数值批次仍必须先得到其真实原coverageCheck=true证明；本接口不能接受未验批次或跳过端点。

候选源尚未Lean验收，数学声明没有新外部公理或替代checker。Audit打印三个新定理及两个已验源根；Python审计器仅做合成日志自测，不是定理通过。下一步由primary串行编译Composition、Audit并检查实际公理输出。初始高度、387块的各批数值接受和原题最终覆盖仍独立，B计数未变。
