(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Bottom************************************************************************)
(******************************************************************************************************************************************************)
Kb1sigX::usage = "Kb1sigX"
Kb2sigX::usage = "Kb2sigX"
dataKbOTone1sig::usage = "dataKbOTone1sig"
dataKbOTone2sig::usage = "dataKbOTone2sig"
TableKbOTone::usage = "TableKbOTone"
Kb2sig::usage = "Kb2sig"
Kb2sigWXYZ::usage = "Kb2sigWXYZ"
Kb1sig::usage = "Kb1sig"
Kb1sigWXYZ::usage = "Kb1sigWXYZ"
Kb::usage = "Kb"
dataKb1sig::usage = "dataKb1sig"
dataKb2sig::usage = "dataKb2sig"

KBOToneLHC::usage = "Type ?KBOToneX for more details."

TableKBOToneLHC::usage = "Type ?TableKBOToneX for more details."

KbLHC::usage = "Type ?KbX for more details."

TableKbLHC::usage = "Type ?TableKbX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-Bottom************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaBottomLHC`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kb*************************************************************************************)
(******************************************************************************************************************************************************)

(*************************************************************************************************************************************************************************************)

Individual process;
K botton

(*************************************************************************************************************************************************************************************)

(*K bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)

Kb1sigX[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP1sig,kappaBotINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#F7FF00"],Opacity[0.75]}
]

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)

Kb2sigX[ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kb[ghbb],kappaBotSUP2sig,kappaBotINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(K\), \(b\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(K\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#F7FF00"],Opacity[0.75]}
]


KBOToneLHC[ghbb_,x_,xmin_,xmax_,xlabel_]:={
Kb1sigX[ghbb,x,xmin,xmax,xlabel],
Kb2sigX[ghbb,x,xmin,xmax,xlabel]
}

(*TABLES FOR KbOTone*)

dataKbOTone1sig[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sig<=kb[ghbb]<=kappaBotSUP1sig, kb[ghbb],0]}, {x, xmin,xmax,xstep}]

dataKbOTone2sig[ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaBotINF1sig<=kb[ghbb]<=kappaBotSUP1sig, kb[ghbb],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR KbOTone*)

TableKBOToneLHC[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_1sigma_LHC.txt"}],Re[dataKbOTone1sig[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_LHC.txt"}],Re[dataKbOTone2sig[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*Kb to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]bb*)
Kb2sig[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF2sig <= kb[ghbb] <= kappaBotSUP2sig},
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
     Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#F7FF00"],Opacity[0.75]}, PlotPoints->PP]

Kb2sigWXYZ[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb2sig[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Kb to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Kb*) 
Kb1sig[ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaBotINF1sig <= kb[ghbb] <= kappaBotSUP1sig},
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
 Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#F7FF00"],Opacity[0.75]},PlotPoints->PP]

Kb1sigWXYZ[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Kb1sig[ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KbLHC[
ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Kb1sigWXYZ[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Kb2sigWXYZ[
ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Kb*)

dataKb1sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF1sig <= kb[ghbb] <= kappaBotSUP1sig, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaBotINF2sig <= kb[ghbb] <= kappaBotSUP2sig, kb[ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Kb*)

TableKbOToneLHC[ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKBOTone_1sigma_LHC.txt"}],
Re[dataKbOTone1sig[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKbOTone_2sigma_LHC.txt"}],Re[dataKbOTone2sig[ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

TableKbLHC[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_1sigma_LHC.txt"}],
Re[
dataKb1sig[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKb_2sigma_LHC.txt"}],
Re[
dataKb2sig[ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kb***************************************************************************************)
(******************************************************************************************************************************************************)
End[] 