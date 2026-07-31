# N=8, D=3 tropical-border certificate bundle

This bundle supplies the exact data missing from the earlier Codex handoff.

## Important correction

The canonical support is the 144-entry manifest preserved as
`/mnt/data/n8d3/support_v5_iter3.txt`, copied here as `support_144.txt`.
An earlier chat response incorrectly said that this was an older, different
support and should not be used. The independent replay in this bundle shows
that it is exactly compatible with the stated valuation and target matchings.

A second correction: the exact number of inequalities checked for this support
is **77,878**, not 82,618. This consists of every supported matching monomial
across all `3^8 = 6561` colorings, excluding only the three selected target
monomials. The strict minimum margin is exactly 1.

## Files

- `support_144.txt` — canonical 144-entry support in coordinate-index format.
- `certificate_manifest.json` — decoded support, valuation, target matchings,
  and exact verification statistics.
- `verify_tropical_border.py` — standalone integer-arithmetic verifier with no
  third-party dependencies.
- `verification_output.txt` — output of a successful full replay.
- `SHA256SUMS` — integrity hashes.

## Coordinate encoding

There are 28 undirected edges `(u,v)` of `K_8`, ordered lexicographically.
For edge index `ei` and endpoint colors `a,b in {0,1,2}`:

```text
coordinate = 9 * ei + 3 * a + b
```

Thus a coordinate represents `w_uv^{ab}`.

## Valuation

`nu = +1` on:

```text
w01^22, w04^00, w06^11, w12^11, w17^00, w26^00,
w27^22, w34^22, w35^00, w45^11, w56^22
```

`nu = 0` on:

```text
w01^00, w37^11
```

`nu = -1` on every other supported coordinate.

## Selected target matchings

```text
color 0: {04,17,26,35}, valuation sum 4
color 1: {06,12,37,45}, valuation sum 3
color 2: {01,27,34,56}, valuation sum 4
```

The verifier proves that every other supported matching monomial for every
coloring `q` has valuation at most `target_rate(q[0]) - 1`.

## Replay

```bash
python3 verify_tropical_border.py
```

Expected final lines include:

```text
minimum strict margin: 1
violations: 0
```

## Formalization claim

This data supports a border/closure theorem, not a finite exact solution:
with weights `w_e(t)=t^{nu(e)}` and exact normalization of the three target
amplitudes through the vertex-0 color entries, the normalized tensor converges
coordinatewise to the three-color eight-party GHZ tensor as `t -> +infinity`.

Codex should independently replay the finite inequality computation in Lean and
must not claim an exact finite graph.
