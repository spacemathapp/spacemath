(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KGamma******************************************************************************)
(******************************************************************************************************************************************************)
KGam1sigXHL::usage = "KGam1sigXHL"
KGam2sigXHL::usage = "KGam2sigXHL"
Kappagaga1sigHL::usage = "Kappagaga1sigHL"
KGam1sigWXYZHL::usage = "KGam1sigWXYZHL"
Kappagaga2sigHL::usage = "Kappagaga2sigHL"
KGam2sigWXYZHL::usage = "KGam2sigWXYZHL"
dataKGam1sigXYZHL::usage = "dataKGam1sigXYZHL"
dataKGam2sigXYZHL::usage = "dataKGam2sigXYZHL"

KGAMoneHL::usage = "Type ?KGAMoneX for more details."

TableKGAMoneHL::usage= "Type ?TableKGAMoneX for more details."

KGamHL::usage = "Type ?KGamX for more details."

TableKGamHL::usage = "Type ?TableKGamX for more details."

(******************************************************************************************************************************************************)
(*********************************************************END OF KGamma************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGammaHL`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gamma************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gamma

(*kappa \[Gamma] to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGam1sigXHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP1sigHL,kappaGammaINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#FA8072"],Opacity[0.75]}
]

(*kappa \[Gamma] to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGam2sigXHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgaga[ghtt, ghbb, ghWW, gCH, mCH],kappaGammaSUP2sigHL,kappaGammaINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Gamma]\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#FA8072"],Opacity[0.75]}
]

KGAMoneHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:={KGam1sigXHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel],KGam2sigXHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel]}

(*Kappa gamma in the case in which there is dependence in more than two parameters*)
(*To 1\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga1sigHL[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF1sigHL <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP1sigHL},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]},PlotStyle -> {RGBColor["#FA8072"],Opacity[0.75]}, AspectRatio -> 1]

KGam1sigWXYZHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga1sigHL[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

(*kappa \[Gamma]*)
Kappagaga2sigHL[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{  kappaGammaINF2sigHL <= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <= kappaGammaSUP2sigHL},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#FA8072"],Opacity[0.75]}, AspectRatio -> 1,PlotPoints->PP]

KGam2sigWXYZHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kappagaga2sigHL[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGamHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGam1sigWXYZHL[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGam2sigWXYZHL[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KGam1sigWXYZ[ghtt[-ArcCos[cba]+ArcTan[tb],tb],ghbb[-ArcCos[cba]+ArcTan[tb],tb],ghWW[cba],0,mCH,cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaGaGa1sig[
ghtt[0.99,Ztt,u], ghbb[0.99,0,u],ghWW[0.99],0,mCH,Ztt,u,0,1,500,2000,Subscript[Overscript[Z, ~], tt],
Subscript[Overscript[Z, ~], bb],u,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR RGAMone*)

dataKGam1sigXYHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF1sigHL<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sigHL,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]

dataKGam2sigXYHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=
Table[
{x,If[
    kappaGammaINF2sigHL<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sigHL,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}]


(*TABLES FOR RGAM*)

dataKGam1sigXYZHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF1sigHL<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP1sigHL,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGam2sigXYZHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGammaINF2sigHL<= kgaga[ghtt, ghbb, ghWW, gCH, mCH] <=kappaGammaSUP2sigHL,kgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RGAMone*)

TableKGAMoneHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_1sigma_HL.txt"}],
Re[
dataKGam1sigXYHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGAMone_2sigma_HL.txt"}],
Re[
dataKGam2sigXYHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]
]/. {{_,0} -> Sequence[]},"Table"
]
}


(*EXPORTING TABLES FOR RGAM*)

TableKGamHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_1sigma_HL.txt"}],
Re[
dataKGam1sigXYZHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGam_2sigma_HL.txt"}],
Re[
dataKGam2sigXYZHL
	[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gamma**************************************************************************)
(***************************************************************************************************************************************************)


End[] 

