import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificate
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificateData

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex
open B699LargePrimeStructure

/-- Exact finite height-row proposition used by the registered table. -/
/- Input SHA-256: 69d16096c414177438342f1dca93eeb256ad20850ac5b9f36387e9c1bb0607a0 -/
def HeightRowValid (row : HeightCertificateDatum) : Prop :=
  2 ≤ row.i ∧
  row.r < row.i ∧
  0 < row.s ∧
  row.s < row.i ∧
  0 < 2 * row.s - row.r ∧
  row.i ≤ row.n0 ∧
  heightExponent row.i row.r row.s ≤ row.i * (2 * row.s - row.r) ∧
  row.i.factorial ^ (2 * row.s - row.r) *
      row.n0 ^ heightExponent row.i row.r row.s <
    windowConstant row.i row.r row.s *
      row.n0.descFactorial row.i ^ (2 * row.s - row.r)

instance (row : HeightCertificateDatum) : Decidable (HeightRowValid row) := by
  unfold HeightRowValid
  infer_instance

def heightRowValidBool (row : HeightCertificateDatum) : Bool :=
  decide (HeightRowValid row)

theorem height_row_valid_bool_029 :
    heightRowValidBool { i := 29, r := 9, s := 19, n0Power10 := 37 } = true := by
  decide

theorem height_row_valid_bool_035 :
    heightRowValidBool { i := 35, r := 11, s := 23, n0Power10 := 49 } = true := by
  decide

theorem height_row_valid_bool_036 :
    heightRowValidBool { i := 36, r := 11, s := 24, n0Power10 := 26 } = true := by
  decide

theorem height_row_valid_bool_037 :
    heightRowValidBool { i := 37, r := 12, s := 25, n0Power10 := 18 } = true := by
  decide

theorem height_row_valid_bool_038 :
    heightRowValidBool { i := 38, r := 12, s := 25, n0Power10 := 54 } = true := by
  decide

theorem height_row_valid_bool_039 :
    heightRowValidBool { i := 39, r := 12, s := 26, n0Power10 := 29 } = true := by
  decide

theorem height_row_valid_bool_040 :
    heightRowValidBool { i := 40, r := 13, s := 27, n0Power10 := 20 } = true := by
  decide

theorem height_row_valid_bool_041 :
    heightRowValidBool { i := 41, r := 13, s := 28, n0Power10 := 16 } = true := by
  decide

theorem height_row_valid_bool_042 :
    heightRowValidBool { i := 42, r := 13, s := 28, n0Power10 := 31 } = true := by
  decide

theorem height_row_valid_bool_043 :
    heightRowValidBool { i := 43, r := 14, s := 29, n0Power10 := 22 } = true := by
  decide

theorem height_row_valid_bool_044 :
    heightRowValidBool { i := 44, r := 14, s := 29, n0Power10 := 66 } = true := by
  decide

theorem height_row_valid_bool_045 :
    heightRowValidBool { i := 45, r := 14, s := 30, n0Power10 := 34 } = true := by
  decide

theorem height_row_valid_bool_046 :
    heightRowValidBool { i := 46, r := 15, s := 31, n0Power10 := 24 } = true := by
  decide

theorem height_row_valid_bool_047 :
    heightRowValidBool { i := 47, r := 15, s := 32, n0Power10 := 19 } = true := by
  decide

theorem height_row_valid_bool_048 :
    heightRowValidBool { i := 48, r := 15, s := 32, n0Power10 := 37 } = true := by
  decide

theorem height_row_valid_bool_049 :
    heightRowValidBool { i := 49, r := 16, s := 33, n0Power10 := 26 } = true := by
  decide

theorem height_row_valid_bool_050 :
    heightRowValidBool { i := 50, r := 16, s := 34, n0Power10 := 20 } = true := by
  decide

theorem height_row_valid_bool_051 :
    heightRowValidBool { i := 51, r := 16, s := 35, n0Power10 := 17 } = true := by
  decide

theorem height_row_valid_bool_052 :
    heightRowValidBool { i := 52, r := 17, s := 35, n0Power10 := 14 } = true := by
  decide

theorem height_row_valid_bool_053 :
    heightRowValidBool { i := 53, r := 17, s := 36, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_054 :
    heightRowValidBool { i := 54, r := 17, s := 37, n0Power10 := 18 } = true := by
  decide

theorem height_row_valid_bool_055 :
    heightRowValidBool { i := 55, r := 18, s := 37, n0Power10 := 15 } = true := by
  decide

theorem height_row_valid_bool_056 :
    heightRowValidBool { i := 56, r := 18, s := 38, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_057 :
    heightRowValidBool { i := 57, r := 18, s := 39, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_058 :
    heightRowValidBool { i := 58, r := 19, s := 40, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_059 :
    heightRowValidBool { i := 59, r := 19, s := 41, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_060 :
    heightRowValidBool { i := 60, r := 19, s := 41, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_061 :
    heightRowValidBool { i := 61, r := 20, s := 42, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_062 :
    heightRowValidBool { i := 62, r := 20, s := 42, n0Power10 := 15 } = true := by
  decide

theorem height_row_valid_bool_063 :
    heightRowValidBool { i := 63, r := 20, s := 43, n0Power10 := 14 } = true := by
  decide

theorem height_row_valid_bool_064 :
    heightRowValidBool { i := 64, r := 21, s := 44, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_065 :
    heightRowValidBool { i := 65, r := 21, s := 45, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_066 :
    heightRowValidBool { i := 66, r := 21, s := 45, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_067 :
    heightRowValidBool { i := 67, r := 22, s := 46, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_068 :
    heightRowValidBool { i := 68, r := 22, s := 47, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_069 :
    heightRowValidBool { i := 69, r := 22, s := 47, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_070 :
    heightRowValidBool { i := 70, r := 23, s := 48, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_071 :
    heightRowValidBool { i := 71, r := 23, s := 49, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_072 :
    heightRowValidBool { i := 72, r := 23, s := 49, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_073 :
    heightRowValidBool { i := 73, r := 24, s := 50, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_074 :
    heightRowValidBool { i := 74, r := 24, s := 51, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_075 :
    heightRowValidBool { i := 75, r := 24, s := 51, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_076 :
    heightRowValidBool { i := 76, r := 25, s := 52, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_077 :
    heightRowValidBool { i := 77, r := 25, s := 53, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_078 :
    heightRowValidBool { i := 78, r := 25, s := 54, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_079 :
    heightRowValidBool { i := 79, r := 26, s := 55, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_080 :
    heightRowValidBool { i := 80, r := 26, s := 55, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_081 :
    heightRowValidBool { i := 81, r := 26, s := 56, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_082 :
    heightRowValidBool { i := 82, r := 27, s := 57, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_083 :
    heightRowValidBool { i := 83, r := 27, s := 57, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_084 :
    heightRowValidBool { i := 84, r := 27, s := 58, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_085 :
    heightRowValidBool { i := 85, r := 28, s := 59, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_086 :
    heightRowValidBool { i := 86, r := 28, s := 59, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_087 :
    heightRowValidBool { i := 87, r := 28, s := 60, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_088 :
    heightRowValidBool { i := 88, r := 29, s := 61, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_089 :
    heightRowValidBool { i := 89, r := 29, s := 62, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_090 :
    heightRowValidBool { i := 90, r := 29, s := 62, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_091 :
    heightRowValidBool { i := 91, r := 30, s := 63, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_092 :
    heightRowValidBool { i := 92, r := 30, s := 64, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_093 :
    heightRowValidBool { i := 93, r := 30, s := 65, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_094 :
    heightRowValidBool { i := 94, r := 31, s := 65, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_095 :
    heightRowValidBool { i := 95, r := 31, s := 66, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_096 :
    heightRowValidBool { i := 96, r := 31, s := 67, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_097 :
    heightRowValidBool { i := 97, r := 32, s := 68, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_098 :
    heightRowValidBool { i := 98, r := 32, s := 68, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_099 :
    heightRowValidBool { i := 99, r := 32, s := 69, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_100 :
    heightRowValidBool { i := 100, r := 33, s := 70, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_101 :
    heightRowValidBool { i := 101, r := 33, s := 71, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_102 :
    heightRowValidBool { i := 102, r := 33, s := 71, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_103 :
    heightRowValidBool { i := 103, r := 34, s := 72, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_104 :
    heightRowValidBool { i := 104, r := 34, s := 72, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_105 :
    heightRowValidBool { i := 105, r := 34, s := 73, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_106 :
    heightRowValidBool { i := 106, r := 35, s := 74, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_107 :
    heightRowValidBool { i := 107, r := 35, s := 75, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_108 :
    heightRowValidBool { i := 108, r := 35, s := 75, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_109 :
    heightRowValidBool { i := 109, r := 36, s := 76, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_110 :
    heightRowValidBool { i := 110, r := 36, s := 76, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_111 :
    heightRowValidBool { i := 111, r := 36, s := 77, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_112 :
    heightRowValidBool { i := 112, r := 37, s := 78, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_113 :
    heightRowValidBool { i := 113, r := 37, s := 79, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_114 :
    heightRowValidBool { i := 114, r := 37, s := 79, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_115 :
    heightRowValidBool { i := 115, r := 38, s := 80, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_116 :
    heightRowValidBool { i := 116, r := 38, s := 81, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_117 :
    heightRowValidBool { i := 117, r := 38, s := 81, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_118 :
    heightRowValidBool { i := 118, r := 39, s := 82, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_119 :
    heightRowValidBool { i := 119, r := 39, s := 83, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_120 :
    heightRowValidBool { i := 120, r := 39, s := 84, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_121 :
    heightRowValidBool { i := 121, r := 40, s := 85, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_122 :
    heightRowValidBool { i := 122, r := 40, s := 86, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_123 :
    heightRowValidBool { i := 123, r := 40, s := 86, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_124 :
    heightRowValidBool { i := 124, r := 41, s := 87, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_125 :
    heightRowValidBool { i := 125, r := 41, s := 88, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_126 :
    heightRowValidBool { i := 126, r := 41, s := 89, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_127 :
    heightRowValidBool { i := 127, r := 42, s := 90, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_128 :
    heightRowValidBool { i := 128, r := 42, s := 90, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_129 :
    heightRowValidBool { i := 129, r := 42, s := 91, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_130 :
    heightRowValidBool { i := 130, r := 43, s := 92, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_131 :
    heightRowValidBool { i := 131, r := 43, s := 92, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_132 :
    heightRowValidBool { i := 132, r := 43, s := 93, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_133 :
    heightRowValidBool { i := 133, r := 44, s := 94, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_134 :
    heightRowValidBool { i := 134, r := 44, s := 94, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_135 :
    heightRowValidBool { i := 135, r := 44, s := 95, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_136 :
    heightRowValidBool { i := 136, r := 45, s := 96, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_137 :
    heightRowValidBool { i := 137, r := 45, s := 97, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_138 :
    heightRowValidBool { i := 138, r := 45, s := 97, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_139 :
    heightRowValidBool { i := 139, r := 46, s := 98, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_140 :
    heightRowValidBool { i := 140, r := 46, s := 98, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_141 :
    heightRowValidBool { i := 141, r := 46, s := 99, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_142 :
    heightRowValidBool { i := 142, r := 47, s := 100, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_143 :
    heightRowValidBool { i := 143, r := 47, s := 101, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_144 :
    heightRowValidBool { i := 144, r := 47, s := 102, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_145 :
    heightRowValidBool { i := 145, r := 48, s := 102, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_146 :
    heightRowValidBool { i := 146, r := 48, s := 103, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_147 :
    heightRowValidBool { i := 147, r := 48, s := 104, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_148 :
    heightRowValidBool { i := 148, r := 49, s := 105, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_149 :
    heightRowValidBool { i := 149, r := 49, s := 106, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_150 :
    heightRowValidBool { i := 150, r := 49, s := 106, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_151 :
    heightRowValidBool { i := 151, r := 50, s := 107, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_152 :
    heightRowValidBool { i := 152, r := 50, s := 107, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_153 :
    heightRowValidBool { i := 153, r := 50, s := 108, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_154 :
    heightRowValidBool { i := 154, r := 51, s := 109, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_155 :
    heightRowValidBool { i := 155, r := 51, s := 110, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_156 :
    heightRowValidBool { i := 156, r := 51, s := 111, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_157 :
    heightRowValidBool { i := 157, r := 52, s := 111, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_158 :
    heightRowValidBool { i := 158, r := 52, s := 112, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_159 :
    heightRowValidBool { i := 159, r := 52, s := 112, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_160 :
    heightRowValidBool { i := 160, r := 53, s := 113, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_161 :
    heightRowValidBool { i := 161, r := 53, s := 114, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_162 :
    heightRowValidBool { i := 162, r := 53, s := 115, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_163 :
    heightRowValidBool { i := 163, r := 54, s := 116, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_164 :
    heightRowValidBool { i := 164, r := 54, s := 116, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_165 :
    heightRowValidBool { i := 165, r := 54, s := 117, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_166 :
    heightRowValidBool { i := 166, r := 55, s := 118, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_167 :
    heightRowValidBool { i := 167, r := 55, s := 119, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_168 :
    heightRowValidBool { i := 168, r := 55, s := 119, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_169 :
    heightRowValidBool { i := 169, r := 56, s := 120, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_170 :
    heightRowValidBool { i := 170, r := 56, s := 121, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_171 :
    heightRowValidBool { i := 171, r := 56, s := 121, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_172 :
    heightRowValidBool { i := 172, r := 57, s := 122, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_173 :
    heightRowValidBool { i := 173, r := 57, s := 123, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_174 :
    heightRowValidBool { i := 174, r := 57, s := 123, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_175 :
    heightRowValidBool { i := 175, r := 58, s := 124, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_176 :
    heightRowValidBool { i := 176, r := 58, s := 125, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_177 :
    heightRowValidBool { i := 177, r := 58, s := 126, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_178 :
    heightRowValidBool { i := 178, r := 59, s := 127, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_179 :
    heightRowValidBool { i := 179, r := 59, s := 128, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_180 :
    heightRowValidBool { i := 180, r := 59, s := 128, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_181 :
    heightRowValidBool { i := 181, r := 60, s := 129, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_182 :
    heightRowValidBool { i := 182, r := 60, s := 129, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_183 :
    heightRowValidBool { i := 183, r := 60, s := 130, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_184 :
    heightRowValidBool { i := 184, r := 61, s := 130, n0Power10 := 7 } = true := by
  decide

theorem heightCertificateDataValidBool :
    List.all heightCertificateData heightRowValidBool = true := by
  simp only [heightCertificateData, List.all_cons, List.all_nil,
    height_row_valid_bool_029,
    height_row_valid_bool_035,
    height_row_valid_bool_036,
    height_row_valid_bool_037,
    height_row_valid_bool_038,
    height_row_valid_bool_039,
    height_row_valid_bool_040,
    height_row_valid_bool_041,
    height_row_valid_bool_042,
    height_row_valid_bool_043,
    height_row_valid_bool_044,
    height_row_valid_bool_045,
    height_row_valid_bool_046,
    height_row_valid_bool_047,
    height_row_valid_bool_048,
    height_row_valid_bool_049,
    height_row_valid_bool_050,
    height_row_valid_bool_051,
    height_row_valid_bool_052,
    height_row_valid_bool_053,
    height_row_valid_bool_054,
    height_row_valid_bool_055,
    height_row_valid_bool_056,
    height_row_valid_bool_057,
    height_row_valid_bool_058,
    height_row_valid_bool_059,
    height_row_valid_bool_060,
    height_row_valid_bool_061,
    height_row_valid_bool_062,
    height_row_valid_bool_063,
    height_row_valid_bool_064,
    height_row_valid_bool_065,
    height_row_valid_bool_066,
    height_row_valid_bool_067,
    height_row_valid_bool_068,
    height_row_valid_bool_069,
    height_row_valid_bool_070,
    height_row_valid_bool_071,
    height_row_valid_bool_072,
    height_row_valid_bool_073,
    height_row_valid_bool_074,
    height_row_valid_bool_075,
    height_row_valid_bool_076,
    height_row_valid_bool_077,
    height_row_valid_bool_078,
    height_row_valid_bool_079,
    height_row_valid_bool_080,
    height_row_valid_bool_081,
    height_row_valid_bool_082,
    height_row_valid_bool_083,
    height_row_valid_bool_084,
    height_row_valid_bool_085,
    height_row_valid_bool_086,
    height_row_valid_bool_087,
    height_row_valid_bool_088,
    height_row_valid_bool_089,
    height_row_valid_bool_090,
    height_row_valid_bool_091,
    height_row_valid_bool_092,
    height_row_valid_bool_093,
    height_row_valid_bool_094,
    height_row_valid_bool_095,
    height_row_valid_bool_096,
    height_row_valid_bool_097,
    height_row_valid_bool_098,
    height_row_valid_bool_099,
    height_row_valid_bool_100,
    height_row_valid_bool_101,
    height_row_valid_bool_102,
    height_row_valid_bool_103,
    height_row_valid_bool_104,
    height_row_valid_bool_105,
    height_row_valid_bool_106,
    height_row_valid_bool_107,
    height_row_valid_bool_108,
    height_row_valid_bool_109,
    height_row_valid_bool_110,
    height_row_valid_bool_111,
    height_row_valid_bool_112,
    height_row_valid_bool_113,
    height_row_valid_bool_114,
    height_row_valid_bool_115,
    height_row_valid_bool_116,
    height_row_valid_bool_117,
    height_row_valid_bool_118,
    height_row_valid_bool_119,
    height_row_valid_bool_120,
    height_row_valid_bool_121,
    height_row_valid_bool_122,
    height_row_valid_bool_123,
    height_row_valid_bool_124,
    height_row_valid_bool_125,
    height_row_valid_bool_126,
    height_row_valid_bool_127,
    height_row_valid_bool_128,
    height_row_valid_bool_129,
    height_row_valid_bool_130,
    height_row_valid_bool_131,
    height_row_valid_bool_132,
    height_row_valid_bool_133,
    height_row_valid_bool_134,
    height_row_valid_bool_135,
    height_row_valid_bool_136,
    height_row_valid_bool_137,
    height_row_valid_bool_138,
    height_row_valid_bool_139,
    height_row_valid_bool_140,
    height_row_valid_bool_141,
    height_row_valid_bool_142,
    height_row_valid_bool_143,
    height_row_valid_bool_144,
    height_row_valid_bool_145,
    height_row_valid_bool_146,
    height_row_valid_bool_147,
    height_row_valid_bool_148,
    height_row_valid_bool_149,
    height_row_valid_bool_150,
    height_row_valid_bool_151,
    height_row_valid_bool_152,
    height_row_valid_bool_153,
    height_row_valid_bool_154,
    height_row_valid_bool_155,
    height_row_valid_bool_156,
    height_row_valid_bool_157,
    height_row_valid_bool_158,
    height_row_valid_bool_159,
    height_row_valid_bool_160,
    height_row_valid_bool_161,
    height_row_valid_bool_162,
    height_row_valid_bool_163,
    height_row_valid_bool_164,
    height_row_valid_bool_165,
    height_row_valid_bool_166,
    height_row_valid_bool_167,
    height_row_valid_bool_168,
    height_row_valid_bool_169,
    height_row_valid_bool_170,
    height_row_valid_bool_171,
    height_row_valid_bool_172,
    height_row_valid_bool_173,
    height_row_valid_bool_174,
    height_row_valid_bool_175,
    height_row_valid_bool_176,
    height_row_valid_bool_177,
    height_row_valid_bool_178,
    height_row_valid_bool_179,
    height_row_valid_bool_180,
    height_row_valid_bool_181,
    height_row_valid_bool_182,
    height_row_valid_bool_183,
    height_row_valid_bool_184,
    Bool.true_and]

theorem heightCertificateData_valid {row : HeightCertificateDatum}
    (hrow : row ∈ heightCertificateData) : HeightRowValid row := by
  have hall := List.all_eq_true.mp heightCertificateDataValidBool
  have hcheck := hall row hrow
  exact of_decide_eq_true (by simpa [heightRowValidBool] using hcheck)

theorem heightCertificateData_length :
    heightCertificateData.length = 151 := by
  decide

theorem heightCertificateData_indices :
    heightCertificateData.map HeightCertificateDatum.i = [29, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184] := by
  decide

theorem common_of_registered_height
    {row : HeightCertificateDatum} (hrow : row ∈ heightCertificateData)
    {n j : ℕ} (hij : row.i < j) (hjn : j ≤ n / 2)
    (hNn : row.n0 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ row.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.i) (n.choose j) := by
  have hvalid := heightCertificateData_valid hrow
  rcases hvalid with ⟨hi, _, _, hsi, _, hiN, hdegree, hcertificate⟩
  exact common_of_height_certificate
    (N := row.n0) (n := n) (i := row.i) (j := j)
    (r := row.r) (s := row.s) hi hij hjn hsi hiN hNn hdegree hcertificate

end B699LowIndex

#print axioms B699LowIndex.heightCertificateData_valid
#print axioms B699LowIndex.heightCertificateData_indices
#print axioms B699LowIndex.common_of_registered_height
