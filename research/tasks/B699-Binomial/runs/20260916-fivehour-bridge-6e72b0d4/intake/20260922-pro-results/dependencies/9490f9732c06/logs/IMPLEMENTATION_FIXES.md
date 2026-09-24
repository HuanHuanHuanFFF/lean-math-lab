# Implementation corrections

The first certificate run stopped on the exact weak-model residual assertion.
The scratch calculation printed `v*nu^2-P*Q^2 = 5373370439580559`, while the
checker (correctly) uses the norm residual `v*nu^2-P*Q^2+1`. Its expected literal
therefore needed to be `5373370439580560`. Only this literal was corrected.
The weak model is still strictly not a norm solution. No NSB64 theorem,
universal coefficient bound, parameter range, or source-return step changed.
The actual failed rerun is retained in `first_replay_failed.log`; the complete
successful replay is `replay.log`.
