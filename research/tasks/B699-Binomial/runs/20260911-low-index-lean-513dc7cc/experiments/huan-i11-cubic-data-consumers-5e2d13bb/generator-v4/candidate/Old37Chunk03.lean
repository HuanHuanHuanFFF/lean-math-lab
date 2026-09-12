/- Candidate-only chunk data.
   data source SHA-256: 475a5ed2786cb6496054cfad62c6310db49a2558e889336d490b27a71412860a
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk03
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old37Chunk03

def old37Chunk03Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 2283, L := 250, b0 := 859, v := 0x349e4a12eb812b7b2f88fe5dc41aa20eab91f20874598d3bb288f503202540b9b0a817c6b34595d68a02298ce0bc31f80d8e6f1012099abd98ba9d754159c3db887789fc72766369d37373efe765b71efef8a67f6fa676e4636e60a68d43ba1bb14e48f631f7e303e486dc0772d14192b4bdffc81a09f1d66cc40d4e2ccd5afe2aa169e0cb08f3ae7914516f87625e9d9b08f112d869c64df6b6e6bb5ff98e14411ffb71187369a56c32cb7d8b151bbab1e02304013c0db1306e354c662aa0fff6c1d3bca988d99e995ea8314b923113ae368fc5b3859968434354d70a12c1a5e185e47e21e9cfd9c6980427f739f2325090efb6aa0776c5a0fa26c8ffa028f0c43f33dfadcc982e68edd6477c5c5a3e4af0171d90b68e39c8706b7194ce6e3be145649b403db4aa42ab874b736 },
    { u := 2534, L := 50, b0 := 953, v := 0x22dae13df8aa5d73f591324de1fc3dfe62f83610a699b18f5d2a3c6183638f47a60d1a5498b113eb5b61359857f3051ee3ded1ba89f1537b45cb766914b8c947aaeac874646db629643f5f07cc6e0b58fbd1e43a414d16ab1c6ced2767382a44e12dd04fd36f82c0de3092a3d91ff55f5ef8ed6bb40435e6e82cc3a68009ad6f6920602507bc3e298bb47a6edccc88f5eb4ff75e3122d4ec4c018088212063c626e388505770bcfa290fc839680e248518fdeb231e868170cd237b74c4066673ce06424b16063078408220b47a489476cf02da0e8ac2c4b9fe9bb6856fde77352446a579a261dccf32ab77d0c96070c05e87a74a2bb9209e89c8c353f50d9063db08f865efa5e65a3fd94277abd70bb0504525ff2334a4c2f53eba71918827efdc4098a8a642ac5a9b81c44b327f8e0fd3421292e272200f7b1cbce5c644483b5e1387b3eb693a62110bcb879ed69 },
  ]

theorem old37Chunk03Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 7 10 2283 2585 old37Chunk03Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old37Chunk03.old37Chunk03Coverage

end Math.B699.CubicDataConsumersV4.Old37Chunk03
