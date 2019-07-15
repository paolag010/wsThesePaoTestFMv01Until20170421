st3_ : st3+ :: _st3 ;

st3 : SA_st3
	| SB_st3 ;

SA_st3 : R1_SA_st3
	| BaseA_st3 ;

R1_SA_st3 : AembB_st3
	| R1_SA_refs_st3 ;

R1_SA_refs_st3 : ArefB :: _R1_SA_refs_st3 ;

ArefB : BaseB_st3-1
	| R1_SB_st3-1 ;

R1_SB_st3-1 : BembA_st3-1 :: _R1_SB_st3-1 ;

SB_st3 : BaseB_st3
	| R1_SB_st3 ;

R1_SB_st3 : BembA_st3
	| R1_SB_refs_st3 ;

R1_SB_refs_st3 : BrefA :: _R1_SB_refs_st3 ;

BrefA : BaseA_st3-1
	| R1_SA_st3-1 ;

R1_SA_st3-1 : AembB_st3-1 :: _R1_SA_st3-1 ;

%%

ArefB implies not  SB_st3 ;
BrefA implies not  SA_st3 ;
AembB_st3 implies not  R1_SB_refs_st3 ;
BembA_st3 implies not  R1_SA_refs_st3 ;

