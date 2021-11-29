(* Wolfram Language Package *)

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon HL************************************************************************)
(***************************************************************************************************************************************************)
KGlu1sigXHL::usage = "KGlu1sigXHL"
KGlu2sigXHL::usage = "KGlu2sigXHL"
KappaGluGlu1sigHL::usage = "KappaGluGlu1sigHL"
KGlu1sigWXYZHL::usage = "KGlu1sigWXYZHL"
KappaGluGlu2sigHL::usage = "KappaGluGlu2sigHL"
KGlu2sigWXYZHL::usage = "KGlu2sigWXYZHL"
dataKGlu1sigHL::usage = "dataKGlu1sigHL"
dataKGlu2sigHL::usage = "dataKGlu2sigHL"

KGLUoneHL::usage = "Type ?KGLUoneX for more details."

TableKGLUoneHL::usage = "Type ?TableKGLUoneX for more details."

KGluHL::usage = "Type ?KGluX for more details."

TableKGluHL::usage = "Type ?TableKGluX for more details."

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon HL**************************************************************************)
(***************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGluonHL`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon HL**************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gluon HL

(*kappa gluon to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGlu1sigXHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP1sigHL,kappaGluonINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#4913C8"],Opacity[0.75]}
]

(*kappa gluon to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGlu2sigXHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP2sigHL,kappaGluonINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#4913C8"],Opacity[0.75]}
]

KGLUoneHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:={
KGlu1sigXHL[ghtt,ghbb,x,xmin,xmax,xlabel],
KGlu2sigXHL[ghtt,ghbb,x,xmin,xmax,xlabel]
}

(*EXPORTING TABLES FOR KGLUone*)

TableKGLUoneHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_1sigma_HL.txt"}],Re[datagg1sigXYZHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_2sigma_HL.txt"}],Re[datagg2sigXYZHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*To 1\[Sigma]*)

KappaGluGlu1sigHL[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF1sigHL<=kgluglu[ghtt,ghbb]<=kappaGluonSUP1sigHL},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#4913C8"],Opacity[0.75]}, AspectRatio->1]

KGlu1sigWXYZHL[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu1sigHL[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

KappaGluGlu2sigHL[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF2sigHL<=kgluglu[ghtt,ghbb]<=kappaGluonSUP2sigHL},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#4913C8"],Opacity[0.75]}, AspectRatio->1]

KGlu2sigWXYZHL[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu2sigHL[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGluHL[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGlu1sigWXYZHL[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGlu2sigWXYZHL[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaGluon2sig[
ghtt[c\[Alpha],Ztt,u], ghbb[c\[Alpha],Zbb,u],Ztt,u,0,1,500,2000,Ztt,u,c\[Alpha],Zbb,0.9,1,0.005,0,1,0.2]*)

(*TABLES FOR KGlu*)

dataKGlu1sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF1sigHL<= kgluglu[ghtt, ghbb] <=kappaGluonSUP1sigHL,kgluglu[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGlu2sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF2sigHL<= kgluglu[ghtt, ghbb] <=kappaGluonSUP2sigHL,kgluglu[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR KGlu*)

TableKGluHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_1sigma_HL.txt"}],
Re[
dataKGlu1sigHL[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_2sigma_HL.txt"}],
Re[
dataKGlu2sigHL[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon HL**************************************************************************)
(***************************************************************************************************************************************************)
End[] 