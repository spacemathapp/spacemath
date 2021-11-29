(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KGamma******************************************************************************)
(******************************************************************************************************************************************************)
KGam1sigX::usage = "KGam1sigX"
KGam2sigX::usage = "KGam2sigX"
Kappagaga1sig::usage = "Kappagaga1sig"
KGam1sigWXYZ::usage = "KGam1sigWXYZ"
Kappagaga2sig::usage = "Kappagaga2sig"
KGam2sigWXYZ::usage = "KGam2sigWXYZ"
dataKGam1sigXYZ::usage = "dataKGam1sigXYZ"
dataKGam2sigXYZ::usage = "dataKGam2sigXYZ"
dataKGam1sigXY::usage = "dataKGam1sigXY"
dataKGam2sigXY::usage = "dataKGam2sigXY"

KGAMoneLHC::usage = "Type ?KGAMoneX for more details."

TableKGAMoneLHC::usage = "Type ?TableKGAMoneX for more details."

KGamLHC::usage = "Type ?KGamX for more details."

TableKGamLHC::usage = "Type ?TableKGamX for more details."

(******************************************************************************************************************************************************)
(*********************************************************END OF KGamma************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGammaLHC`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gamma************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gamma

(*kappa \[Gamma] to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGam1sigX[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP1sig,kappaGammaINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#068686"],Opacity[0.75]}
]

(*kappa \[Gamma] to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGam2sigX[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP2sig,kappaGammaINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#068686"],Opacity[0.75]}
]

KGAMoneLHC[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:={KGam1sigX[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel],KGam2sigX[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel]}

(*Kappa gamma in the case in which there is dependence in more than two parameters*)
(*To 1\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga1sig[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF1sig <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP1sig},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)", Larger,Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#068686"],Opacity[0.75]}, AspectRatio -> 1]

KGam1sigWXYZ[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga1sig[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga2sig[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF2sig <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP2sig},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)", Larger,Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#068686"],Opacity[0.75]}, AspectRatio -> 1,PlotPoints->PP]

KGam2sigWXYZ[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga2sig[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGamLHC[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGam1sigWXYZ[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGam2sigWXYZ[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KGam1sigWXYZ[ghtt[-ArcCos[cba]+ArcTan[tb],tb],ghbb[-ArcCos[cba]+ArcTan[tb],tb],ghWW[cba],0,mCH,cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaGaGa1sig[
ghtt[0.99,Ztt,u], ghbb[0.99,0,u],ghWW[0.99],0,mCH,Ztt,u,0,1,500,2000,Subscript[Overscript[Z, ~], tt],
Subscript[Overscript[Z, ~], bb],u,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR RGAMone*)

dataKGam1sigXY[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF1sig<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sig,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]

dataKGam2sigXY[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF2sig<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sig,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]


(*TABLES FOR RGAM*)

dataKGam1sigXYZ[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF1sig<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sig,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGam2sigXYZ[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF2sig<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sig,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RGAMone*)

TableKGAMoneLHC[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_1sigma_LHC.txt"}],
Re[
dataKGam1sigXY[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_2sigma_LHC.txt"}],
Re[
dataKGam2sigXY[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
}


(*EXPORTING TABLES FOR RGAM*)

TableKGamLHC[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_1sigma_LHC.txt"}],
Re[
dataKGam1sigXYZ[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_2sigma_LHC.txt"}],
Re[
dataKGam2sigXYZ[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gamma**************************************************************************)
(***************************************************************************************************************************************************)


End[] 

