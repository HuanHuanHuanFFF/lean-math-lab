/- Candidate-only chunk data.
   data source SHA-256: b1ba92ee2f221784055d55d4697e727a86500bd8f9e03e98df46a1f3897e52ce
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk02
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old25Chunk02

def old25Chunk02Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 370, L := 36, b0 := 106, v := 0x27f473a14f475a527a650273c8f250cd95d55e105bc77afb401de7810be31e },
    { u := 407, L := 40, b0 := 116, v := 0xfdc7172f98954bd4889cfbbc264a179c9d59aee441ed88a0c2b0fa611bf1d392f2a },
    { u := 448, L := 46, b0 := 128, v := 0x19646fe86f3d748e1068fa6114b8d44406bc9902e918c08be169b618ba656651289a0995f93 },
    { u := 495, L := 51, b0 := 142, v := 0x1809861365607e21fac1cc5cd61e37d1a6a8071e559941450eb3be519292e4f9e0a18140351beb064e },
    { u := 547, L := 58, b0 := 157, v := 0x1813e837f1c6c68ecdf522b53faf187cdf7aa97ae438bf1bf464658cc87f140ee720d5e65c02f93129c73a3c15b },
    { u := 606, L := 62, b0 := 173, v := 0x30ed58fee0e537f5693177a02e21f144413571427a7bd22fc708e897bbb04b99f0445de8a7c47ff33928c40bebe8d97eee61d },
    { u := 669, L := 70, b0 := 192, v := 0xcd05e83ed63437303e505006855c12f2eb62eadf1dfdb835cac0be7e3d2a394e5edcf3be0c625f0683649e63c5648e776519c73ce22bc5 },
    { u := 740, L := 76, b0 := 212, v := 0x132c0a6bd6e3a50df00644738dad4f5a2ed83d1fd8d2534cff0dfb1d162bc2f06333307ca6902be6cfdc4b2ab9e92ee7d2e536ceb1dc966ccf8fe62be9 },
    { u := 817, L := 85, b0 := 234, v := 0x23f56bfa81bf6cca356b60f6593c8feebe1b30dd96a8ec8913a6fa5d3d082a3d0637381705e32218998338af47088b172ca9adfc32de44a161bd0acc706d0a9a3d25df47 },
    { u := 903, L := 95, b0 := 259, v := 0x212b8240480551de259e40eb1645aa4951394346dc2a0643ee11275b80e488a8b48f8f83219b47363f534dd1fba34000f198b99acf04224ddfd2687589d5a1a85df92c1dfbb50d054d402b8 },
    { u := 999, L := 106, b0 := 286, v := 0x4de3940c01861c7434fa22d2b9024690b691cd6d528ceecf99b5003b5cfedae42c0dcfe8d7407aa0868f0ad9d7aa99fc6f16bf95316fc53be3d7f2264fafe471d5cc4836050c15b96515b25fed6f84c7ab9471 },
    { u := 1106, L := 119, b0 := 317, v := 0xcc46d197c850cf78c80ae4c7106b581d9c70dfdfcacb562fcf3d49628d4e9775d12b5ccdb38bec2b284fcf25dda77abeb54688d1170b435b8c3b5185c391947bb7d03b82456311404c689cfc6820a7516a8b7fe1fbf6fbf24217ca30 },
    { u := 1226, L := 132, b0 := 352, v := 0x48ce7335cca4725b36b4b1534076929fbebb88229e9865131925230a169330d593694f9b19a9f5dbbc3d3570937702f61983cc7d534af862c89734b79d978539b965f8816266232e226531506e945337eb025698dbc398056c1bcd923056fbdb7c47a2de6fb5 },
    { u := 1359, L := 147, b0 := 390, v := 0x1c9c12224f6f80e95d00b6c660b2f9e1b5ee67026cf18dbeb553e4fb607bb8fc19e8f57ee7ffecb85c9afd9b15ac93098989faf3281b1a04069d0b4da0ceccd09cb16fdfa032cf45039ad62232b267d75dcce8b477edaf667aa2ed412a8198141c5f8a777a94c24eeb83aa38e6e3f198a49 },
    { u := 1507, L := 163, b0 := 432, v := 0x666bd96809ce9f1bb2ea943f521202b82c376fdd274fb059622699bb3e5befe61944ac2d52dbabb581056c0c6f299bff35216618414e4899fd015fc40799a75704d6ed6c82a2087c3e6e86a69c8e6516f492265c02646b2af7d832e37249a54561cb0b53a6254c6c2b6f5a814525692205cc17cdcac13c59a6e24237a43 },
    { u := 1671, L := 182, b0 := 479, v := 0x69f0f146499a5d7240b3ccab63a2afb793f58c392aad8251eb69a7ff09081f5ec13e1f476e05e495378d33b210a7bfaef0ca0bd873aa0761982ce3385507077417f9c105cbdc763c9a9ef5fbd8f625041ee08d3a30be00d35a5702ff1514f00f8982ab18db6558d223fb012cdf63e1479c8e1eeced0aceaadf3ca2321a6bcf9f282c53cf71057dd6378775 },
  ]

theorem old25Chunk02Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 5 10 370 1854 old25Chunk02Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old25Chunk02.old25Chunk02Coverage

end Math.B699.CubicDataConsumersV4.Old25Chunk02
