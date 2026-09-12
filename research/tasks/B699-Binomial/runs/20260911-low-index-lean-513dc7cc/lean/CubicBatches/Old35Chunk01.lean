/- Candidate-only chunk data.
   data source SHA-256: 1779ddfafbaab251415af59e02cb812f87ffe06eaa617858a664a2925c95f32c
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old35Chunk01

def old35Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 95, L := 8, b0 := 43, v := 0xd39f3c271c4723f415ff0e11e },
    { u := 104, L := 8, b0 := 47, v := 0x1f3125320b2bc8b8ff30cf8c211c },
    { u := 113, L := 10, b0 := 51, v := 0x1a3709456f15f9251c3d8ec9c4fedf },
    { u := 124, L := 10, b0 := 56, v := 0x3ad76b0d6b309b1d54d99bfb6e3cbbbea },
    { u := 135, L := 11, b0 := 61, v := 0x2c3a3c6994d618744f318d7997e2b43d5cf4 },
    { u := 147, L := 13, b0 := 66, v := 0x1b681b5b20669067e1232ccda89423bf9f0ed65 },
    { u := 161, L := 15, b0 := 73, v := 0xfa57fb38c25d0d6194bf6dffdc0b979af6b67b30da },
    { u := 177, L := 16, b0 := 80, v := 0x79ff218504d67ceab1a3d0c55eecdbc1bdbad6b64101e1 },
    { u := 194, L := 19, b0 := 88, v := 0xf65d9142037da0611d4f97c43107dbb91c8ec2c7dddf712fabb },
    { u := 214, L := 21, b0 := 97, v := 0x71797e1e375f18464fabb3383d9669727750b1e5def14c982d416f58 },
    { u := 236, L := 24, b0 := 107, v := 0x11e0be0f4ae947afaa3cc2c4b63c9bd16f19c9782102ebbb7978e7b543a5bec },
    { u := 261, L := 26, b0 := 118, v := 0x255d9d92c177a5bc46358d78adacd89eacd34156c80f9cf28aedf9cb4dfc76742dda1 },
    { u := 288, L := 30, b0 := 131, v := 0x21802c1476279c5d4b75dec5c19fc140d157a91ac6aec2c354fed488b0b578c0a6d8e7694fb0 },
    { u := 319, L := 32, b0 := 145, v := 0x12433545254d8777ea93c6f60bbb089babc575f91ae3f3e808e197ecab626d8c3a6acd1776299bc63c896 },
    { u := 352, L := 36, b0 := 160, v := 0x336f8d09f3bdd59c36bc40800ae15929c8f4d0244c8308ab03635ee46684297d290eae56c81a7083aa5a8819010cd },
    { u := 389, L := 41, b0 := 177, v := 0x6dc127e488ae63f3b6339e6544950b1fc26d1b618976addedfb027062099d73ef670bb1d5c4a4c53f1d0808fe8b05902bca5277 },
  ]

theorem old35Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 5 10 95 431 old35Chunk01Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old35Chunk01.old35Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old35Chunk01
