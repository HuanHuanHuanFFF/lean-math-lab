#include "kernel/mod2.h"

#include "misc/options.h"
#include "misc/intvec.h"

#include "kernel/polys.h"
#include "polys/monomials/ring.h"


#include "kernel/ideals.h"
#include "kernel/GBEngine/kstd1.h"
#include "kernel/GBEngine/khstd.h"

#include <limits.h>

#ifdef HAVE_PLURAL
#include "polys/nc/nc.h"
#endif

/*2
*shifts the variables between minvar and maxvar of p  \in p_ring to the
*first maxvar-minvar+1 variables in the actual ring
*be careful: there is no range check for the variables of p
*/
static poly pChangeSizeOfPoly(ring p_ring, poly p,int minvar,int maxvar, const ring dst_r)
{
  int i;
  poly result = NULL,resultWorkP;
  number n;

  if (p==NULL) return result;
  else result = p_Init(dst_r);
  resultWorkP = result;
  while (p!=NULL)
  {
    for (i=minvar;i<=maxvar;i++)
      p_SetExp(resultWorkP,i-minvar+1,p_GetExp(p,i,p_ring),dst_r);
    p_SetComp(resultWorkP,p_GetComp(p,p_ring),dst_r);
    n=n_Copy(pGetCoeff(p),dst_r->cf);
    p_SetCoeff0(resultWorkP,n,dst_r);
    p_Setm(resultWorkP,dst_r);
    pIter(p);
    if (p!=NULL)
    {
      pNext(resultWorkP) = p_Init(dst_r);
      pIter(resultWorkP);
    }
  }
  return result;
}

static long maTermWeightedDegree(poly p, const ring r)
{
  long d = 0;

  for (int i=1; i<=rVar(r); i++)
    d += ((long)p_GetExp(p,i,r))*p_Weight(i,r);

  return d;
}

static long maHomogeneousWeightedDegree(poly p, const ring r)
{
  if (p == NULL) return 1;

  long d = maTermWeightedDegree(p,r);
  pIter(p);
  while (p != NULL)
  {
    if (maTermWeightedDegree(p,r) != d) return -1;
    pIter(p);
  }
  return d;
}

static BOOLEAN maIdealWeightedHomogeneous(ideal id, const ring r)
{
  if (id == NULL) return TRUE;

  for (int i=0; i<IDELEMS(id); i++)
    if (maHomogeneousWeightedDegree(id->m[i],r) < 0) return FALSE;

  return TRUE;
}

static BOOLEAN maSetGraphRingWeights(ring tmpR, const ring theImageRing,
                                     const ring sourcering, map theMap,
                                     ideal id)
{
#ifdef HAVE_PLURAL
  if (rIsPluralRing(theImageRing) || rIsPluralRing(sourcering)) return FALSE;
#endif

  if ((theImageRing->OrdSgn != 1) || (sourcering->OrdSgn != 1)) return FALSE;
  if (!maIdealWeightedHomogeneous(id,theImageRing)) return FALSE;
  if (!maIdealWeightedHomogeneous(theImageRing->qideal,theImageRing)) return FALSE;

  const int imagepvariables = rVar(theImageRing);
  const int N = rVar(tmpR);

  if ((tmpR->order == NULL) || (tmpR->block0 == NULL) ||
      (tmpR->block1 == NULL) || (tmpR->wvhdl == NULL))
    return FALSE;
  if ((tmpR->order[0] != ringorder_aa) || (tmpR->order[1] != ringorder_dp) ||
      (tmpR->block0[0] != 1) || (tmpR->block1[0] != N) ||
      (tmpR->block0[1] != 1) || (tmpR->block1[1] != N))
    return FALSE;

  int *weights = (int*)omAlloc0((N+1)*sizeof(int));
  BOOLEAN weighted = FALSE;

  for (int i=0; i<imagepvariables; i++)
  {
    int w = p_Weight(i+1,theImageRing);
    if (w <= 0)
    {
      omFreeSize((ADDRESS)weights,(N+1)*sizeof(int));
      return FALSE;
    }
    weights[i] = w;
    weighted = weighted || (w != 1);
  }

  for (int i=0; i<sourcering->N; i++)
  {
    long d = 1;
    if ((i < IDELEMS(theMap)) && (theMap->m[i] != NULL))
      d = maHomogeneousWeightedDegree(theMap->m[i],theImageRing);
    if ((d <= 0) || (d > INT_MAX))
    {
      omFreeSize((ADDRESS)weights,(N+1)*sizeof(int));
      return FALSE;
    }
    weights[imagepvariables+i] = (int)d;
    weighted = weighted || (d != 1);
  }

  if (!weighted)
  {
    omFreeSize((ADDRESS)weights,(N+1)*sizeof(int));
    return TRUE;
  }

  if (tmpR->wvhdl[1] != NULL)
  {
    omFreeSize((ADDRESS)weights,(N+1)*sizeof(int));
    return FALSE;
  }

  rUnComplete(tmpR);
  tmpR->order[1] = ringorder_wp;
  tmpR->wvhdl[1] = weights;
  rComplete(tmpR,1);

  return TRUE;
}



/*2
*returns the preimage of id under theMap,
*if id is empty or zero the kernel is computed
* (assumes) that both ring have the same coeff.field
*/
ideal maGetPreimage(ring theImageRing, map theMap, ideal id, const ring dst_r)
{
  ring sourcering = dst_r;

#ifdef HAVE_PLURAL
  if (rIsPluralRing(theImageRing))
  {
    if ((rIsPluralRing(sourcering)) && (ncRingType(sourcering)!=nc_comm))
    {
      WerrorS("Sorry, not yet implemented for noncomm. rings");
      return NULL;
    }
  }
#endif

  int i,j;
  poly p,/*pp,*/q;
  ideal temp1;
  ideal temp2;

  int imagepvariables = rVar(theImageRing);
  int N = rVar(dst_r)+imagepvariables;

  ring tmpR;
  if (rSumInternal(theImageRing,sourcering,tmpR,FALSE,2)!=1)
  {
     WerrorS("error in rSumInternal");
     return NULL;
  }

  if (theImageRing->cf != dst_r->cf)
  {
    /// TODO: there might be extreme cases where this doesn't hold...
    WerrorS("Coefficient fields/rings must be equal");
    return NULL;
  }

  const BOOLEAN homog_graph = maSetGraphRingWeights(tmpR,theImageRing,
                                                    sourcering,theMap,id);

  const ring save_ring = currRing; if (currRing!=tmpR) rChangeCurrRing(tmpR); // due to kStd

  if (id==NULL)
    j = 0;
  else
    j = IDELEMS(id);
  int j0=j;
  if (theImageRing->qideal!=NULL) j+=IDELEMS(theImageRing->qideal);
  temp1 = idInit(sourcering->N+j,1);
  for (i=0;i<sourcering->N;i++)
  {
    q = p_ISet(-1,tmpR);
    p_SetExp(q,i+1+imagepvariables,1,tmpR);
    p_Setm(q,tmpR);
    if ((i<IDELEMS(theMap)) && (theMap->m[i]!=NULL))
    {
      p = p_SortMerge(
                      pChangeSizeOfPoly(theImageRing, theMap->m[i], 1, imagepvariables, tmpR),
                      tmpR);
      p=p_Add_q(p,q,tmpR);
    }
    else
    {
      p = q;
    }
    temp1->m[i] = p;
  }
  id_Test(temp1, tmpR);
  for (i=sourcering->N;i<sourcering->N+j0;i++)
  {
    temp1->m[i] = p_SortMerge(
                              pChangeSizeOfPoly(theImageRing, id->m[i-sourcering->N], 1, imagepvariables, tmpR),
                              tmpR);
  }
  for (i=sourcering->N+j0;i<sourcering->N+j;i++)
  {
    temp1->m[i] = p_SortMerge(
                              pChangeSizeOfPoly(theImageRing, theImageRing->qideal->m[i-sourcering->N-j0], 1, imagepvariables, tmpR),
                              tmpR);
  }
  BITSET save;
  SI_SAVE_OPT2(save);
  temp2 = kStd2(temp1,NULL,homog_graph ? testHomog : isNotHomog,
                NULL,(bigintmat*)NULL);
  SI_RESTORE_OPT2(save);

  id_Delete(&temp1,tmpR);
  for (i=0;i<IDELEMS(temp2);i++)
  {
    if (p_LowVar(temp2->m[i], currRing)<imagepvariables) p_Delete(&(temp2->m[i]),tmpR);
  }

  // let's get back to the original ring
  //rChangeCurrRing(sourcering);
  temp1 = idInit(5,1);
  j = 0;
  for (i=0;i<IDELEMS(temp2);i++)
  {
    p = temp2->m[i];
    if (p!=NULL)
    {
      q = p_SortMerge(
                      pChangeSizeOfPoly(tmpR, p, imagepvariables+1, N, sourcering),
                      sourcering);
      if (j>=IDELEMS(temp1))
      {
        pEnlargeSet(&(temp1->m),IDELEMS(temp1),5);
        IDELEMS(temp1)+=5;
      }
      temp1->m[j] = q;
      j++;
    }
  }
  id_Delete(&temp2, tmpR);
  idSkipZeroes(temp1);

  if (currRing!=save_ring) rChangeCurrRing(save_ring);

  rDelete(tmpR);
  return temp1;
}
