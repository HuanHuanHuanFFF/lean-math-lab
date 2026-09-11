import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteCRT
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds00
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds01
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds02
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds03
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds04
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds05
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds06
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds07
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteBounds08

namespace B699.SmoothWindow

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- Every record contains an actual Lean proof for all legal j in its row. -/
def certifiedRows : List {n : ℕ // CommonFour n} := [
  ⟨10, crt_row_10⟩,
  ⟨11, crt_row_11⟩,
  ⟨12, crt_row_12⟩,
  ⟨13, bound_row_13⟩,
  ⟨14, bound_row_14⟩,
  ⟨15, bound_row_15⟩,
  ⟨16, bound_row_16⟩,
  ⟨17, bound_row_17⟩,
  ⟨18, crt_row_18⟩,
  ⟨19, crt_row_19⟩,
  ⟨20, bound_row_20⟩,
  ⟨21, bound_row_21⟩,
  ⟨24, bound_row_24⟩,
  ⟨25, bound_row_25⟩,
  ⟨26, bound_row_26⟩,
  ⟨27, crt_row_27⟩,
  ⟨28, bound_row_28⟩,
  ⟨29, bound_row_29⟩,
  ⟨30, crt_row_30⟩,
  ⟨32, bound_row_32⟩,
  ⟨33, crt_row_33⟩,
  ⟨34, bound_row_34⟩,
  ⟨35, bound_row_35⟩,
  ⟨48, crt_row_48⟩,
  ⟨49, bound_row_49⟩,
  ⟨50, bound_row_50⟩,
  ⟨51, bound_row_51⟩,
  ⟨54, bound_row_54⟩,
  ⟨55, bound_row_55⟩,
  ⟨56, bound_row_56⟩,
  ⟨57, crt_row_57⟩,
  ⟨64, crt_row_64⟩,
  ⟨65, crt_row_65⟩,
  ⟨66, crt_row_66⟩,
  ⟨67, bound_row_67⟩,
  ⟨81, crt_row_81⟩,
  ⟨82, crt_row_82⟩,
  ⟨83, crt_row_83⟩,
  ⟨84, crt_row_84⟩,
  ⟨96, bound_row_96⟩,
  ⟨97, bound_row_97⟩,
  ⟨98, bound_row_98⟩,
  ⟨99, crt_row_99⟩,
  ⟨128, crt_row_128⟩,
  ⟨129, crt_row_129⟩,
  ⟨130, bound_row_130⟩,
  ⟨131, bound_row_131⟩,
  ⟨162, crt_row_162⟩,
  ⟨163, crt_row_163⟩,
  ⟨164, bound_row_164⟩,
  ⟨165, bound_row_165⟩,
  ⟨192, crt_row_192⟩,
  ⟨193, bound_row_193⟩,
  ⟨194, bound_row_194⟩,
  ⟨195, bound_row_195⟩,
  ⟨243, crt_row_243⟩,
  ⟨244, bound_row_244⟩,
  ⟨245, bound_row_245⟩,
  ⟨246, crt_row_246⟩,
  ⟨256, bound_row_256⟩,
  ⟨257, bound_row_257⟩,
  ⟨258, bound_row_258⟩,
  ⟨259, bound_row_259⟩,
  ⟨384, bound_row_384⟩,
  ⟨385, bound_row_385⟩,
  ⟨386, bound_row_386⟩,
  ⟨387, bound_row_387⟩,
  ⟨486, bound_row_486⟩,
  ⟨487, bound_row_487⟩,
  ⟨488, bound_row_488⟩,
  ⟨489, crt_row_489⟩,
  ⟨512, bound_row_512⟩,
  ⟨513, crt_row_513⟩,
  ⟨514, crt_row_514⟩,
  ⟨515, crt_row_515⟩,
  ⟨729, crt_row_729⟩,
  ⟨730, bound_row_730⟩,
  ⟨731, bound_row_731⟩,
  ⟨732, bound_row_732⟩,
  ⟨768, bound_row_768⟩,
  ⟨769, bound_row_769⟩,
  ⟨770, bound_row_770⟩,
  ⟨771, bound_row_771⟩,
  ⟨1024, bound_row_1024⟩,
  ⟨1025, bound_row_1025⟩,
  ⟨1026, crt_row_1026⟩,
  ⟨1027, crt_row_1027⟩,
  ⟨1458, crt_row_1458⟩,
  ⟨1459, bound_row_1459⟩,
  ⟨1460, bound_row_1460⟩,
  ⟨1461, bound_row_1461⟩,
  ⟨1536, bound_row_1536⟩,
  ⟨1537, bound_row_1537⟩,
  ⟨1538, bound_row_1538⟩,
  ⟨1539, crt_row_1539⟩,
  ⟨2048, bound_row_2048⟩,
  ⟨2049, bound_row_2049⟩,
  ⟨2050, bound_row_2050⟩,
  ⟨2051, bound_row_2051⟩,
  ⟨2187, crt_row_2187⟩,
  ⟨2188, bound_row_2188⟩,
  ⟨2189, bound_row_2189⟩,
  ⟨2190, bound_row_2190⟩,
  ⟨3072, bound_row_3072⟩,
  ⟨3073, bound_row_3073⟩,
  ⟨3074, bound_row_3074⟩,
  ⟨3075, bound_row_3075⟩,
  ⟨4096, bound_row_4096⟩,
  ⟨4097, bound_row_4097⟩,
  ⟨4098, crt_row_4098⟩,
  ⟨4099, bound_row_4099⟩,
  ⟨4374, bound_row_4374⟩,
  ⟨4375, bound_row_4375⟩,
  ⟨4376, bound_row_4376⟩,
  ⟨4377, bound_row_4377⟩,
  ⟨6144, bound_row_6144⟩,
  ⟨6145, bound_row_6145⟩,
  ⟨6146, bound_row_6146⟩,
  ⟨6147, bound_row_6147⟩,
  ⟨6561, crt_row_6561⟩,
  ⟨6562, crt_row_6562⟩,
  ⟨6563, crt_row_6563⟩,
  ⟨6564, bound_row_6564⟩,
  ⟨8192, bound_row_8192⟩,
  ⟨8193, crt_row_8193⟩,
  ⟨8194, bound_row_8194⟩,
  ⟨8195, bound_row_8195⟩,
  ⟨12288, crt_row_12288⟩,
  ⟨12289, bound_row_12289⟩,
  ⟨12290, bound_row_12290⟩,
  ⟨12291, bound_row_12291⟩,
  ⟨13122, crt_row_13122⟩,
  ⟨13123, crt_row_13123⟩,
  ⟨13124, bound_row_13124⟩,
  ⟨13125, bound_row_13125⟩,
  ⟨16384, bound_row_16384⟩,
  ⟨16385, bound_row_16385⟩,
  ⟨16386, bound_row_16386⟩,
  ⟨16387, bound_row_16387⟩,
  ⟨19683, crt_row_19683⟩,
  ⟨19684, bound_row_19684⟩,
  ⟨19685, bound_row_19685⟩,
  ⟨19686, bound_row_19686⟩,
  ⟨24576, bound_row_24576⟩,
  ⟨24577, bound_row_24577⟩,
  ⟨24578, bound_row_24578⟩,
  ⟨24579, bound_row_24579⟩,
  ⟨32768, bound_row_32768⟩,
  ⟨32769, crt_row_32769⟩,
  ⟨32770, bound_row_32770⟩,
  ⟨32771, bound_row_32771⟩,
  ⟨39366, bound_row_39366⟩,
  ⟨39367, bound_row_39367⟩,
  ⟨39368, bound_row_39368⟩,
  ⟨39369, bound_row_39369⟩,
  ⟨49152, bound_row_49152⟩,
  ⟨49153, bound_row_49153⟩,
  ⟨49154, bound_row_49154⟩,
  ⟨49155, bound_row_49155⟩,
  ⟨59049, bound_row_59049⟩,
  ⟨59050, bound_row_59050⟩,
  ⟨59051, bound_row_59051⟩,
  ⟨59052, bound_row_59052⟩,
  ⟨65536, bound_row_65536⟩,
  ⟨65537, bound_row_65537⟩,
  ⟨65538, crt_row_65538⟩,
  ⟨65539, bound_row_65539⟩,
  ⟨98304, bound_row_98304⟩,
  ⟨98305, bound_row_98305⟩,
  ⟨98306, bound_row_98306⟩,
  ⟨98307, bound_row_98307⟩,
  ⟨118098, bound_row_118098⟩,
  ⟨118099, bound_row_118099⟩,
  ⟨118100, bound_row_118100⟩,
  ⟨118101, bound_row_118101⟩,
  ⟨131072, bound_row_131072⟩,
  ⟨131073, bound_row_131073⟩,
  ⟨131074, bound_row_131074⟩,
  ⟨131075, bound_row_131075⟩,
  ⟨177147, bound_row_177147⟩,
  ⟨177148, bound_row_177148⟩,
  ⟨177149, bound_row_177149⟩,
  ⟨177150, bound_row_177150⟩,
  ⟨196608, bound_row_196608⟩,
  ⟨196609, bound_row_196609⟩,
  ⟨196610, bound_row_196610⟩,
  ⟨196611, bound_row_196611⟩,
  ⟨262144, bound_row_262144⟩,
  ⟨262145, bound_row_262145⟩,
  ⟨262146, crt_row_262146⟩,
  ⟨262147, bound_row_262147⟩,
  ⟨354294, bound_row_354294⟩,
  ⟨354295, bound_row_354295⟩,
  ⟨354296, bound_row_354296⟩,
  ⟨354297, bound_row_354297⟩,
  ⟨393216, bound_row_393216⟩,
  ⟨393217, bound_row_393217⟩,
  ⟨393218, bound_row_393218⟩,
  ⟨393219, bound_row_393219⟩,
  ⟨524288, bound_row_524288⟩,
  ⟨524289, crt_row_524289⟩,
  ⟨524290, bound_row_524290⟩,
  ⟨524291, bound_row_524291⟩,
  ⟨531441, crt_row_531441⟩,
  ⟨531442, bound_row_531442⟩,
  ⟨531443, bound_row_531443⟩,
  ⟨531444, bound_row_531444⟩,
  ⟨786432, crt_row_786432⟩,
  ⟨786433, bound_row_786433⟩,
  ⟨786434, bound_row_786434⟩,
  ⟨786435, bound_row_786435⟩,
  ⟨1048576, bound_row_1048576⟩,
  ⟨1048577, bound_row_1048577⟩,
  ⟨1048578, bound_row_1048578⟩,
  ⟨1048579, bound_row_1048579⟩,
  ⟨1062882, crt_row_1062882⟩,
  ⟨1062883, bound_row_1062883⟩,
  ⟨1062884, bound_row_1062884⟩,
  ⟨1062885, bound_row_1062885⟩,
  ⟨1572864, bound_row_1572864⟩,
  ⟨1572865, bound_row_1572865⟩,
  ⟨1572866, bound_row_1572866⟩,
  ⟨1572867, bound_row_1572867⟩,
  ⟨1594323, crt_row_1594323⟩,
  ⟨1594324, bound_row_1594324⟩,
  ⟨1594325, bound_row_1594325⟩,
  ⟨1594326, bound_row_1594326⟩,
  ⟨2097152, bound_row_2097152⟩,
  ⟨2097153, bound_row_2097153⟩,
  ⟨2097154, bound_row_2097154⟩,
  ⟨2097155, bound_row_2097155⟩,
  ⟨3145728, bound_row_3145728⟩,
  ⟨3145729, bound_row_3145729⟩,
  ⟨3145730, bound_row_3145730⟩,
  ⟨3145731, bound_row_3145731⟩,
  ⟨3188646, bound_row_3188646⟩,
  ⟨3188647, bound_row_3188647⟩,
  ⟨3188648, bound_row_3188648⟩,
  ⟨3188649, bound_row_3188649⟩,
  ⟨4194304, bound_row_4194304⟩,
  ⟨4194305, bound_row_4194305⟩,
  ⟨4194306, bound_row_4194306⟩,
  ⟨4194307, bound_row_4194307⟩,
  ⟨4782969, bound_row_4782969⟩,
  ⟨4782970, bound_row_4782970⟩,
  ⟨4782971, bound_row_4782971⟩,
  ⟨4782972, bound_row_4782972⟩,
  ⟨6291456, bound_row_6291456⟩,
  ⟨6291457, bound_row_6291457⟩,
  ⟨6291458, bound_row_6291458⟩,
  ⟨6291459, bound_row_6291459⟩,
  ⟨8388608, bound_row_8388608⟩,
  ⟨8388609, bound_row_8388609⟩,
  ⟨8388610, bound_row_8388610⟩,
  ⟨8388611, bound_row_8388611⟩,
  ⟨9565938, bound_row_9565938⟩,
  ⟨9565939, bound_row_9565939⟩,
  ⟨9565940, bound_row_9565940⟩,
  ⟨9565941, bound_row_9565941⟩,
  ⟨12582912, bound_row_12582912⟩,
  ⟨12582913, bound_row_12582913⟩,
  ⟨12582914, bound_row_12582914⟩,
  ⟨12582915, bound_row_12582915⟩,
  ⟨14348907, bound_row_14348907⟩,
  ⟨14348908, bound_row_14348908⟩,
  ⟨14348909, bound_row_14348909⟩,
  ⟨14348910, bound_row_14348910⟩,
  ⟨16777216, bound_row_16777216⟩,
  ⟨16777217, bound_row_16777217⟩,
  ⟨16777218, bound_row_16777218⟩,
  ⟨16777219, bound_row_16777219⟩,
  ⟨25165824, bound_row_25165824⟩,
  ⟨25165825, bound_row_25165825⟩,
  ⟨25165826, bound_row_25165826⟩,
  ⟨25165827, bound_row_25165827⟩,
  ⟨28697814, bound_row_28697814⟩,
  ⟨28697815, bound_row_28697815⟩,
  ⟨28697816, bound_row_28697816⟩,
  ⟨28697817, bound_row_28697817⟩,
  ⟨33554432, bound_row_33554432⟩,
  ⟨33554433, bound_row_33554433⟩,
  ⟨33554434, bound_row_33554434⟩,
  ⟨33554435, bound_row_33554435⟩,
  ⟨43046721, crt_row_43046721⟩,
  ⟨43046722, bound_row_43046722⟩,
  ⟨43046723, bound_row_43046723⟩,
  ⟨43046724, bound_row_43046724⟩,
  ⟨50331648, bound_row_50331648⟩,
  ⟨50331649, bound_row_50331649⟩,
  ⟨50331650, bound_row_50331650⟩,
  ⟨50331651, bound_row_50331651⟩,
  ⟨67108864, bound_row_67108864⟩,
  ⟨67108865, bound_row_67108865⟩,
  ⟨67108866, bound_row_67108866⟩,
  ⟨67108867, bound_row_67108867⟩,
  ⟨86093442, crt_row_86093442⟩,
  ⟨86093443, bound_row_86093443⟩,
  ⟨86093444, bound_row_86093444⟩,
  ⟨86093445, bound_row_86093445⟩,
  ⟨100663296, bound_row_100663296⟩,
  ⟨100663297, bound_row_100663297⟩,
  ⟨100663298, bound_row_100663298⟩,
  ⟨100663299, bound_row_100663299⟩,
  ⟨129140163, crt_row_129140163⟩,
  ⟨129140164, bound_row_129140164⟩,
  ⟨129140165, bound_row_129140165⟩,
  ⟨129140166, bound_row_129140166⟩,
  ⟨134217728, bound_row_134217728⟩,
  ⟨134217729, crt_row_134217729⟩,
  ⟨134217730, bound_row_134217730⟩,
  ⟨134217731, bound_row_134217731⟩,
  ⟨201326592, bound_row_201326592⟩,
  ⟨201326593, bound_row_201326593⟩,
  ⟨201326594, bound_row_201326594⟩,
  ⟨201326595, bound_row_201326595⟩,
  ⟨258280326, bound_row_258280326⟩,
  ⟨258280327, bound_row_258280327⟩,
  ⟨258280328, bound_row_258280328⟩,
  ⟨258280329, bound_row_258280329⟩,
  ⟨268435456, bound_row_268435456⟩,
  ⟨268435457, bound_row_268435457⟩,
  ⟨268435458, crt_row_268435458⟩,
  ⟨268435459, bound_row_268435459⟩,
  ⟨387420489, bound_row_387420489⟩,
  ⟨387420490, bound_row_387420490⟩,
  ⟨387420491, bound_row_387420491⟩,
  ⟨387420492, bound_row_387420492⟩,
  ⟨402653184, bound_row_402653184⟩,
  ⟨402653185, bound_row_402653185⟩,
  ⟨402653186, bound_row_402653186⟩,
  ⟨402653187, crt_row_402653187⟩,
  ⟨536870912, bound_row_536870912⟩,
  ⟨536870913, bound_row_536870913⟩,
  ⟨536870914, bound_row_536870914⟩,
  ⟨536870915, bound_row_536870915⟩,
  ⟨774840978, bound_row_774840978⟩,
  ⟨774840979, bound_row_774840979⟩,
  ⟨774840980, bound_row_774840980⟩,
  ⟨774840981, bound_row_774840981⟩,
  ⟨805306368, bound_row_805306368⟩,
  ⟨805306369, bound_row_805306369⟩,
  ⟨805306370, bound_row_805306370⟩,
  ⟨805306371, bound_row_805306371⟩,
  ⟨1073741824, bound_row_1073741824⟩,
  ⟨1073741825, bound_row_1073741825⟩,
  ⟨1073741826, bound_row_1073741826⟩,
  ⟨1073741827, bound_row_1073741827⟩,
  ⟨1162261467, bound_row_1162261467⟩,
  ⟨1162261468, bound_row_1162261468⟩,
  ⟨1162261469, bound_row_1162261469⟩,
  ⟨1162261470, bound_row_1162261470⟩,
  ⟨1610612736, bound_row_1610612736⟩,
  ⟨1610612737, bound_row_1610612737⟩,
  ⟨1610612738, bound_row_1610612738⟩,
  ⟨1610612739, bound_row_1610612739⟩,
  ⟨2147483648, bound_row_2147483648⟩,
  ⟨2147483649, bound_row_2147483649⟩,
  ⟨2147483650, bound_row_2147483650⟩,
  ⟨2147483651, bound_row_2147483651⟩,
  ⟨2324522934, bound_row_2324522934⟩,
  ⟨2324522935, bound_row_2324522935⟩,
  ⟨2324522936, bound_row_2324522936⟩,
  ⟨2324522937, bound_row_2324522937⟩,
  ⟨3221225472, bound_row_3221225472⟩,
  ⟨3221225473, bound_row_3221225473⟩,
  ⟨3221225474, bound_row_3221225474⟩,
  ⟨3221225475, bound_row_3221225475⟩,
  ⟨3486784401, bound_row_3486784401⟩,
  ⟨3486784402, bound_row_3486784402⟩,
  ⟨3486784403, bound_row_3486784403⟩,
  ⟨3486784404, bound_row_3486784404⟩,
  ⟨4294967296, bound_row_4294967296⟩,
  ⟨4294967297, bound_row_4294967297⟩,
  ⟨4294967298, bound_row_4294967298⟩,
  ⟨4294967299, bound_row_4294967299⟩,
  ⟨6442450944, bound_row_6442450944⟩,
  ⟨6442450945, bound_row_6442450945⟩,
  ⟨6442450946, bound_row_6442450946⟩,
  ⟨6442450947, bound_row_6442450947⟩,
  ⟨6973568802, bound_row_6973568802⟩,
  ⟨6973568803, bound_row_6973568803⟩,
  ⟨6973568804, bound_row_6973568804⟩,
  ⟨6973568805, bound_row_6973568805⟩,
  ⟨8589934592, bound_row_8589934592⟩,
  ⟨8589934593, bound_row_8589934593⟩,
  ⟨8589934594, bound_row_8589934594⟩,
  ⟨8589934595, bound_row_8589934595⟩,
  ⟨10460353203, bound_row_10460353203⟩,
  ⟨10460353204, bound_row_10460353204⟩,
  ⟨10460353205, bound_row_10460353205⟩,
  ⟨10460353206, bound_row_10460353206⟩,
  ⟨12884901888, bound_row_12884901888⟩,
  ⟨12884901889, bound_row_12884901889⟩,
  ⟨12884901890, bound_row_12884901890⟩,
  ⟨12884901891, bound_row_12884901891⟩,
  ⟨17179869184, bound_row_17179869184⟩,
  ⟨17179869185, bound_row_17179869185⟩,
  ⟨17179869186, bound_row_17179869186⟩,
  ⟨17179869187, bound_row_17179869187⟩,
  ⟨20920706406, bound_row_20920706406⟩,
  ⟨20920706407, bound_row_20920706407⟩,
  ⟨20920706408, bound_row_20920706408⟩,
  ⟨20920706409, bound_row_20920706409⟩,
  ⟨25769803776, bound_row_25769803776⟩,
  ⟨25769803777, bound_row_25769803777⟩,
  ⟨25769803778, bound_row_25769803778⟩,
  ⟨25769803779, bound_row_25769803779⟩,
  ⟨31381059609, bound_row_31381059609⟩,
  ⟨31381059610, bound_row_31381059610⟩,
  ⟨31381059611, bound_row_31381059611⟩,
  ⟨31381059612, bound_row_31381059612⟩,
  ⟨34359738368, bound_row_34359738368⟩,
  ⟨34359738369, bound_row_34359738369⟩,
  ⟨34359738370, bound_row_34359738370⟩,
  ⟨34359738371, bound_row_34359738371⟩,
  ⟨51539607552, bound_row_51539607552⟩,
  ⟨51539607553, bound_row_51539607553⟩,
  ⟨51539607554, bound_row_51539607554⟩,
  ⟨51539607555, bound_row_51539607555⟩,
  ⟨62762119218, bound_row_62762119218⟩,
  ⟨62762119219, bound_row_62762119219⟩,
  ⟨62762119220, bound_row_62762119220⟩,
  ⟨62762119221, bound_row_62762119221⟩,
  ⟨68719476736, bound_row_68719476736⟩,
  ⟨68719476737, bound_row_68719476737⟩,
  ⟨68719476738, bound_row_68719476738⟩,
  ⟨68719476739, bound_row_68719476739⟩,
  ⟨94143178827, bound_row_94143178827⟩,
  ⟨94143178828, bound_row_94143178828⟩,
  ⟨94143178829, bound_row_94143178829⟩,
  ⟨94143178830, bound_row_94143178830⟩,
  ⟨103079215104, bound_row_103079215104⟩,
  ⟨103079215105, bound_row_103079215105⟩,
  ⟨103079215106, bound_row_103079215106⟩,
  ⟨103079215107, bound_row_103079215107⟩,
  ⟨137438953472, bound_row_137438953472⟩,
  ⟨137438953473, bound_row_137438953473⟩,
  ⟨137438953474, bound_row_137438953474⟩,
  ⟨137438953475, bound_row_137438953475⟩,
  ⟨188286357654, bound_row_188286357654⟩,
  ⟨188286357655, bound_row_188286357655⟩,
  ⟨188286357656, bound_row_188286357656⟩,
  ⟨188286357657, bound_row_188286357657⟩,
  ⟨206158430208, bound_row_206158430208⟩,
  ⟨206158430209, bound_row_206158430209⟩,
  ⟨206158430210, bound_row_206158430210⟩,
  ⟨206158430211, bound_row_206158430211⟩,
  ⟨274877906944, bound_row_274877906944⟩,
  ⟨274877906945, bound_row_274877906945⟩,
  ⟨274877906946, bound_row_274877906946⟩,
  ⟨274877906947, bound_row_274877906947⟩,
  ⟨412316860416, bound_row_412316860416⟩,
  ⟨412316860417, bound_row_412316860417⟩,
  ⟨412316860418, bound_row_412316860418⟩,
  ⟨412316860419, bound_row_412316860419⟩,
  ⟨549755813888, bound_row_549755813888⟩,
  ⟨549755813889, bound_row_549755813889⟩,
  ⟨549755813890, bound_row_549755813890⟩,
  ⟨549755813891, bound_row_549755813891⟩,
  ⟨824633720832, bound_row_824633720832⟩,
  ⟨824633720833, bound_row_824633720833⟩,
  ⟨824633720834, bound_row_824633720834⟩,
  ⟨824633720835, bound_row_824633720835⟩,
  ⟨1649267441664, bound_row_1649267441664⟩,
  ⟨1649267441665, bound_row_1649267441665⟩,
  ⟨1649267441666, bound_row_1649267441666⟩,
  ⟨1649267441667, bound_row_1649267441667⟩
]

def certifiedNs : List ℕ := [
  10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 48, 49, 50, 51, 54, 55, 56, 57, 64, 65, 66, 67, 81, 82, 83, 84, 96, 97, 98, 99, 128, 129, 130, 131, 162, 163, 164, 165, 192, 193, 194, 195, 243, 244, 245, 246, 256, 257, 258, 259, 384, 385, 386, 387, 486, 487, 488, 489, 512, 513, 514, 515, 729, 730, 731, 732, 768, 769, 770, 771, 1024, 1025, 1026, 1027, 1458, 1459, 1460, 1461, 1536, 1537, 1538, 1539, 2048, 2049, 2050, 2051, 2187, 2188, 2189, 2190, 3072, 3073, 3074, 3075, 4096, 4097, 4098, 4099, 4374, 4375, 4376, 4377, 6144, 6145, 6146, 6147, 6561, 6562, 6563, 6564, 8192, 8193, 8194, 8195, 12288, 12289, 12290, 12291, 13122, 13123, 13124, 13125, 16384, 16385, 16386, 16387, 19683, 19684, 19685, 19686, 24576, 24577, 24578, 24579, 32768, 32769, 32770, 32771, 39366, 39367, 39368, 39369, 49152, 49153, 49154, 49155, 59049, 59050, 59051, 59052, 65536, 65537, 65538, 65539, 98304, 98305, 98306, 98307, 118098, 118099, 118100, 118101, 131072, 131073, 131074, 131075, 177147, 177148, 177149, 177150, 196608, 196609, 196610, 196611, 262144, 262145, 262146, 262147, 354294, 354295, 354296, 354297, 393216, 393217, 393218, 393219, 524288, 524289, 524290, 524291, 531441, 531442, 531443, 531444, 786432, 786433, 786434, 786435, 1048576, 1048577, 1048578, 1048579, 1062882, 1062883, 1062884, 1062885, 1572864, 1572865, 1572866, 1572867, 1594323, 1594324, 1594325, 1594326, 2097152, 2097153, 2097154, 2097155, 3145728, 3145729, 3145730, 3145731, 3188646, 3188647, 3188648, 3188649, 4194304, 4194305, 4194306, 4194307, 4782969, 4782970, 4782971, 4782972, 6291456, 6291457, 6291458, 6291459, 8388608, 8388609, 8388610, 8388611, 9565938, 9565939, 9565940, 9565941, 12582912, 12582913, 12582914, 12582915, 14348907, 14348908, 14348909, 14348910, 16777216, 16777217, 16777218, 16777219, 25165824, 25165825, 25165826, 25165827, 28697814, 28697815, 28697816, 28697817, 33554432, 33554433, 33554434, 33554435, 43046721, 43046722, 43046723, 43046724, 50331648, 50331649, 50331650, 50331651, 67108864, 67108865, 67108866, 67108867, 86093442, 86093443, 86093444, 86093445, 100663296, 100663297, 100663298, 100663299, 129140163, 129140164, 129140165, 129140166, 134217728, 134217729, 134217730, 134217731, 201326592, 201326593, 201326594, 201326595, 258280326, 258280327, 258280328, 258280329, 268435456, 268435457, 268435458, 268435459, 387420489, 387420490, 387420491, 387420492, 402653184, 402653185, 402653186, 402653187, 536870912, 536870913, 536870914, 536870915, 774840978, 774840979, 774840980, 774840981, 805306368, 805306369, 805306370, 805306371, 1073741824, 1073741825, 1073741826, 1073741827, 1162261467, 1162261468, 1162261469, 1162261470, 1610612736, 1610612737, 1610612738, 1610612739, 2147483648, 2147483649, 2147483650, 2147483651, 2324522934, 2324522935, 2324522936, 2324522937, 3221225472, 3221225473, 3221225474, 3221225475, 3486784401, 3486784402, 3486784403, 3486784404, 4294967296, 4294967297, 4294967298, 4294967299, 6442450944, 6442450945, 6442450946, 6442450947, 6973568802, 6973568803, 6973568804, 6973568805, 8589934592, 8589934593, 8589934594, 8589934595, 10460353203, 10460353204, 10460353205, 10460353206, 12884901888, 12884901889, 12884901890, 12884901891, 17179869184, 17179869185, 17179869186, 17179869187, 20920706406, 20920706407, 20920706408, 20920706409, 25769803776, 25769803777, 25769803778, 25769803779, 31381059609, 31381059610, 31381059611, 31381059612, 34359738368, 34359738369, 34359738370, 34359738371, 51539607552, 51539607553, 51539607554, 51539607555, 62762119218, 62762119219, 62762119220, 62762119221, 68719476736, 68719476737, 68719476738, 68719476739, 94143178827, 94143178828, 94143178829, 94143178830, 103079215104, 103079215105, 103079215106, 103079215107, 137438953472, 137438953473, 137438953474, 137438953475, 188286357654, 188286357655, 188286357656, 188286357657, 206158430208, 206158430209, 206158430210, 206158430211, 274877906944, 274877906945, 274877906946, 274877906947, 412316860416, 412316860417, 412316860418, 412316860419, 549755813888, 549755813889, 549755813890, 549755813891, 824633720832, 824633720833, 824633720834, 824633720835, 1649267441664, 1649267441665, 1649267441666, 1649267441667
]

theorem certifiedNs_eq_map : certifiedNs = certifiedRows.map Subtype.val := by rfl

theorem certified_rows_count : certifiedRows.length = 467 := by decide

theorem certified_row_sound {n : ℕ} (hn : n ∈ certifiedNs) : CommonFour n := by
  rw [certifiedNs_eq_map] at hn
  obtain ⟨c,_,hc⟩ := List.mem_map.mp hn
  simpa only [hc] using c.property

/-- This finite test checks parameter coverage, including duplicate sources and all offsets. -/
def coverageAt (a : ℕ) : Bool :=
  (List.range 24).all fun b ↦ (List.range 4).all fun r ↦
    decide (min a b ≤ 1 → 10 ≤ 2^a*3^b+r → 2^a*3^b+r ∈ certifiedNs)

theorem coverage_at_0 : coverageAt 0 = true := by decide

theorem coverage_at_1 : coverageAt 1 = true := by decide

theorem coverage_at_2 : coverageAt 2 = true := by decide

theorem coverage_at_3 : coverageAt 3 = true := by decide

theorem coverage_at_4 : coverageAt 4 = true := by decide

theorem coverage_at_5 : coverageAt 5 = true := by decide

theorem coverage_at_6 : coverageAt 6 = true := by decide

theorem coverage_at_7 : coverageAt 7 = true := by decide

theorem coverage_at_8 : coverageAt 8 = true := by decide

theorem coverage_at_9 : coverageAt 9 = true := by decide

theorem coverage_at_10 : coverageAt 10 = true := by decide

theorem coverage_at_11 : coverageAt 11 = true := by decide

theorem coverage_at_12 : coverageAt 12 = true := by decide

theorem coverage_at_13 : coverageAt 13 = true := by decide

theorem coverage_at_14 : coverageAt 14 = true := by decide

theorem coverage_at_15 : coverageAt 15 = true := by decide

theorem coverage_at_16 : coverageAt 16 = true := by decide

theorem coverage_at_17 : coverageAt 17 = true := by decide

theorem coverage_at_18 : coverageAt 18 = true := by decide

theorem coverage_at_19 : coverageAt 19 = true := by decide

theorem coverage_at_20 : coverageAt 20 = true := by decide

theorem coverage_at_21 : coverageAt 21 = true := by decide

theorem coverage_at_22 : coverageAt 22 = true := by decide

theorem coverage_at_23 : coverageAt 23 = true := by decide

theorem coverage_at_24 : coverageAt 24 = true := by decide

theorem coverage_at_25 : coverageAt 25 = true := by decide

theorem coverage_at_26 : coverageAt 26 = true := by decide

theorem coverage_at_27 : coverageAt 27 = true := by decide

theorem coverage_at_28 : coverageAt 28 = true := by decide

theorem coverage_at_29 : coverageAt 29 = true := by decide

theorem coverage_at_30 : coverageAt 30 = true := by decide

theorem coverage_at_31 : coverageAt 31 = true := by decide

theorem coverage_at_32 : coverageAt 32 = true := by decide

theorem coverage_at_33 : coverageAt 33 = true := by decide

theorem coverage_at_34 : coverageAt 34 = true := by decide

theorem coverage_at_35 : coverageAt 35 = true := by decide

theorem coverage_at_36 : coverageAt 36 = true := by decide

theorem coverage_at_37 : coverageAt 37 = true := by decide

theorem coverage_at_38 : coverageAt 38 = true := by decide

theorem coverage_at_39 : coverageAt 39 = true := by decide

theorem boundedCoverage_checked (a : ℕ) (ha : a < 40) : coverageAt a = true := by
  interval_cases a
  · exact coverage_at_0
  · exact coverage_at_1
  · exact coverage_at_2
  · exact coverage_at_3
  · exact coverage_at_4
  · exact coverage_at_5
  · exact coverage_at_6
  · exact coverage_at_7
  · exact coverage_at_8
  · exact coverage_at_9
  · exact coverage_at_10
  · exact coverage_at_11
  · exact coverage_at_12
  · exact coverage_at_13
  · exact coverage_at_14
  · exact coverage_at_15
  · exact coverage_at_16
  · exact coverage_at_17
  · exact coverage_at_18
  · exact coverage_at_19
  · exact coverage_at_20
  · exact coverage_at_21
  · exact coverage_at_22
  · exact coverage_at_23
  · exact coverage_at_24
  · exact coverage_at_25
  · exact coverage_at_26
  · exact coverage_at_27
  · exact coverage_at_28
  · exact coverage_at_29
  · exact coverage_at_30
  · exact coverage_at_31
  · exact coverage_at_32
  · exact coverage_at_33
  · exact coverage_at_34
  · exact coverage_at_35
  · exact coverage_at_36
  · exact coverage_at_37
  · exact coverage_at_38
  · exact coverage_at_39

theorem bounded_window_mem {a b r : ℕ} (ha : a < 40) (hb : b < 24)
    (hmin : min a b ≤ 1) (hr : r ≤ 3) (hn : 10 ≤ 2^a*3^b+r) :
    2^a*3^b+r ∈ certifiedNs := by
  have hh := boundedCoverage_checked a ha
  unfold coverageAt at hh
  have h2 := List.all_eq_true.mp hh b (List.mem_range.mpr hb)
  have h3 := List.all_eq_true.mp h2 r (List.mem_range.mpr (by omega))
  exact of_decide_eq_true h3 hmin hn

theorem bounded_window_common {a b r : ℕ} (ha : a < 40) (hb : b < 24)
    (hmin : min a b ≤ 1) (hr : r ≤ 3) (hn : 10 ≤ 2^a*3^b+r) :
    CommonFour (2^a*3^b+r) :=
  certified_row_sound (bounded_window_mem ha hb hmin hr hn)

end B699.SmoothWindow
