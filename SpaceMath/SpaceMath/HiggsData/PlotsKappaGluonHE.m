(* Wolfram Language Package *)

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon HE************************************************************************)
(***************************************************************************************************************************************************)
KGlu1sigXHE::usage = "KGlu1sigXHE"
KGlu2sigXHE::usage = "KGlu2sigXHE"
KappaGluGlu1sigHE::usage = "KappaGluGlu1sigHE"
KGlu1sigWXYZHE::usage = "KGlu1sigWXYZHE"
KappaGluGlu2sigHE::usage = "KappaGluGlu2sigHE"
KGlu2sigWXYZHE::usage = "KGlu2sigWXYZHE"
dataKGlu1sigHE::usage = "dataKGlu1sigHE"
dataKGlu2sigHE::usage = "dataKGlu2sigHE"

KGLUoneHE::usage = "Type ?KGLUoneX for more details."

TableKGLUoneHE::usage = "Type ?TableKGLUoneX for more details."

KGluHE::usage = "Type ?KGluX for more details."

TableKGluHE::usage = "Type ?TableKGluX for more details."

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon HE**************************************************************************)
(***************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGluonHE`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon HE**************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gluon HE

(*kappa gluon to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGlu1sigXHE[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP1sigHE,kappaGluonINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#E916D6"],Opacity[0.75]}
]

(*kappa gluon to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGlu2sigXHE[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP2sigHE,kappaGluonINF2sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#E916D6"],Opacity[0.75]}
]

KGLUoneHE[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:={
KGlu1sigXHE[ghtt,ghbb,x,xmin,xmax,xlabel],
KGlu2sigXHE[ghtt,ghbb,x,xmin,xmax,xlabel]
}

(*EXPORTING TABLES FOR KGLUone*)

TableKGLUoneHE[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_1sigma_HE.txt"}],Re[datagg1sigXYZHE[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_2sigma_HE.txt"}],Re[datagg2sigXYZHE[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*To 1\[Sigma]*)

KappaGluGlu1sigHE[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF1sigHE<=kgluglu[ghtt,ghbb]<=kappaGluonSUP1sigHE},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#E916D6"],Opacity[0.75]}, AspectRatio->1]

KGlu1sigWXYZHE[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu1sigHE[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

KappaGluGlu2sigHE[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF2sigHE<=kgluglu[ghtt,ghbb]<=kappaGluonSUP2sigHE},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#E916D6"],Opacity[0.75]}, AspectRatio->1]

KGlu2sigWXYZHE[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu2sigHE[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGluHE[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGlu1sigWXYZHE[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGlu2sigWXYZHE[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaGluon2sig[
ghtt[c\[Alpha],Ztt,u], ghbb[c\[Alpha],Zbb,u],Ztt,u,0,1,500,2000,Ztt,u,c\[Alpha],Zbb,0.9,1,0.005,0,1,0.2]*)

(*TABLES FOR KGlu*)

dataKGlu1sigHE[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF1sigHE<= kgluglu[ghtt, ghbb] <=kappaGluonSUP1sigHE,kgluglu[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGlu2sigHE[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF2sigHE<= kgluglu[ghtt, ghbb] <=kappaGluonSUP2sigHE,kgluglu[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR KGlu*)

TableKGluHE[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_1sigma_HE.txt"}],
Re[
dataKGlu1sigHE[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_2sigma_HE.txt"}],
Re[
dataKGlu2sigHE[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon HE**************************************************************************)
(***************************************************************************************************************************************************)
End[] 