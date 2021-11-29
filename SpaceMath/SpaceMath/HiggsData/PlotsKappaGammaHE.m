(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KGamma******************************************************************************)
(******************************************************************************************************************************************************)
KGam1sigXHE::usage = "KGam1sigXHE"
KGam2sigXHE::usage = "KGam2sigXHE"
Kappagaga1sigHE::usage = "Kappagaga1sigHE"
KGam1sigWXYZHE::usage = "KGam1sigWXYZHE"
Kappagaga2sigHE::usage = "Kappagaga2sigHE"
KGam2sigWXYZHE::usage = "KGam2sigWXYZHE"
dataKGam1sigXYZHE::usage = "dataKGam1sigXYZHE"
dataKGam2sigXYZHE::usage = "dataKGam2sigXYZHE"

KGAMoneHE::usage = "Type ?KGAMoneX for more details."

TableKGAMoneHE::usage = "Type ?TableKGAMoneX for more details."

KGamHE::usage = "Type ?KGamX for more details."

TableKGamHE::usage = "Type ?TableKGamX for more details."

(******************************************************************************************************************************************************)
(*********************************************************END OF KGamma************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGammaHE`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gamma************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gamma

(*kappa \[Gamma] to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGam1sigXHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP1sigHE,kappaGammaINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#6A6F6A"],Opacity[0.75]}
]

(*kappa \[Gamma] to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGam2sigXHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP2sigHE,kappaGammaINF2sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#6A6F6A"],Opacity[0.75]}
]

KGAMoneHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:={KGam1sigXHE[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel],KGam2sigXHE[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel]}

(*Kappa gamma in the case in which there is dependence in more than two parameters*)
(*To 1\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga1sigHE[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF1sigHE <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP1sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]},PlotStyle -> {RGBColor["#6A6F6A"],Opacity[0.75]}, AspectRatio -> 1]

KGam1sigWXYZHE[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga1sigHE[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga2sigHE[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF2sigHE <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP2sigHE},
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
   Directive[Black,Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#6A6F6A"],Opacity[0.75]}, AspectRatio -> 1,PlotPoints->PP]

KGam2sigWXYZHE[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga2sigHE[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGamHE[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGam1sigWXYZHE[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGam2sigWXYZHE[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KGam1sigWXYZ[ghtt[-ArcCos[cba]+ArcTan[tb],tb],ghbb[-ArcCos[cba]+ArcTan[tb],tb],ghWW[cba],0,mCH,cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaGaGa1sig[
ghtt[0.99,Ztt,u], ghbb[0.99,0,u],ghWW[0.99],0,mCH,Ztt,u,0,1,500,2000,Subscript[Overscript[Z, ~], tt],
Subscript[Overscript[Z, ~], bb],u,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR RGAMone*)

dataKGam1sigXYHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF1sigHE<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sigHE,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]

dataKGam2sigXYHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF2sigHE<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sigHE,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]


(*TABLES FOR RGAM*)

dataKGam1sigXYZHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF1sigHE<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sigHE,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGam2sigXYZHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF2sigHE<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sigHE,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RGAMone*)

TableKGAMoneHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_1sigma_HE.txt"}],
Re[
dataKGam1sigXYHE[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_2sigma_HE.txt"}],
Re[
dataKGam2sigXYHE[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
}


(*EXPORTING TABLES FOR RGAM*)

TableKGamHE[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_1sigma_HE.txt"}],
Re[
dataKGam1sigXYZHE[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_2sigma_HE.txt"}],
Re[
dataKGam2sigXYZHE
	[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gamma**************************************************************************)
(***************************************************************************************************************************************************)


End[] 

