(* Wolfram Language Package *)

(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Bottom************************************************************************)
(******************************************************************************************************************************************************)
Kb1sigXHE::usage = "Kb1sigXHE"
Kb2sigXHE::usage = "Kb2sigXHE"
dataKbOTone1sigHE::usage = "dataKbOTone1sigHE"
dataKbOTone2sigHE::usage = "dataKbOTone2sigHE"
TableKbOToneHE::usage = "TableKbOToneHE"
Kb2sigHE::usage = "Kb2sigHE"
Kb2sigWXYZHE::usage = "Kb2sigWXYZHE"
Kb1sigHE::usage = "Kb1sigHE"
Kb1sigWXYZHE::usage = "Kb1sigWXYZHE"
KbHE::usage = "KbHE"
dataKb1sigHE::usage = "dataKb1sigHE"
dataKb2sigHE::usage = "dataKb2sigHE"

KBOToneHE::usage = "Type ?KBOToneX for more details."

TableKBOToneHE::usage = "Type ?TableKBOToneX for more details."

KbHE::usage = "Type ?KbX for more details."

TableKbHE::usage = "Type ?TableKbX for more details."

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

Kb1sigXHE[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP1sigHE,kappaBotINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#00761B"],Opacity[0.75]}
]

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)

Kb2sigXHE[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP2sigHE,kappaBotINF2sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#00761B"],Opacity[0.75]}
]


KBOToneHE[ghbb_,x_,xmin_,xmax_,xlabel_]:={
Kb1sigXHE[ghbb,x,xmin,xmax,xlabel],
Kb2sigXHE[ghbb,x,xmin,xmax,xlabel]
}

(*TABLES FOR KbOTone*)

dataKbOTone1sigHE[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sigHE<=kb[ghbb]<=kappaBotSUP1sigHE, kb[ghbb],0]}, {x, xmin,xmax,xstep}]

dataKbOTone2sigHE[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sigHE<=kb[ghbb]<=kappaBotSUP1sigHE, kb[ghbb],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR KbOTone*)

TableKBOToneHE[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_1sigma_HE.txt"}],Re[dataKbOTone1sigHE[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_HE.txt"}],Re[dataKbOTone2sigHE[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*Kb to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]bb*)
Kb2sigHE[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF2sigHE<= kb[ghbb] <= kappaBotSUP2sigHE},
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
     Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#00761B"],Opacity[0.75]}, PlotPoints->PP]

Kb2sigWXYZHE[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb2sigHE[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Kb to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Kb*) 
Kb1sigHE[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF1sigHE <= kb[ghbb] <= kappaBotSUP1sigHE},
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
 Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#00761B"],Opacity[0.75]},PlotPoints->PP]

Kb1sigWXYZHE[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb1sigHE[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KbHE[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Kb1sigWXYZHE[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Kb2sigWXYZHE[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Kb*)

dataKb1sigHE[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF1sigHE <= kb[ghbb] <= kappaBotSUP1sigHE, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKb2sigHE[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF2sigHE <= kb[ghbb] <= kappaBotSUP2sigHE, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Kb*)

TableKbOToneHE[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKBOTone_1sigma_HE.txt"}],
Re[dataKbOTone1sigHE[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_HE.txt"}],Re[dataKbOTone2sigHE[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

TableKbHE[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_1sigma_HE.txt"}],
Re[
dataKb1sigHE[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_2sigma_HE.txt"}],
Re[
dataKb2sigHE[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kb***************************************************************************************)
(******************************************************************************************************************************************************)
End[] 