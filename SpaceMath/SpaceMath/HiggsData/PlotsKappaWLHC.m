(* Wolfram Language Package *)
(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-W*****************************************************************************)
(******************************************************************************************************************************************************)
KW1sigX::usage = "KW1sigX"
KW2sigX::usage = "KW2sigX"
dataWW1sigXY::usage = "dataWW1sigXY"
dataWW2sigXY::usage = "dataWW2sigXY"
dataWW1sigXYZ::usage = "dataWW1sigXYZ"
dataWW2sigXYZ::usage = "dataWW2sigXYZ"
tableW1sigXY::usage = "tableW1sigXY"
tableW2sigXY::usage = "tableW2sigXY"
tableW1sigXYZ::usage = "tableW1sigXYZ"
tableW2sigXYZ::usage = "tableW2sigXYZ"
kappaw2sig::usage = "kappaw2sig"
KW2sigWXYZ::usage = "KW2sigWXYZ"
kappaw1sig::usage = "kappaw1sig"
KW1sigWXYZ::usage = "KW1sigWXYZ"

KWoneLHC::usage = "Type ?KVoneX for more details."

TableKWoneLHC::usage= "Type ?TableKVoneX for more details." 

KWLHC::usage = "Type ?KVX for more details."

TableKWLHC::usage = "Type ?TableKVX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-W************************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaWLHC`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin KW*************************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa W for LHC

(*kappa W to 1\[Sigma] in the case in which there is dependence in one parameter*)

KW1sigX[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP1sig,kappaWINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#EAE010"],Opacity[0.75]}
]

(*kappa W to 2\[Sigma] in the case in which there is dependence in one parameter*)

KW2sigX[ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{kW[ghWW],kappaWSUP2sig,kappaWINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#EAE010"],Opacity[0.75]}
]

KWoneLHC[ghWW_,x_,xmin_,xmax_,xlabel_]:={KW1sigX[ghWW,x,xmin,xmax,xlabel],KW2sigX[ghWW,x,xmin,xmax,xlabel]}

(*KappaWX1sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaWX2sig[ghWW[c\[Alpha]],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW1sigXY[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF1sig<=kW[ghWW]<=kappaWSUP1sig, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataWW2sigXY[ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaWINF2sig<=kW[ghWW]<=kappaWSUP2sig, kW[ghWW],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataWW1sigXYZ[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF1sig<=kW[ghWW]<=kappaWSUP1sig, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataWW2sigXYZ[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaWINF2sig<=kW[ghWW]<=kappaWSUP2sig, kW[ghWW],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKWoneLHC[ghWW_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_1sigma_LHC.txt"}],Re[dataWW1sigXY[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKWone_2sigma_LHC.txt"}],Re[dataWW2sigXY[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableW1sigXY[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXY.txt"}],Re[dataWW1sigXY[ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableW2sigXY[ghWW_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXY.txt"}],Re[dataWW2sigXY[ghWW,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableW1sigXYZ[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW1sigXYZ.txt"}],Re[dataWW1sigXYZ[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableW2sigXYZ[ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableW2sigXYZ.txt"}],Re[dataWW2sigXYZ[ghWW,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableW2sigXY[ghWW[c\[Alpha]],c\[Alpha],0.7,1,0.01]*)

(*************************************************************************************************************************************************************************************)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw2sig[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF2sig<= kW[ghWW] <= kappaWSUP2sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#EAE010"],Opacity[0.75]}, AspectRatio->1]

KW2sigWXYZ[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw2sig[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaw1sig[ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaWINF1sig<= kW[ghWW] 1<= kappaWSUP1sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#EAE010"],Opacity[0.75]}, AspectRatio->1]

KW1sigWXYZ[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaw1sig[ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KWLHC[
ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KW1sigWXYZ[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KW2sigWXYZ[
ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR KW*)

dataKW1sig[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF1sig <= kW[ghWW] <= kappaWSUP1sig, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKW2sig[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaWINF2sig <= kW[ghWW] <= kappaWSUP2sig, kW[ghWW], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KW*)

TableKWLHC[ghWW_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_1sigma_LHC.txt"}],
   Re[
     dataKW1sig[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKW_2sigma_LHC.txt"}],
   Re[
     dataKW2sig[ghWW, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
    "Table"
   ]
  }

(******************************************************************************************************************************************************)
(*********************************************************End KW***************************************************************************************)
(******************************************************************************************************************************************************)

End[] 