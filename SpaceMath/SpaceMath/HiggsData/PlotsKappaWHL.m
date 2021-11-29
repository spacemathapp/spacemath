(* Wolfram Language Package *)
(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-W HL*****************************************************************************)
(******************************************************************************************************************************************************)
KW1sigXHL::usage = "KW1sigXHL"
KW2sigXHL::usage = "KW2sigXHL"
dataWW1sigXYHL::usage = "dataWW1sigXYHL"
dataWW2sigXYHL::usage = "dataWW2sigXYHL"
dataWW1sigXYZHL::usage = "dataWW1sigXYZHL"
dataWW2sigXYZHL::usage = "dataWW2sigXYZHL"
tableW1sigXYHL::usage = "tableW1sigXYHL"
tableW2sigXYHL::usage = "tableW2sigXYHL"
tableW1sigXYZHL::usage = "tableW1sigXYZHL"
tableW2sigXYZHL::usage = "tableW2sigXYZHL"
kappaw2sigHL::usage = "kappaw2sigHL"
KW2sigWXYZHL::usage = "KW2sigWXYZHL"
kappaw1sigHL::usage = "kappaw1sigHL"
KW1sigWXYZHL::usage = "KW1sigWXYZHL"

KWoneHL::usage = "Type ?KVoneX for more details."

TableKWoneHL::usage= "Type ?TableKVoneX for more details."

KWHL::usage = "Type ?KVX for more details."

TableKWHL::usage = "Type ?TableKVX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-W HL************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaWHL`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin KW HL*************************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa W HL

(*kappa W to 1\[Sigma] in the case in which there is dependence in one parameter*)

KW1sigXHL[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP1sigHL,kappaWINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#40C818"],Opacity[0.75]}
]

(*kappa W to 2\[Sigma] in the case in which there is dependence in one parameter*)

KW2sigXHL[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP2sigHL,kappaWINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#40C818"],Opacity[0.75]}
]

KWoneHL[ghWW_,x_,xmin_,xmax_,xlabel_]:={KW1sigXHL[ghWW,x,xmin,xmax,xlabel],KW2sigXHL[ghWW,x,xmin,xmax,xlabel]}

(*KappaWX1sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaWX2sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW1sigXYHL[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF1sigHL<=kW[ghWW]<=kappaWSUP1sigHL, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW2sigXYHL[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF2sigHL<=kW[ghWW]<=kappaWSUP2sigHL, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataWW1sigXYZHL[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF1sigHL<=kW[ghWW]<=kappaWSUP1sigHL, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataWW2sigXYZHL[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF2sigHL<=kW[ghWW]<=kappaWSUP2sigHL, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKWoneHL[ghWW_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_1sigma_HL.txt"}],Re[dataWW1sigXYHL[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_2sigma_HL.txt"}],Re[dataWW2sigXYHL[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableW1sigXYHL[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXYHL.txt"}],Re[dataWW1sigXYHL[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableW2sigXYHL[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXYHL.txt"}],Re[dataWW2sigXYHL[ghWW,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableW1sigXYZHL[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXYZHL.txt"}],Re[dataWW1sigXYZHL[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableW2sigXYZHL[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXYZHL.txt"}],Re[dataWW2sigXYZHL[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableW2sigXY[ghWW[c\[Alpha]],c\[Alpha],0.7,1,0.01]*)

(*************************************************************************************************************************************************************************************)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw2sigHL[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF2sigHL<= kW[ghWW] <= kappaWSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->PP,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#40C818"],Opacity[0.75]}, AspectRatio->1]

KW2sigWXYZHL[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw2sigHL[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw1sigHL[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF1sigHL<= kW[ghWW] 1<= kappaWSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->PP,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#40C818"],Opacity[0.75]}, AspectRatio->1]

KW1sigWXYZHL[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw1sigHL[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KWHL[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KW1sigWXYZHL[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KW2sigWXYZHL[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR KW*)

dataKW1sigHL[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF1sigHL <= kW[ghWW] <= kappaWSUP1sigHL, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKW2sigHL[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF2sigHL <= kW[ghWW] <= kappaWSUP2sigHL, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KW*)

TableKWHL[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_1sigma_HL.txt"}],
   Re[
     dataKW1sigHL[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_2sigma_HL.txt"}],
   Re[
     dataKW2sigHL[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
    "Table"
   ]
  }

(******************************************************************************************************************************************************)
(*********************************************************End KW HL***************************************************************************************)
(******************************************************************************************************************************************************)

End[] 