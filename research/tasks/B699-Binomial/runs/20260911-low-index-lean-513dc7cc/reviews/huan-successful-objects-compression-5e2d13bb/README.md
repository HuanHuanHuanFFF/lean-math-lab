# Successful-object compression execution review

execute_successful_objects_compression.py is prepared but has not been run. Its fixed source plan is successful-objects-plan.json with SHA 6429ad573fc274f276ae133eb5563803284f87d3f5381bac698d92c9737868f8.

Default mode performs only guards/preflight. Compression requires explicit --execute. The script requires the latest run queue to be queue_finished and rejects any process named lean.exe/lake.exe or Python verify_huan*.py for this run, excluding its own PID and parent PID. It verifies the complete 248-path allowlist, all success evidence bindings, SHA-256, size, file ID, nlink, and same-identity links before operation.

After every compact /C /Q result, including nonzero/locked results, it immediately persists output and compares only content/path/file identity for unchanged status. NTFS attributes and allocated bytes are recorded separately. The script re-enumerates all same-identity links after each operation and performs a final evidence binding check. It never recurses or changes directory attributes.