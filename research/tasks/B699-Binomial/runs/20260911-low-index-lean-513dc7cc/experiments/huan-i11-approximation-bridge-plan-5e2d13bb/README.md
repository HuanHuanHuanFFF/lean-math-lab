# i11 approximation bridge plan

Read REPORT.md for the fixed old i11 plan and exact no-log route. NEXT_LEMMA.md gives the first independent unrestricted theorem target. OBLIGATIONS.json separates accepted source reuse from pending proof units.

Fast bounded rechecks: check_short_power_bases.py, check_scaling_and_small_bases.py. The original check_log_free_selector.py performed exact larger integer comparisons in about 33.6 seconds; its raw peak-memory field returned zero and is unavailable, as explained in the report. Short bases avoid repeating those large powers for future Lean acceptance.

All checks use Python -B, write only here, and make no Lean or CRT invocation. SOURCE_MAP.json and FREEZE_V1.json bind the reviewed bytes. No old frozen parameter, weight, candidate, runner, index, or Git state was edited.
