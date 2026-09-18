# QIG6 · sourced restatement, not original raw bytes

Fixed repository commit: e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b.
Original path: research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/deliveries/D-quartic-gap/notes/PROOFS.md, §§1--3.
API-returned git blob: 08765b4d0b2a0988f2d14cca92e652525678c514.

For native NC6 with 7<=j<=n/2, define T as the product of complete 2/3/5 parts of n,n-1,n-2,n-3.
Then

    T^6(3n^2-12n+8)>=2^20(n-1)^6(n-3)^3.

The source derives this from the quartic convolution's integral invariants and the strictly
positive integer (-J/V^3)^2-2(I/V^2)^3. All source powers p^e, p>=7, remain complete.

PROOFS.md §1 contains this round's full native-i6 derivation and handles every zero branch.
code/verify.py rebuilds the rational polynomial identities coefficient by coefficient.
No source finite-case certificates are reused or rerun, and this restatement has no purported raw-source SHA256.
