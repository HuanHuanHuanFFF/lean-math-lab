/- Candidate-only chunk data.
   data source SHA-256: 1779ddfafbaab251415af59e02cb812f87ffe06eaa617858a664a2925c95f32c
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk03
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old35Chunk03

def old35Chunk03Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 2253, L := 248, b0 := 1025, v := 0x61766038ec878f86a2e93ebda4117df5f65498f8f7db1f2dab842ed168d2a9190cd91e5c87d43be357cf2f2b6e363284f2feea3eaee449ecc455b4d814b0db96c6514dd4299d8f56abe3a30ae393cfc583a21561eac4807166f7a5afd93504e0b779b97ca874635574eaa669752e5b15918e30948cc8400b23ccbbd3e8f4b89d9a3f6c7a291a861a5c2fdb620f6819e484cf5d2991198302d4720d16e6c1d2a2a5dc10e7e133f6054d45e6b4e9a18d33232f1002b47c959244204c86cbcb9dbdbbcefbd51ad608c06dea9fa8a90c950aa07935256a3c8cdb5ed7cf6575d9a08da515bb4b6235ca0ea6750200ea2111d378c8b185bef4912dbb6b5a74dda74cba1f87d99edffc5478e5e053976c7d207f684934945f65f2903a0a017eaeb387310f29c232ec64818d721 },
    { u := 2502, L := 82, b0 := 1138, v := 0xc5ada9062bf46f700930a6741d186e72d560b36c894b2bf57b0871fa141631702e3d742f718813a90848fb053cdfe68f1fc9f62acddc77067dc0183edad98b3c451d24d839863c65d6bdb16a9fb09b094549b0689d0d06fdec8d01e26deb0d470e0a3d24ed24e6442b87c32a60b6433ea81ceec42e562060416417b08866583d663a4a3bd51e782a4ad208625d426473255b8dd76817ead78b867bd7ca9a34d907dac113f37bee42345a75b9a243563278d891dd059ea35f8c9ce51524b52038afecc9d9b1f9a3b36f75f2aa44b7921cabc86b613536442a03c57ace9dc9be361f600707b0bd1a16aad2910566ad5f0efb589ebdc38fd550a3d724d19a4cf26e67716b12c9526f5e1742d66156bcefa3da64e937bccb82e4e1d058bc2014aa161608ef3b24e21fcdf9ad4db96c8744dc40d0d315490c518530acb9317c2a3395e28ce033cb4770a3080c },
  ]

theorem old35Chunk03Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 5 10 2253 2585 old35Chunk03Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old35Chunk03.old35Chunk03Coverage

end Math.B699.CubicDataConsumersV4.Old35Chunk03
