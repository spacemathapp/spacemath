(*THIS PROGRAM EVALUATE THE \[Kappa]-FACTOR,from \
https://arxiv.org/abs/1809.10733*)


(* Scalar boson decays into fermion pair; *)

(* Definitions *)
\[Tau]fi::usage ="Scalar boson decays into fermion pair: \[Tau]fi"
\[Tau]fj::usage ="Scalar boson decays into fermion pair: \[Tau]fj"
(*Decay width of the Scalar boson into fermion pair*)
WidthHff::usage ="Decay width of the Scalar boson into fermion pair: WidthHff"

(*Scalar boson decay into gluon pair at one-loop level*)
(*Definitions*)
ft::usage ="Scalar boson decay into gluon pair at one-loop level: ft"
fb::usage ="Scalar boson decay into gluon pair at one-loop level: fb"
gt::usage ="Scalar boson decay into gluon pair at one-loop level: gt"
gb::usage ="Scalar boson decay into gluon pair at one-loop level: gb"

At::usage ="Scalar boson decay into gluon pair at one-loop level: At"
Ab::usage ="Scalar boson decay into gluon pair at one-loop level: Ab"

Ft::usage ="Scalar boson decay into gluon pair at one-loop level: Ft"
Fb::usage ="Scalar boson decay into gluon pair at one-loop level: Fb"
AHgg::usage ="We consider the contribution of bottom and top quarks inside the loop"

(*Decay width of the Scalar boson into gluon pair*)
WidthHgg::usage ="Decay width of the Scalar boson into gluon pair: WidthHgg"

(*Main fermion contribution come from top and bottom quark*)
Aht::usage ="Main fermion contribution come from top and bottom quark: Aht"
Ahb::usage ="Main fermion contribution come from top and bottom quark: Ahb"
Af::usage ="Main fermion contribution come from top and bottom quark: Af"

(*W contribution*)
fW::usage ="W contribution: fW"
gW::usage ="W contribution: gW"
AW::usage ="W contribution: AW"
FW::usage ="W contribution: FW"
AhW::usage ="W contribution: AhW"

(*Charged scalar contribution*)
fH::usage ="Charged scalar contribution: fH"
gH::usage ="Charged scalar contribution: gH"
AH::usage ="Charged scalar contribution: AH"
FH::usage ="Charged scalar contribution: FH"
AHc::usage ="Charged scalar contribution: AHc"
Ahgaga::usage ="Charged scalar contribution: Ahgaga"

(*Decay width of Scalar boson into photon-photon*)
WidthHgaga::usage ="Decay width of Scalar boson into photon-photon: WidthHgaga"

(*Scalar boson decay into vector pair*)
(*Definitions*)
RTW::usage ="Scalar boson decay into vector pair: RTW"
RTZ::usage ="Scalar boson decay into vector pair: RTZ"
\[Delta]Z::usage ="Scalar boson decay into vector pair: \[Delta]Z"

(*Decay width of Higgs boson into WW pair*)
WidthHWW::usage ="Decay width of Higgs boson into WW pair: WidthHWW"

(* Decay width of Scalar boson into ZZ pair *)
WidthHZZ::usage ="Decay width of Scalar boson into ZZ pair: WidthHZZ"

ktau::usage ="ktau"
ktop::usage ="ktop"
kW::usage ="kW"
kZ::usage ="kZ"
kgaga::usage ="kgaga"
kgluglu::usage ="kgluglu"
kb::usage="kb"
kmu::usage="kmu"

(************************************************************************************************************************************************************************************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`KappaXX`Private`"]

(*Scalar boson decays into fermion pair;*)

(*Definitions;*)

\[Tau]fi[mi_,mS_] := (2 mi/mS)^2
\[Tau]fj[mj_,mS_] := (2 mj/mS)^2

(*Decay width of the Scalar boson into fermion pair*)

WidthHff[ghfifj_, Nc_, mi_, mj_,mS_] := (((ghfifj^2) Nc mS)/(128 \[Pi]))*
((4-(Sqrt[\[Tau]fi[mi,mS]]+Sqrt[\[Tau]fj[mj,mS]])^2)^(3/2))*(Sqrt[(4-(Sqrt[\[Tau]fi[mi,mS]]-Sqrt[\[Tau]fj[mj,mS]])^2)])

(************************************************************************************************************************************************************************************************************************************************************************************************************************)

(*Scalar boson decay into gluon pair at one-loop level*)

(*Definitions*)

ft[mS_]:=-(1/4) (Log[(1+Sqrt[1-((4*mt^2)/(mS^2))])/(1-Sqrt[1-((4*mt^2)/(mS^2))])]-I \[Pi])^2;
fb[mS_]:=-(1/4) (Log[(1+Sqrt[1-((4*mb^2)/(mS^2))])/(1-Sqrt[1-((4*mb^2)/(mS^2))])]-I \[Pi])^2;
gt[mS_]:=(ArcSin[1/Sqrt[(4*mt^2)/(mS^2)]])^2
gb[mS_]:=(ArcSin[1/Sqrt[(4*mb^2)/(mS^2)]])^2

At[mS_]:=If[((4*mt^2)/mS^2)>=1,gt[mS],ft[mS]]
Ab[mS_]:=If[((4*mb^2)/mS^2)>=1,gb[mS],fb[mS]]

Ft[mS_]:=-2*(4*mt^2/(mS^2))*(1+(1-(4*mt^2/(mS^2)))*At[mS]); 
Fb[mS_]:=-2*(4*mb^2/(mS^2))*(1+(1-(4*mb^2/(mS^2)))*Ab[mS]);

(*We consider the contribution of bottom and top quarks inside the loop*)
AHgg[ghtt_,ghbb_,mS_]:=(2*mW)*((ghtt/mt)*Ft[mS])+((ghbb/mb)*Fb[mS])

(*Decay width of the Scalar boson into gluon pair*)

WidthHgg[ghtt_,ghbb_,mS_]:=((\[Alpha]s^2*mS^3)/(512 mW^2 \[Pi]^3 ))*
Abs[AHgg[ghtt,ghbb,mS]]^2

(************************************************************************************************************************************************************************************************************************************************************************************************************************)

(*Higgs boson decay into photon pair*)

{Qt=(2/3),Qb=(-1/3)};

(*Main fermion contribution come from top and bottom quark*)

Aht[ghtt_,mS_]:=6 (mW/mt) ghtt Qt^2 Ft[mS]
Ahb[ghbb_,mS_]:=6 (mW/mb) ghbb Qb^2 Fb[mS]
Af[ghtt_,ghbb_,mS_]:=Aht[ghtt,mS]+Ahb[ghbb,mS]
(**)

(*W contribution*)

fW[mS_]:=-(1/4)*(Log[(1+Sqrt[1-((4*mW^2)/(mS^2))])/(1-Sqrt[1-((4*mW^2)/(mS^2))])]-I \[Pi])^2;
gW[mS_]:=(ArcSin[1/Sqrt[4*mW^2/(mS^2)]])^2; 
AW[mS_]:=If[(4*mW^2/(mS^2))>=1,gW[mS],fW[mS]];
FW[mS_]:=2+(3*(4*mW^2/(mS^2)))+((3*(4*mW^2/(mS^2))*(2-(4*mW^2/(mS^2)))*AW[mS]));
AhW[ghWW_,mS_]:=(ghWW/mW) FW[mS] 

(*Charged scalar contribution*)

fH[mCH_,mS_]:=-(1/4)*(Log[(1+Sqrt[1-((4*mCH^2)/(mS^2))])/(1-Sqrt[1-((4*mCH^2)/(mS^2))])]-I \[Pi])^2; ;
gH[mCH_,mS_]:=(ArcSin[1/Sqrt[4*mCH^2/(mS^2)]])^2; 
AH[mCH_,mS_]:=If[(4*mCH^2/(mS^2))>=1,gH[mCH,mS],fH[mCH,mS]];
FH[mCH_,mS_]:=(4*mCH^2/(mS^2))*(1-((4*mCH^2/(mS^2))*AH[mCH,mS]))
AHc[gCH_,mCH_,mS_]:=((mW*gCH)/(mCH^2)) FH[mCH,mS]



Ahgaga[ghtt_,ghbb_,ghWW_,mS_,gCH_,mCH_]:=Af[ghtt,ghbb,mS]+AhW[ghWW,mS]+AHc[gCH,mCH,mS]

(*Decay width of Scalar boson into photon-photon*)

WidthHgaga[ghtt_,ghbb_,ghWW_,gCH_,mCH_,mS_]:=
((\[Alpha]em^2)*(mS^3))/(1024*(\[Pi]^3)*mW^2)*Abs[Ahgaga[ghtt,ghbb,ghWW,mS,gCH,mCH]]^2





(************************************************************************************************************************************************************************************************************************************************************************************************************************)

(*Scalar boson decay into vector pair*)

(*Definitions*)

RTW[mS_]:=-(((1-(mW^2/mS^2)) (47 (mW^4/mS^4)-(13 mW^2/mS^2)+2))/(2 mW^2/mS^2))-(3/2 (4 (mW^4/mS^4)-6 (mW^2/mS^2)+1)*(Log[mW^2/mS^2]))+
((3 (20 (mW^4/mS^4)- 8 (mW^2/mS^2)+1))/Sqrt[4 (mW^2/mS^2)-1])*ArcCos[(3 (mW^2/mS^2)-1)/(2 (mW^3/mS^3))];



RTZ[mS_]:=RTW[mS]/.mW-> mZ;

\[Delta]Z=7-(40/(3 SW^2))+160/(9 SW^4);

(*Decay width of Higgs boson into WW pair*)

WidthHWW[ghWW_,mS_]:=((ghWW^2) mS)/(512 (\[Pi]^3) (mW^4)) RTW[mS]

(*Decay width of Scalar boson into ZZ pair*)

WidthHZZ[ghZZ_,mS_]:=((ghZZ^2) mS)/(2048 (\[Pi]^3) mZ^4) \[Delta]Z RTZ[mS]


(************************************************************************************************************************************************************************************************************************************************************************************************************************)

(*\[Kappa]-factors*)

(*THDM-I couplings*)
(*ghtt[a_,tb_]:=(g/2) (mt/mW) (Cos[a]/(tb*Cos[ArcTan[tb]]))
ghbb[a_,tb_]:=(g/2) (mb/mW) (Cos[a]/(tb*Cos[ArcTan[tb]]))
ghtautau[a_,tb_]:=(g/2) (mtau/mW) (Cos[a]/(tb*Cos[ArcTan[tb]]))
ghWW[cba_]:=gw*mW*Sqrt[1-cba]
ghZZ[cba_]:=gz*mZ*Sqrt[1-cba]*)

(*Kappab*)

kb[ghbb_]:=Sqrt[WidthHff[ghbb, 3, mb, mb,125]/WidthHff[g mb/(2 mW), 3, mb, mb,125]]

(*RegionPlot[kappaBotINF2sig\[LessEqual] kb[ghbb[-ArcCos[c] + ArcTan[t], t]]\[LessEqual] kappaBotSUP2sig,{c,-1,1},{t,0.01,10},PlotPoints\[Rule]60]*)

(*Kappatau*)

ktau[ghtautau_]:=Sqrt[WidthHff[ghtautau, 1, mtau, mtau,125]/WidthHff[g mtau/(2 mW), 1, mtau, mtau,125]]

(*RegionPlot[kappaTauINF2sig\[LessEqual] ktau[ghtautau[-ArcCos[c] + ArcTan[t], t]]\[LessEqual] kappaTauSUP2sig,{c,-1,1},{t,0.01,10},PlotPoints\[Rule]60]*)

(*Kappatop*)

ktop[ghtt_]:=Sqrt[WidthHff[ghtt, 3, mt, mt,125]/WidthHff[g mt/(2 mW), 3, mt, mt,125]]

(*RegionPlot[kappaTopINF2sig\[LessEqual] ktop[ghtt[-ArcCos[c] + ArcTan[t], t]]\[LessEqual] kappaTopSUP2sig,{c,-1,1},{t,0.01,10},PlotPoints\[Rule]60]*)

(*KappaW*)

kW[ghWW_]:=Sqrt[WidthHWW[ghWW,125]/WidthHWW[gw*mW,125]]

(*Plot[{kappaWINF2sig, kW[ghWW[c]], kappaWSUP2sig},{c,-1,1},PlotPoints\[Rule]60]*)

(*KappaZ*)

kZ[ghZZ_]:=Sqrt[WidthHZZ[ghZZ,125]/WidthHZZ[gz*mZ,125]]

(*Plot[{kappaZINF2sig, kZ[ghZZ[c]], kappaZSUP2sig},{c,-1,1},PlotPoints\[Rule]60]*)

(*Kappa\[Gamma]*)

kgaga[ghtt_,ghbb_,ghWW_,gCH_,mCH_]:=Sqrt[WidthHgaga[ghtt,ghbb,ghWW,gCH,mCH,125]/WidthHgaga[g mt/(2 mW),g mb/(2 mW),gw*mW,0,mCH,125]]

(*RegionPlot[kappaGammaINF2sig\[LessEqual] kgaga[ghtt[-ArcCos[c] + ArcTan[t], t],ghbb[-ArcCos[c] + ArcTan[t], t],ghWW[c],0,mCH]\[LessEqual] kappaGammaSUP2sig,{c,-1,1},{t,0.01,100},PlotPoints\[Rule]60]*)

(*Kappag*)

kgluglu[ghtt_,ghbb_]:=Sqrt[WidthHgg[ghtt,ghbb,125]/WidthHgg[g mt/(2 mW),g mb/(2 mW),125]]

(*RegionPlot[kappaGluonINF2sig\[LessEqual] kgluglu[ghtt[-ArcCos[c] + ArcTan[t], t],ghbb[-ArcCos[c] + ArcTan[t], t]]\[LessEqual] kappaGluonSUP2sig,{c,-1,1},{t,0.01,10},PlotPoints\[Rule]60]*)

kmu[ghmumu_]:=Sqrt[WidthHff[ghmumu, 1, mmu, mmu,125]/WidthHff[g mmu/(2 mW), 1, mmu, mmu,125]]
(************************************************************************************************************************************************************************************************************************************************************************************************************************)
End[]