# Moment 首轮编译修复

状态：源码已作最小修订，等待主线程真实 Lean 复验；本修复任务没有运行 Lean。

首轮固定证据 verification/20260911T071121777158Z/evidence.json 的 success=false、exit_code=1。第 68 行 qsmul_eq_C_mul 引入 Rat 自 cast，重写模式为 C ↑c * p，目标为 C c * p。其他五个公开打印输出 std3 不能使整体失败源获得接受。

修复只做两处：显式导入本机已有缓存的 Mathlib.Algebra.Polynomial.Coeff；将 moment_C_mul 的两行证明替换为 simpa only [Polynomial.smul_eq_C_mul] using moment_smul c p。Coefficients 模块第 334 行的普通数乘引理直接使用系数环元素 a : R，不引入 Rat 自 cast。

目标声明、M 的实际定义、全 a,b β 矩证明及其他公开根不变。没有修改冻结原实验、其他六个 identity 集成源或父任务状态。

前后 SHA、固定源码路径、旧失败日志、API 哈希和旁路源未变检查见 [moment-c-mul-v1.json](moment-c-mul-v1.json)，具体改动见 [moment-c-mul-v1.patch](moment-c-mul-v1.patch)。

下一步由主线程按 after SHA 真正复编完整模块，并显式检查 moment_C_mul 的传递公理；成功前保持 pending，不写 Lean 通过。
