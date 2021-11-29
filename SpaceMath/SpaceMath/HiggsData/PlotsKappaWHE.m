(* Wolfram Language Package *)
(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-W HE*****************************************************************************)
(******************************************************************************************************************************************************)
KW1sigXHE::usage = "KW1sigXHE"
KW2sigXHE::usage = "KW2sigXHE"
dataWW1sigXYHE::usage = "dataWW1sigXYHE"
dataWW2sigXYHE::usage = "dataWW2sigXYHE"
dataWW1sigXYZHE::usage = "dataWW1sigXYZHE"
dataWW2sigXYZHE::usage = "dataWW2sigXYZHE"
tableW1sigXYHE::usage = "tableW1sigXYHE"
tableW2sigXYHE::usage = "tableW2sigXYHE"
tableW1sigXYZHE::usage = "tableW1sigXYZHE"
tableW2sigXYZHE::usage = "tableW2sigXYZHE"
kappaw2sigHE::usage = "kappaw2sigHE"
KW2sigWXYZHE::usage = "KW2sigWXYZHE"
kappaw1sigHE::usage = "kappaw1sigHE"
KW1sigWXYZHE::usage = "KW1sigWXYZHE"

KWoneHE::usage = "Type ?KVoneX for more details."

TableKWoneHE::usage= "Type ?TableKVoneX for more details."

KWHE::usage = "Type ?KVX for more details."

TableKWHE::usage = "Type ?TableKVX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-W HE************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaWHE`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin KW HE*************************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa W HE

(*kappa W to 1\[Sigma] in the case in which there is dependence in one parameter*)

KW1sigXHE[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP1sigHE,kappaWINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#08734C"],Opacity[0.75]}
]

(*kappa W to 2\[Sigma] in the case in which there is dependence in one parameter*)

KW2sigXHE[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP2sigHE,kappaWINF2sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#08734C"],Opacity[0.75]}
]

KWoneHE[ghWW_,x_,xmin_,xmax_,xlabel_]:={KW1sigXHE[ghWW,x,xmin,xmax,xlabel],KW2sigXHE[ghWW,x,xmin,xmax,xlabel]}

(*KappaWX1sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaWX2sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW1sigXYHE[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF1sigHE<=kW[ghWW]<=kappaWSUP1sigHE, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW2sigXYHE[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF2sigHE<=kW[ghWW]<=kappaWSUP2sigHE, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataWW1sigXYZHE[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF1sigHE<=kW[ghWW]<=kappaWSUP1sigHE, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataWW2sigXYZHE[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF2sigHE<=kW[ghWW]<=kappaWSUP2sigHE, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKWoneHE[ghWW_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_1sigma_HE.txt"}],Re[dataWW1sigXYHE[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_2sigma_HE.txt"}],Re[dataWW2sigXYHE[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableW1sigXYHE[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXYHE.txt"}],Re[dataWW1sigXYHE[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableW2sigXYHE[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXYHE.txt"}],Re[dataWW2sigXYHE[ghWW,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableW1sigXYZHE[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXYZHE.txt"}],Re[dataWW1sigXYZHE[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableW2sigXYZHE[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXYZHE.txt"}],Re[dataWW2sigXYZHE[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableW2sigXY[ghWW[c\[Alpha]],c\[Alpha],0.7,1,0.01]*)

(*************************************************************************************************************************************************************************************)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw2sigHE[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF2sigHE<= kW[ghWW] <= kappaWSUP2sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#08734C"],Opacity[0.75]}, AspectRatio->1]

KW2sigWXYZHE[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw2sigHE[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw1sigHE[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF1sigHE<= kW[ghWW] 1<= kappaWSUP1sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#08734C"],Opacity[0.75]}, AspectRatio->1]

KW1sigWXYZHE[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw1sigHE[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KWHE[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KW1sigWXYZHE[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KW2sigWXYZHE[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR KW*)

dataKW1sigHE[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF1sigHE <= kW[ghWW] <= kappaWSUP1sigHE, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKW2sigHE[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF2sigHE <= kW[ghWW] <= kappaWSUP2sigHE, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KW*)

TableKWHE[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_1sigma_HE.txt"}],
   Re[
     dataKW1sigHE[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_2sigma_HE.txt"}],
   Re[
     dataKW2sigHE[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
    "Table"
   ]
  }

(******************************************************************************************************************************************************)
(*********************************************************End KW HE***************************************************************************************)
(******************************************************************************************************************************************************)

End[] 