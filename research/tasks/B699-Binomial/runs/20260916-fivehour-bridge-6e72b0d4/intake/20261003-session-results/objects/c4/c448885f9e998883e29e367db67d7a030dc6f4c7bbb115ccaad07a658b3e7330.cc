#include "kernel/mod2.h"

#include <limits.h>
#include <stdio.h>

#include "resources/feFopen.h"
#include "resources/feResource.h"

#include "factory/factory.h"

#include "misc/options.h"

#include "coeffs/si_gmp.h"
#include "coeffs/coeffs.h"
#include "coeffs/numbers.h"

#include "polys/monomials/ring.h"
#include "polys/monomials/p_polys.h"
#ifdef HAVE_SHIFTBBA
#include "polys/shiftop.h"
#endif

#include "kernel/ideals.h"
#include "kernel/polys.h"
#include "kernel/GBEngine/kstd1.h"

static int fail(const char *label, const char *msg)
{
  fprintf(stderr, "test_interrupt: %s: %s\n", label, msg);
  return 1;
}

static ring make_commutative_ring(rRingOrder_t ord, int nvars)
{
  static const char * const varnames[] = {"w", "x", "y", "z"};

  char **names = (char **)omalloc(nvars * sizeof(char *));
  for (int i = 0; i < nvars; ++i)
  {
    names[i] = omStrDup(varnames[i]);
  }

  const int nblocks = 3;
  rRingOrder_t *order = (rRingOrder_t *)omAlloc0(nblocks * sizeof(rRingOrder_t));
  int *block0 = (int *)omAlloc0(nblocks * sizeof(int));
  int *block1 = (int *)omAlloc0(nblocks * sizeof(int));

  order[0] = ord;
  block0[0] = 1;
  block1[0] = nvars;

  order[1] = ringorder_C;
  block0[1] = 1;
  block1[1] = nvars;

  return rDefault(32003, nvars, names, nblocks, order, block0, block1);
}

static poly monomial(ring R, int coeff, int v1, int e1, int v2 = 0, int e2 = 0)
{
  poly p = p_ISet(coeff, R);
  if (v1 > 0) p_SetExp(p, v1, e1, R);
  if (v2 > 0) p_SetExp(p, v2, e2, R);
  p_Setm(p, R);
  return p;
}

static poly binomial(poly p, poly q, ring R)
{
  return p_Add_q(p, q, R);
}

static ideal make_commutative_ideal(ring R)
{
  const int w = 1;
  const int x = 2;
  const int y = 3;
  const int z = 4;

  ideal I = idInit(5, 1);
  MATELEM(I, 1, 1) = binomial(monomial(R,  1, w, 2),       monomial(R, -1, x, 1, z, 1), R);
  MATELEM(I, 1, 2) = binomial(monomial(R,  1, w, 1, x, 1), monomial(R, -1, y, 1, z, 1), R);
  MATELEM(I, 1, 3) = binomial(monomial(R,  1, x, 2),       monomial(R, -1, w, 1, y, 1), R);
  MATELEM(I, 1, 4) = binomial(monomial(R,  1, x, 1, y, 1), monomial(R, -1, z, 2),       R);
  MATELEM(I, 1, 5) = binomial(monomial(R,  1, y, 2),       monomial(R, -1, w, 1, z, 1), R);
  return I;
}

#ifdef HAVE_SHIFTBBA
static ring make_letterplace_ring()
{
  ring base = make_commutative_ring(ringorder_dp, 3);
  if (base == NULL) return NULL;
  ring lp = freeAlgebra(base, 3);
  rDelete(base);
  return lp;
}

static poly lp_word(ring R, int coeff, int first_letter, int second_letter)
{
  const int block_size = R->isLPring;
  return monomial(R, coeff, first_letter, 1, block_size + second_letter, 1);
}

static ideal make_letterplace_ideal(ring R)
{
  ideal I = idInit(2, 1);

  // Two homogeneous degree-two relations.  The concrete mathematics is not
  // important here; the test only needs bbaShift to start with a non-empty
  // pair list and then observe siCntrlc.
  MATELEM(I, 1, 1) = binomial(lp_word(R,  1, 1, 2), lp_word(R, -1, 2, 1), R);
  MATELEM(I, 1, 2) = binomial(lp_word(R,  1, 2, 3), lp_word(R, -1, 3, 2), R);
  return I;
}
#endif

typedef ideal (*ideal_factory)(ring);

static int run_interrupted_std_once(const char *label, ring R,
                                    ideal_factory make_ideal,
                                    BOOLEAN with_deg_bound)
{
  if (R == NULL) return fail(label, "could not construct test ring");

  ring old_ring = currRing;
  rChangeCurrRing(R);
  ideal I = make_ideal(R);

  BITSET save_opt1;
  BITSET save_opt2;
  SI_SAVE_OPT(save_opt1, save_opt2);
  const int save_deg_bound = Kstd1_deg;
  const BOOLEAN save_ctrlc = siCntrlc;
  const short save_errorreported = errorreported;

  if (with_deg_bound)
  {
    // With this flag set, the pre-fix code immediately evaluated
    // strat->L[strat->Ll] after the siCntrlc cleanup had set strat->Ll to -1.
    si_opt_1 |= Sy_bit(OPT_DEGBOUND);
    Kstd1_deg = INT_MAX / 4;
  }
  else
  {
    // Also cover the non-degBound fall-through path, which used to continue
    // with strat->P = strat->L[strat->Ll] and strat->Ll == -1.
    si_opt_1 &= ~Sy_bit(OPT_DEGBOUND);
  }

  errorreported = 0;

  // No signal, no sleep, no thread: directly model the state produced by an
  // already-delivered interrupt.  Passing newIdeal=1 avoids Hilbert/HC
  // precomputation shortcuts, so kStd reaches the Buchberger/Mora loop.
  siCntrlc = TRUE;
  ideal G = kStd(I, currRing->qideal, testHomog, NULL, NULL, 0, 1);
  const short reported = errorreported;

  siCntrlc = save_ctrlc;
  Kstd1_deg = save_deg_bound;
  SI_RESTORE_OPT(save_opt1, save_opt2);
  errorreported = save_errorreported;

  int rc = 0;
  if (reported)
  {
    rc = fail(label, "interrupted std reported an error");
  }
  else if (G == NULL)
  {
    rc = fail(label, "interrupted std returned NULL");
  }

  if (G != NULL) id_Delete(&G, R);
  id_Delete(&I, R);
  rChangeCurrRing(old_ring);
  rDelete(R);

  return rc;
}

int main(int, char *argv[])
{
  if (sizeof(long) != SIZEOF_LONG)
  {
    return fail("setup", "bad config.h: wrong size of long");
  }

  feInitResources(argv[0]);

  int rc = 0;
  rc |= run_interrupted_std_once("bba/global dp",
                                 make_commutative_ring(ringorder_dp, 4),
                                 make_commutative_ideal, FALSE);
  rc |= run_interrupted_std_once("bba/global dp/degBound",
                                 make_commutative_ring(ringorder_dp, 4),
                                 make_commutative_ideal, TRUE);
  rc |= run_interrupted_std_once("mora/local ds",
                                 make_commutative_ring(ringorder_ds, 4),
                                 make_commutative_ideal, FALSE);
  rc |= run_interrupted_std_once("mora/local ds/degBound",
                                 make_commutative_ring(ringorder_ds, 4),
                                 make_commutative_ideal, TRUE);

#ifdef HAVE_SHIFTBBA
  rc |= run_interrupted_std_once("bbaShift/letterplace",
                                 make_letterplace_ring(),
                                 make_letterplace_ideal, FALSE);
  rc |= run_interrupted_std_once("bbaShift/letterplace/degBound",
                                 make_letterplace_ring(),
                                 make_letterplace_ideal, TRUE);
#endif

  return rc;
}
