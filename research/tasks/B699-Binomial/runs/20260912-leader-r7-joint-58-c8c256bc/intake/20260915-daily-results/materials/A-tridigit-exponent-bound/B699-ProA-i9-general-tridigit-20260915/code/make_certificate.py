"""Regenerate the final finite specification. Not run by receiving."""
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
spec=json.loads(r'''
{
  "schema": "B699-A-GENERAL-TRIDIGIT-1",
  "inherited": {
    "edge_power": 213,
    "g_power": 200,
    "beta_power": 205,
    "band_d_power": 6,
    "band_constant": 26,
    "distance_power": 9,
    "distance_constant": 128,
    "finite_log2": 4096
  },
  "new": {
    "high_log2": 2048,
    "linear_min": 10,
    "second_e_min": 14,
    "second_gap_offset": 14,
    "denominator_square_exponent": 454,
    "denominator_bound_exponent": 1544,
    "distance_bound_exponent": 26368,
    "phi_bound_degree": 10,
    "T2_bound_degree": 14,
    "T2_denominator": 2520
  },
  "second_terms": [
    [
      1,
      8,
      315
    ],
    [
      2,
      7,
      180
    ],
    [
      3,
      6,
      140
    ],
    [
      4,
      5,
      126
    ]
  ],
  "cyclotomic_F": [
    [
      6,
      0,
      1
    ],
    [
      3,
      3,
      -1
    ],
    [
      0,
      6,
      1
    ]
  ],
  "factor_Q2": [
    [
      2,
      0,
      1
    ],
    [
      1,
      1,
      -1
    ],
    [
      0,
      2,
      1
    ]
  ],
  "balanced_example": {
    "b": 6,
    "C": 513,
    "masks": [
      {
        "u": 1,
        "v": 2,
        "B": 2,
        "S": 1
      },
      {
        "u": 2,
        "v": 1,
        "B": 4,
        "S": 512
      }
    ],
    "T2": [
      -118590013440,
      118590013440
    ]
  },
  "exhaustive_branches": [
    "B=0",
    "B>=1,Phi!=0",
    "B=b,S=C",
    "1<=B<b,1<=S<C,Phi=0"
  ],
  "symmetric_H9_over_delta": [
    [
      4,
      0,
      945
    ],
    [
      3,
      2,
      -1260
    ],
    [
      3,
      0,
      -13860
    ],
    [
      2,
      4,
      378
    ],
    [
      2,
      2,
      15120
    ],
    [
      2,
      0,
      65772
    ],
    [
      1,
      6,
      -36
    ],
    [
      1,
      4,
      -3276
    ],
    [
      1,
      2,
      -53424
    ],
    [
      1,
      0,
      -109584
    ],
    [
      0,
      8,
      1
    ],
    [
      0,
      6,
      168
    ],
    [
      0,
      4,
      6384
    ],
    [
      0,
      2,
      52352
    ],
    [
      0,
      0,
      40320
    ]
  ],
  "q_rigidity": {
    "primes": [
      2,
      5
    ],
    "minimum_n_valuations": [
      4,
      2
    ],
    "cube_constant": 551,
    "final_constant": 571
  },
  "scope": {
    "R7": [
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "families": 58,
    "global_closure": false,
    "historical_receivers": 0,
    "Lean": false,
    "highest_digit": 1,
    "main_n_divisor": 400
  },
  "resonance": {
    "R": [
      [
        6,
        0,
        761
      ],
      [
        5,
        1,
        -446
      ],
      [
        4,
        2,
        1027
      ],
      [
        3,
        3,
        -572
      ],
      [
        2,
        4,
        1027
      ],
      [
        1,
        5,
        -446
      ],
      [
        0,
        6,
        761
      ]
    ],
    "large_u_min": 16,
    "small_u_min": 2,
    "small_u_max": 15,
    "small_pair_count": 71,
    "positive_lower": 50265,
    "upper_constant": 3576,
    "denominator": 2520,
    "near_delta_max": 13,
    "near_coefficient_degree": 27,
    "separated_e_min": 27,
    "separated_h_min": 10,
    "all_gap_e_min": 23,
    "short_h_max": 9,
    "gap_log2_constant": 228,
    "gap_p_constant": 66,
    "gap_offset": 72,
    "case_partition": [
      "h<e",
      "e<=h<=e+13",
      "h>=e+14"
    ],
    "all_gap_partition": [
      "1<=h<=9",
      "h>=10"
    ],
    "consumer_long_e_min": 16,
    "coupled_direct_constant": 213,
    "two_coeff_constant": 37,
    "join_constant": 251,
    "balanced_prime_log2_lower": 9,
    "old_two_coefficient_contract": {
      "denominator_power": 8,
      "denominator_constant": 37,
      "distance_power": 9,
      "distance_constant": 128,
      "n_divisor": 400,
      "does_not_require_K9_nonzero": true
    }
  }
}
''')
(ROOT/'evidence/certificate.json').write_text(json.dumps(spec,indent=2)+'\n')
print('generated evidence/certificate.json')
