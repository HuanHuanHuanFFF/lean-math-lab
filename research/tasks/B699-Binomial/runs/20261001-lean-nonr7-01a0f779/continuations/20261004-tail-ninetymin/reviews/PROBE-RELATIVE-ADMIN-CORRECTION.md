# Probe artifact metadata：更正入口

首调用 `bind_next_archive.py` 误给 `ARTIFACT=0`，导致 `PROBE-RELATIVE-INDEPENDENT-{BINDING,ACCEPTED}.json` 中该字段错误。原字节保留，**这两份文件不作为当前接受入口**。这是 S 的调用参数错误，不是数学、CI 或 kernel 失败；其 fixed source/run、source/object/raw、109 AX根及normalchecker实际绑定并未发生变化。

实际 `runtime/ci/37196421370-probe/RAW_INTAKE.json` 与 C 原始回执给出 artifact `11301262648`。使用完整相同原包、准确 artifact id 再做独立 bytes 绑定，正确接受入口应为 `PROBE-RELATIVE-VALID-INDEPENDENT-{BINDING,ACCEPTED}.json`；未得到其实际通过以前维持 pending，不回填或覆盖首记录。
