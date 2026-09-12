# i11 terminal witness pilot

This is a source-only candidate using the accepted WitnessBridge and the existing LargeDivisorWitness goodSegmentCheck/goodSegmentCheck_sound API. It preserves i=11, r=3, s=7, width D=10, and the exact terminal witnesses from terminal_certificate_11.json: [24,33] with p=23, n=124 with the supplied large divisor, and the four top-prime survivor intervals containing 730, 1030, 1032, and 1380.

Each checked segment has a decide proof and a consumer theorem retaining arbitrary 11<j and j≤n/2. The candidate was not compiled. Numeric audit checks divisor/factorial divisibility, gcd, window bound, prime witnesses, and the n=330 two-interval special row without expanding its 154 choose terms. No direct mod/carry binomial divisibility consumer was found; no new proof interface is invented.
