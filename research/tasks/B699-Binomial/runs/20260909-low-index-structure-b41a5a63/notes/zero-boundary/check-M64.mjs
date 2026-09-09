// Reproduce exactly the three fixed M=64 integer comparisons.
function fact(n) {
  let v = 1n;
  for (let j = 2; j <= n; j++) v *= BigInt(j);
  return v;
}
function windowFactorials(n) {
  let f = 1n;
  let v = 1n;
  for (let j = 1; j <= n; j++) {
    f *= BigInt(j);
    v *= f;
  }
  return v;
}
const rows = [[28, 9], [31, 10], [34, 11]].map(([i, t]) => {
  const r = t;
  const s = 2 * t + 1;
  const lambda = i + 1;
  const L = 2 * t;
  const K = (2n ** BigInt(s * (s + 1))) * windowFactorials(s) ** 2n *
    windowFactorials(L);
  const right = K * 64n ** BigInt(lambda * (t - 1));
  const left = (2n * fact(i)) ** BigInt(lambda);
  return {
    i, t, r, s, lambda, M: 64,
    degree: lambda * (i - t),
    MExponent: lambda * (t - 1),
    holds: left <= right,
    left: String(left),
    right: String(right),
    difference: String(right - left),
    ratioFloor: String(right / left)
  };
});
console.log(JSON.stringify(rows, null, 2));
