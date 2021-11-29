(* Wolfram Language Package *)

(*
THIS PROGRAM EVALUATE PROCESSES IN ORDER TO FIND PARAMETER SPACES FROM EXTENDED SCALAR SECTOR MODELS CONSISTENT WITH EXPERIMENTAL MEASUREMENTS
*)

(* Definitions *)

amu::usage="amu"
\[Tau]fi::usage="\[Tau]fi"
\[Tau]fj::usage="\[Tau]fj"

Widthhff::usage="Widthhff"
BRhfifj::usage="BRhfifj"

BRhtaumu::usage="BRhtaumu"
BRhetau::usage="BRhetau"

\[Lambda]h::usage="\[Lambda]h"
\[Lambda]A::usage="\[Lambda]A"
\[Lambda]H::usage="\[Lambda]H"

CLh::usage="CLh"
CLA::usage="CLA"
CLH::usage="CLH"
CLOneLOOP::usage="CLOneLOOP"
 
CLTwoLpsh::usage="CLTwoLpsh"
CLTwoLpsH::usage="CLTwoLpsH"
CLTwoLpsA::usage="CLTwoLpsA"

CL::usage="CL"
CLTwoLOOPS::usage="CLTwoLOOPS"

BRtautomugamma::usage="BRtautomugamma"

Sh::usage="Sh"
SH::usage="SH"
SA::usage="SA"

Sh1::usage="Sh1"
SH1::usage="SH1"
SA1::usage="SA1"

BRtauto3muons::usage="BRtauto3muons"

BRmuto3electrons::usage="BRmuto3electrons"

dmuh::usage="dmuh"
dmuH::usage="dmuH"
dmuA::usage="dmuA"
dmu::usage="dmu"

Begin["`Package`"]
End[]

Begin["`LFV`Private`"]

(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*Muon anomalous magnetic dipole moment;*)
(*Reported expression for \[CapitalDelta]a\[Mu] (Reference arXiv:1209.1397v3, Flavor Violating Higgs Decays):*)
amu[ghmumu_,ghtaumu_,gHmumu_,gHtaumu_,gAmumu_,gAtaumu_,mh_,mH_,mA_]:=(mmu/(16(\[Pi]^2)))*
((mmu/mh^2*(ghmumu^2)*(2Log[mh^2/mmu^2]-3))+(mtau/mh^2*(ghtaumu^2)*(2Log[mh^2/mtau^2]-3))+
(mmu/mH^2*(gHmumu^2)*(2Log[mH^2/mmu^2]-3))+(mtau/mH^2*(gHtaumu^2)*(2Log[mH^2/mtau^2]-3))+
(mmu/mA^2*(gAmumu^2)*(2Log[mA^2/mmu^2]-3))+(mtau/mA^2*(gAtaumu^2)*(2Log[mA^2/mtau^2]-3)))

(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*Higgs boson decays into fermion pair, 
Definitions*)
\[Tau]fi[mi_]:=(2mi/mh)^2
\[Tau]fj[mj_]:=(2mj/mh)^2
(*Decay width of the Higgs boson into fermion pair;*)
Widthhff[ghfifj_,Nc_,mi_,mj_]:=(((ghfifj^2) Nc mh)/(128 \[Pi])) *
((4-(Sqrt[\[Tau]fi[mi]]+Sqrt[\[Tau]fj[mj]])^2)^(3/2))(Sqrt[(4-(Sqrt[\[Tau]fi[mi]]-Sqrt[\[Tau]fj[mj]])^2)])

(*Branching ratio of the Higgs boson into fermion pair*)
BRhfifj[ghfifj_,Nc_,mi_,mj_]:=Widthhff[ghfifj,Nc,mi,mj]/TotWidh
(*Branching ratio of the Higgs boson into \[Tau]\[Mu] pair*)
BRhtaumu[ghtaumu_]:=BRhfifj[ghtaumu,1,mtau,mmu]
BRhetau[ghetau_]:=BRhfifj[ghetau,1,me,mtau]
(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*Radiative process tau into mu gamma;
The analytical expression can be consulted in: arXiv:1801.00839v3 eq. A2 (appendix A);
Definitions;*)
\[Lambda]h[mh_]:=Log[mh^2/mtau^2]-4/3;
\[Lambda]A[mA_]:=Log[mA^2/mtau^2]-4/3
\[Lambda]H[mH_]:=Log[mH^2/mtau^2]-4/3
(**************************************************)
(**************************************************)
WILSON COEFFICIENTS at ONE-LOOP;
CLh[ghtaumu_,ghtautau_,mh_]:=(ghtaumu*ghtautau)*\[Lambda]h[mh]/((2) (mh^2))
CLA[gAtaumu_,gAtautau_,mA_]:=(gAtaumu*gAtautau)*\[Lambda]A[mA]/((2) (mA^2))
CLH[gHtaumu_,gHtautau_,mH_]:=(gHtaumu*gHtautau)*\[Lambda]H[mH]/((2) (mH^2))
CLOneLOOP[ghtaumu_,ghtautau_,gAtaumu_,gAtautau_,gHtaumu_,gHtautau_,mh_,mH_,mA_]:=
CLh[ghtaumu,ghtautau,mh]+CLA[gAtaumu,gAtautau,mA]+CLH[gHtaumu,gHtautau,mH]
(**************************************************)
(**************************************************)
WILSON COEFFICIENTS at TWO-LOOPS; 
CLTwoLpsh[ghtt_,ghtaumu_,mh_] := (Conjugate[ghtaumu] (-0.082*ghtt + 0.11))/mh^2;
CLTwoLpsH[gHtt_,gHtaumu_,mH_] := (Conjugate[gHtaumu] (-0.082*gHtt + 0.11))/mH^2;
CLTwoLpsA[gAtt_,gAtaumu_,mA_] := (Conjugate[gAtaumu] (-0.082*gAtt + 0.11))/mA^2;
CLTwoLOOPS[gHtt_,gHtaumu_,mH_,gAtt_,gAtaumu_,mA_,ghtt_,ghtaumu_,mh_] := CLTwoLpsA[gAtt,gAtaumu,mA] + CLTwoLpsH[gHtt,gHtaumu,mH] + CLTwoLpsh[ghtt,ghtaumu,mh]
(**************************************************)
(**************************************************)
CL[gHtt_,gHtaumu_,mH_,gAtt_,gAtaumu_,mA_,ghtt_,ghtaumu_,ghtautau_,mh_,gAtautau_,gHtautau_]:=CLOneLOOP[ghtaumu,ghtautau,gAtaumu,gAtautau,gHtaumu,gHtautau,mh,mH,mA]+
CLTwoLOOPS[gHtt,gHtaumu,mH,gAtt,gAtaumu,mA,ghtt,ghtaumu,mh]
(**************************************************)
(**************************************************)
Branching ratio of tau into mu gamma;
BRtautomugamma[ghtaumu_,ghtautau_,gAtaumu_,gAtautau_,gHtaumu_,gHtautau_,ghtt_,gHtt_,gAtt_,mh_,mH_,mA_]:=(3 \[Alpha]em)*
BRTAUtolnunu (2*Abs[CL[gHtt,gHtaumu,mH,gAtt,gAtaumu,mA,ghtt,ghtaumu,ghtautau,mh,gAtautau,gHtautau]]^2)/(4 \[Pi] (GF^2)) 
(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*Decay tau to 3 muons;
Branching ratio of the decay tau to 3 muons;
Definitios;*)

Sh[ghmumu_,ghtaumu_]:=ghmumu*ghtaumu
SH[gHmumu_,gHtaumu_]:=gHmumu*gHtaumu
SA[gAmumu_,gAtaumu_]:=gAmumu*gAtaumu


BRtauto3muons[ghmumu_,ghtaumu_,gHmumu_,gHtaumu_,gAmumu_,gAtaumu_,mH_,mA_]:=
(Ttau*mtau^5)/(256Pi^3) (Sh[ghmumu,ghtaumu]^2/mh^4+SH[gHmumu,gHtaumu]^2/mH^4+SA[gAmumu,gAtaumu]^2/mA^4 (Sh[ghmumu,ghtaumu]*SH[gHmumu,gHtaumu])/((mh^2)( mH^2))+2 SA[gAmumu,gAtaumu]/(3mA^2) (Sh[ghmumu,ghtaumu]/mh^2*SH[gHmumu,gHtaumu]/mH^2))
(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*Decay mu to 3 electrons;
Branching ratio of the decay mu to 3 electrons;
Definitios;*)
Sh1[ghee_,ghmue_]:=ghee*ghmue
SH1[gHee_,gHmue_]:=gHee*gHmue
SA1[gAee_,gAmue_]:=gAee*gAmue

BRmuto3electrons[ghee_,ghmue_,gHee_,gHmue_,gAee_,gAmue_,mH_,mA_]:=
(Tmuon*mmu^5)/(256Pi^3) (Sh1[ghee,ghmue]^2/mh^4+SH1[gHee,gHmue]^2/mH^4+SA1[gAee,gAmue]^2/mA^4 (Sh1[ghee,ghmue]*SH1[gHee,gHmue])/((mh^2)( mH^2))+2 SA1[gAee,gAmue]/(3mA^2) (Sh1[ghee,ghmue]/mh^2*SH1[gHee,gHmue]/mH^2))
(************************************************************************************************************************************************************************************************************************************************************************************************************************)
(*muon Electric dipole moment*)
dmuh[ghtaumu_,mh_] := -ee Im[ghtaumu^2]/(16 (\[Pi]^2))*mtau/(2 (mh^2)) (2 Log[mh^2/mtau^2] - 3);

dmuH[gHtaumu_,mH_]:=-ee Im[gHtaumu^2]/(16 (\[Pi]^2))*mtau/(2 (mH^2)) (2 Log[mH^2/mtau^2] - 3);

dmuA[gAtaumu_,mA_]:= -ee Im[gAtaumu^2]/(16 (\[Pi]^2))*mtau/(2 (mA^2)) (2 Log[mA^2/mtau^2] - 3);

dmu[ghtaumu_,gHtaumu_,gAtaumu_,mh_,mH_,mA_]:= dmuh[ghtaumu,mh] + dmuH[gHtaumu,mH] + dmuA [gAtaumu,mA]

End[]

