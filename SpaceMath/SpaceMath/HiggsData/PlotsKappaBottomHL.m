(* Wolfram Language Package *)

(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Bottom************************************************************************)
(******************************************************************************************************************************************************)
Kb1sigXHL::usage = "Kb1sigXHL"
Kb2sigXHL::usage = "Kb2sigXHL"
dataKbOTone1sigHL::usage = "dataKbOTone1sigHL"
dataKbOTone2sigHL::usage = "dataKbOTone2sigHL"
TableKbOToneHL::usage = "TableKbOToneHL"
Kb2sigHL::usage = "Kb2sigHL"
Kb2sigWXYZHL::usage = "Kb2sigWXYZHL"
Kb1sigHL::usage = "Kb1sigHL"
Kb1sigWXYZHL::usage = "Kb1sigWXYZHL"
KbHL::usage = "KbHL"
dataKb1sigHL::usage = "dataKb1sigHL"
dataKb2sigHL::usage = "dataKb2sigHL"

KBOToneHL::usage = "Type ?KBOToneX for more details."

TableKBOToneHL::usage = "Type ?TableKBOToneX for more details."

KbHL::usage = "Type ?KbX for more details."

TableKbHL::usage = "Type ?TableKbX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-Bottom************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaBottom`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kb*************************************************************************************)
(******************************************************************************************************************************************************)

(*************************************************************************************************************************************************************************************)

Individual process;
K botton

(*************************************************************************************************************************************************************************************)

(*K bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)

Kb1sigXHL[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP1sigHL,kappaBotINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#A20C1A"],Opacity[0.75]}
]

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)

Kb2sigXHL[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP2sigHL,kappaBotINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#A20C1A"],Opacity[0.75]}
]


KBOToneHL[ghbb_,x_,xmin_,xmax_,xlabel_]:={
Kb1sigXHL[ghbb,x,xmin,xmax,xlabel],
Kb2sigXHL[ghbb,x,xmin,xmax,xlabel]
}

(*TABLES FOR KbOTone*)

dataKbOTone1sigHL[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sigHL<=kb[ghbb]<=kappaBotSUP1sigHL, kb[ghbb],0]}, {x, xmin,xmax,xstep}]

dataKbOTone2sigHL[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sigHL<=kb[ghbb]<=kappaBotSUP1sigHL, kb[ghbb],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR KbOTone*)

TableKBOToneHL[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_1sigma_HL.txt"}],Re[dataKbOTone1sigHL[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_HL.txt"}],Re[dataKbOTone2sigHL[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*Kb to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]bb*)
Kb2sigHL[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF2sigHL <= kb[ghbb] <= kappaBotSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(K\), \(b\)]\)", Larger, Bold]}, {1, 0.5}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#A20C1A"],Opacity[0.75]}, PlotPoints->PP]

Kb2sigWXYZHL[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb2sigHL[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Kb to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Kb*) 
Kb1sigHL[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF1sigHL <= kb[ghbb] <= kappaBotSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(K\), \(b\)]\)", Larger, Bold]}, {1, 0.5}],
 AxesLabel -> {Style["x", Larger, Bold], 
 Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
 GridLines -> Automatic, GridLinesStyle -> 
 Directive[Black, 
 Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#A20C1A"],Opacity[0.75]},PlotPoints->PP]

Kb1sigWXYZHL[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb1sigHL[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KbHL[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Kb1sigWXYZHL[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Kb2sigWXYZHL[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Kb*)

dataKb1sigHL[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF1sigHL <= kb[ghbb] <= kappaBotSUP1sigHL, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKb2sigHL[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF2sigHL <= kb[ghbb] <= kappaBotSUP2sigHL, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Kb*)

TableKbOToneHL[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKBOTone_1sigma_HL.txt"}],
Re[dataKbOTone1sigHL[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_HL.txt"}],Re[dataKbOTone2sigHL[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

TableKbHL[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_1sigma_HL.txt"}],
Re[
dataKb1sigHL[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_2sigma_HL.txt"}],
Re[
dataKb2sigHL[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kb***************************************************************************************)
(******************************************************************************************************************************************************)
End[] 