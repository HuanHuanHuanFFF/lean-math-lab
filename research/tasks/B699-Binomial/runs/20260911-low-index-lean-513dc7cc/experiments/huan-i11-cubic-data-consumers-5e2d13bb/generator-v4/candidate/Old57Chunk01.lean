/- Candidate-only chunk data.
   data source SHA-256: d5c1ba9dbe6309facdf45af8ad56fe1ad6c074144eaac2e71fe10388a21b3d79
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old57Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old57Chunk01

def old57Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 110, L := 9, b0 := 60, v := 0x8be8cb072c1b04f220569f15487b0f06f3ff7c40eb },
    { u := 120, L := 11, b0 := 66, v := 0x1b9f021261cd5c8efa7c96823490fe03bc1e5fb95cbc341 },
    { u := 132, L := 12, b0 := 72, v := 0x2ef84fdd31aff21fc6b5d51bbac568811e9e66d7808b0a53ddb },
    { u := 145, L := 14, b0 := 79, v := 0xc8293d4a287aef8b7719cf0255c7a8e58d0a50e8ed6d01fd605a37b },
    { u := 160, L := 16, b0 := 88, v := 0x44d253ef9d8685e640c2b2e054e6319cc115e35d8d9b7f0c09a6c38a130258 },
    { u := 177, L := 17, b0 := 97, v := 0x3e133f3797228bb65cc90aba9fda5caf7f1191a9ed944d4bc67e0c290870047706f2 },
    { u := 195, L := 19, b0 := 107, v := 0x149756cdc9fc7d5eaa83a6bfeb6131ac0cb41af9f1b4ba227e7d2006a6888f5d8f14f51383b1 },
    { u := 215, L := 21, b0 := 118, v := 0x578a322ea122b0494b4a0d6e966ff45ae4b36b9186e1635aae607ae768c6ed7c81d022ebba29a30bf2b },
    { u := 237, L := 24, b0 := 130, v := 0x5e88191d7499f959ce1f1e4059cec434345dde4d7d7043b14a6740c6fa39759f678e6efea4b1867604f313284dc },
    { u := 262, L := 27, b0 := 144, v := 0x309860db3d725eb1360bd75f53a2616fba1d6873f34b5d60f43b46a0e3688c0e33d1917984d2a3eada5408b066b1ff5d30ee4 },
    { u := 290, L := 30, b0 := 159, v := 0x35aee9087434ef816a055a1f859226ea3be2676ca3aa07e8e7166d1ae380d7eeb44a9de541fa8a958cc14a4274a205791dcbbd4fa0c529ae },
    { u := 321, L := 33, b0 := 176, v := 0x3ab53c6b00dcd2c2ec3ecb1885d054485a938d4aa5c990e8280ecdc415acebddb218f5eee66cc2b848a04d46a4c93c06ff2ba5f33251beb2de93cfef8027 },
    { u := 355, L := 37, b0 := 195, v := 0x24d594b6ad084bfe2f22e3f657934121a0999a15e002ee974ce5b64c2e0a1306a0ab213841002303bcec71e661d08ccd3612595826c734707ac111c1bbce0d8e64b25e84d },
    { u := 393, L := 41, b0 := 216, v := 0x23cf44cdaf3e4110c524e492db0ed8a994b46753ab80d3f2ae70a8b065b444e03a2ade26e5f8a5561b1bb16d6424df62f73c55fb3980fb134259fd53ada749d06aa756300d4e31c21bde73a7 },
    { u := 435, L := 46, b0 := 239, v := 0x26521a3f1b267669d13e6f56736e31ca05292388b20accc670ba0fccdc32849d1824b3e2b776efa0abc16e52f300cd4dfeedcc1ec81735b2c920862184ea28a334794065b98c756191da5c7d6a23788bef3b440f },
    { u := 482, L := 50, b0 := 265, v := 0xa45117a892466b74e2b3cb3516a7b05134a3ef474ee6f35f28b9e2ce1ab57791477cb72a7c39151945924740e1a8bc53185350e10ef0ecf9c1e82c8457466b5d12414777a8fa1768a9f09e49085ce9d14141f28fb17674d97fa4062c72 },
  ]

theorem old57Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      5 7 10 110 533 old57Chunk01Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old57Chunk01.old57Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old57Chunk01
