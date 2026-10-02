#include "Singular/libsingular.h"
#include "libpolys/polys/prCopy.h"
#include "kernel/polys.h"
#include <cstdio>
#include <vector>
#include <chrono>
static FILE* fp=NULL;
static ideal gates=NULL;
static int atoms=0, events=0;
static bool got_unit=false, trace_mode=true;
static void terms(FILE* f,poly p,ring r) {
  fprintf(f,"["); bool first=true;
  for(poly q=p;q;q=pNext(q)){
    if(!first)fprintf(f,",");first=false;
    fprintf(f,"[%ld,[",p_GetComp(q,r));
    for(int i=1;i<=r->N;i++)fprintf(f,"%s%ld",i==1?"":",",p_GetExp(q,i,r));
    StringSetS("");n_Write(p_GetCoeff(q,r),r->cf); char* s=StringEndS();
    fprintf(f,"],\"%s\"]",s);omFree(s);
  }fprintf(f,"]");
}
static poly scalar_part(poly full,ring r){
 poly a=NULL;
 for(poly p=full;p;p=pNext(p)) if(p_GetComp(p,r)<=1){poly t=p_Head(p,r);p_SetComp(t,0,r);p_Setm(t,r);a=p_Add_q(a,t,r);}
 return a;
}
static BOOLEAN step(kStrategy strat){
 ring cr=currRing;
 poly full=strat->P.t_p?prCopyR(strat->P.t_p,strat->tailRing,cr):p_Copy(strat->P.p,cr);
 if(!full)return FALSE;
 if(trace_mode&&p_GetComp(full,cr)>1){p_Delete(&full,cr);return FALSE;}
 poly q=trace_mode?scalar_part(full,cr):p_Copy(full,cr);
 if(!q){p_Delete(&full,cr);return FALSE;}
 std::vector<int> powers(IDELEMS(gates),0);bool changed=false;
 for(int i=0;i<IDELEMS(gates);i++){
  if(!gates->m[i])continue;
  while(q && !p_IsConstant(q,cr)){
   poly rest=NULL;
   poly div=p_DivRem(p_Copy(q,cr),p_Copy(gates->m[i],cr),rest,cr);
   poly chk=div?p_Sub(p_Mult_q(p_Copy(div,cr),p_Copy(gates->m[i],cr),cr),p_Copy(q,cr),cr):p_Copy(q,cr);
   if(chk==NULL && div!=NULL){p_Delete(&rest,cr);p_Delete(&q,cr);q=div;powers[i]++;changed=true;}
   else{p_Delete(&chk,cr);p_Delete(&rest,cr);p_Delete(&div,cr);break;}
  }
 }
 bool constant=q&&pNext(q)==NULL;
 if(constant)for(int i=1;i<=cr->N;i++)if(p_GetExp(q,i,cr))constant=false;
 if(changed || constant){
  int id=atoms++;
  fprintf(fp,"{\"kind\":\"derive\",\"id\":%d,\"powers\":[",id);
  for(int i=0;i<(int)powers.size();i++)fprintf(fp,"%s%d",i?",":"",powers[i]);
  fprintf(fp,"],\"full\":");terms(fp,full,cr);fprintf(fp,",\"poly\":");terms(fp,q,cr);fprintf(fp,"}\n");fflush(fp);
  Print("SAT_EVENT %d atom %d terms %d unit %d\n",++events,id,pLength(q),constant);
  // The old vector has already been entered into S/T. Do not free or change it.
  if(trace_mode){p_SetCompP(q,1,cr);poly tag=p_One(cr);p_SetComp(tag,id+2,cr);p_Setm(tag,cr);q=p_Add_q(q,tag,cr);}
  strat->P.Init(strat->tailRing);strat->P.p=q;
  if(constant){got_unit=true;while(strat->Ll>=0)deleteInL(strat->L,&strat->Ll,strat->Ll,strat);}
  p_Delete(&full,cr);return TRUE;
 }
 p_Delete(&q,cr);p_Delete(&full,cr);return FALSE;
}
static BOOLEAN satproof(leftv res,leftv args){
 if(!args||args->Typ()!=IDEAL_CMD||!args->next||args->next->Typ()!=IDEAL_CMD||!args->next->next||args->next->next->Typ()!=STRING_CMD){WerrorS("satproof(I,gates,filename[,trace=1])");return TRUE;}
 ideal orig=(ideal)args->Data(), gg=(ideal)args->next->Data();
 const char* filename=(char*)args->next->next->Data();
 trace_mode=true;if(args->next->next->next)trace_mode=(long)args->next->next->next->Data()!=0;
 ring oring=currRing,sring=trace_mode?rAssure_SyzOrder(oring,TRUE):oring;
 if(trace_mode)rSetSyzComp(1,sring);rChangeCurrRing(sring);
 ideal input=idrCopyR_NoSort(orig,oring,sring);gates=idrCopyR_NoSort(gg,oring,sring);
 fp=fopen(filename,"w");if(!fp){WerrorS("cannot write proof");return TRUE;}
 fprintf(fp,"{\"kind\":\"header\",\"characteristic\":%d,\"trace\":%d,\"variables\":[",n_GetChar(sring->cf),trace_mode);
 for(int i=0;i<sring->N;i++)fprintf(fp,"%s\"%s\"",i?",":"",sring->names[i]);fprintf(fp,"]}\n");
 for(int i=0;i<IDELEMS(gates);i++){fprintf(fp,"{\"kind\":\"gate\",\"id\":%d,\"poly\":",i);terms(fp,gates->m[i],sring);fprintf(fp,"}\n");}
 atoms=IDELEMS(input);events=0;got_unit=false;
 for(int i=0;i<IDELEMS(input);i++){
  fprintf(fp,"{\"kind\":\"input\",\"id\":%d,\"poly\":",i);terms(fp,input->m[i],sring);fprintf(fp,"}\n");
  if(trace_mode){p_SetCompP(input->m[i],1,sring);poly t=p_One(sring);p_SetComp(t,i+2,sring);p_Setm(t,sring);input->m[i]=p_Add_q(input->m[i],t,sring);}
 }fflush(fp);
 if(trace_mode)input->rank=atoms+1;
 BITSET so1,so2;SI_SAVE_OPT(so1,so2);
 if(trace_mode){si_opt_2|=Sy_bit(V_IDLIFT);si_opt_2|=Sy_bit(V_PURE_GB);}
 ideal result=kStd2(input,sring->qideal,isNotHomog,NULL,(bigintmat*)NULL,trace_mode?1:0,0,NULL,step);
 fprintf(fp,"{\"kind\":\"finish\",\"unit\":%d,\"atoms\":%d,\"events\":%d}\n",got_unit,atoms,events);fclose(fp);fp=NULL;
 ideal output=idInit(IDELEMS(result),0);
 for(int i=0;i<IDELEMS(result);i++){poly p=trace_mode?scalar_part(result->m[i],sring):p_Copy(result->m[i],sring);output->m[i]=prCopyR(p,sring,oring);p_Delete(&p,sring);}
 id_Delete(&result,sring);id_Delete(&input,sring);id_Delete(&gates,sring);rChangeCurrRing(oring);
 if(sring!=oring)rDelete(sring);SI_RESTORE_OPT(so1,so2);idSkipZeroes(output);
 res->rtyp=IDEAL_CMD;res->data=(char*)output;return FALSE;
}
extern "C" int mod_init(SModulFunctions* p){p->iiAddCproc("satproof.lib","satproof",FALSE,satproof);return MAX_TOK;}
