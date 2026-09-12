/- Candidate-only chunk data.
   data source SHA-256: 475a5ed2786cb6496054cfad62c6310db49a2558e889336d490b27a71412860a
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old37Chunk01

def old37Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 96, L := 8, b0 := 36, v := 0xcef17d16aa7739de2453e6c8a },
    { u := 105, L := 9, b0 := 39, v := 0x12db605de86a2d55b3b832d9159a },
    { u := 115, L := 10, b0 := 43, v := 0x14bfbe506a9f72a5a9983979f09d5ea },
    { u := 126, L := 11, b0 := 47, v := 0x84d65f02a3ad15ef5d4e834db772ae19c },
    { u := 138, L := 11, b0 := 51, v := 0x497b8332756f6863b51fe3e04bc7cac2e6d7 },
    { u := 150, L := 14, b0 := 56, v := 0x818747e15b03fe8f361e18f945c846247bf2661 },
    { u := 165, L := 16, b0 := 62, v := 0xcb342b742ad2f00df6f263d563109d57c64e178db67 },
    { u := 182, L := 17, b0 := 68, v := 0x1e4fac61f916c056c6ddae119a15465e1e7c03b4e7a4fae5 },
    { u := 200, L := 20, b0 := 75, v := 0x400c7dbc44e6a32363204571508af2c264bae00481aa42dcaeaa2 },
    { u := 221, L := 21, b0 := 83, v := 0x155b5e84a01a10bbab57e45f41624c9b992492910fec3a18f812e5d804b },
    { u := 243, L := 24, b0 := 91, v := 0x615624dce335ee6668a817d866f7ecf79cc6aca2e26a4c8d698f07485fcd363 },
    { u := 268, L := 26, b0 := 100, v := 0xfb39d73235e20cd560c0e9c447dace562809d57199d74e0514acf77c33139a77cec9e0 },
    { u := 295, L := 30, b0 := 111, v := 0xc20344f202d0f6a63f36561dbc3a42942ad3fa67e33feaf1140ce4dac361f8640baee769b40e70 },
    { u := 326, L := 32, b0 := 122, v := 0x4d42c6914454a3a1e752ce8ba4d2c94b3324772b3842766e0a79007324a26d3982447d94a41e615a8ef71e },
    { u := 359, L := 38, b0 := 135, v := 0x133b9bef0c543bf3973bec81b57c514f279b0eb381b7c9e408e56e3e0f0d9f008010aab7fad69195af666fae8421e57 },
    { u := 398, L := 41, b0 := 149, v := 0x183bf147c42d92adbfed02293bbd68efd85f0bc48fb8412a993879fbb2d61d272cba18ac30907aaf08a371e88d724dbad8f7f13e9 },
  ]

theorem old37Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 7 10 96 440 old37Chunk01Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old37Chunk01.old37Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old37Chunk01
