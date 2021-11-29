(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Z HL************************************************************************************)
(******************************************************************************************************************************************************)
KZ1sigXHL::usage = "KZ1sigXHL"
KZ2sigXHL::usage = "KZ2sigXHL"
dataZZ1sigXYHL::usage = "dataZZ1sigXYHL"
dataZZ2sigXYHL::usage = "dataZZ2sigXYHL"
dataZZ1sigXYZHL::usage = "dataZZ1sigXYZHL"
dataZZ2sigXYZHL::usage = "dataZZ2sigXYZHL"
tableZ1sigXYHL::usage = "tableZ1sigXYHL"
tableZ2sigXYHL::usage = "tableZ2sigXYHL"
tableZ1sigXYZHL::usage = "tableZ1sigXYZHL"
tableZ2sigXYZHL::usage = "tableZ2sigXYZHL"
kappaz2sigHL::usage = "kappaz2sigHL"
KZ2sigWXYZHL::usage = "KZ2sigWXYZHL"
kappaz1sigHL::usage = "kappaz1sigHL"
KZ1sigWXYZHL::usage = "KZ1sigWXYZHL"

KZoneHL::usage = "Type ?KVoneX for more details."

TableKZoneHL::usage = "Type ?TableKVoneX for more details."

KZHL::usage = "Type ?KVX for more details."

TableKZHL::usage = "Type ?TableKVX for more details."
(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-Z*******************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaZ`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa Z****************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa Z

(*kappa Z to 1\[Sigma] in the case in which there is dependence in one parameter*)

KZ1sigXHL[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP1sigHL,kappaZINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#FF0000"],Opacity[0.75]}
]

(*kappa Z to 2\[Sigma] in the case in which there is dependence in one parameter*)

KZ2sigXHL[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP2sigHL,kappaZINF2sigHL},{x,xmin,xmax} 
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#FF0000"],Opacity[0.75]}
]

KZoneHL[ghZZ_,x_,xmin_,xmax_,xlabel_]:={KZ1sigXHL[ghZZ,x,xmin,xmax,xlabel],KZ2sigXHL[ghZZ,x,xmin,xmax,xlabel]}

(*KappaZX1sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaZX2sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-Z}*)

dataZZ1sigXYHL[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF1sigHL<=kZ[ghZZ]<=kappaZSUP1sigHL, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataZZ2sigXYHL[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF2sigHL<=kZ[ghZZ]<=kappaZSUP2sigHL, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataZZ1sigXYZHL[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF1sigHL<=kZ[ghZZ]<=kappaZSUP1sigHL, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataZZ2sigXYZHL[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF2sigHL<=kZ[ghZZ]<=kappaZSUP2sigHL, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

 (*With this commands a table is generated and saved inside the folder TABLE*)

TableKZoneHL[ghZZ_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_1sigma_HL.txt"}],Re[dataZZ1sigXYHL[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_2sigma_HL.txt"}],Re[dataZZ2sigXYHL[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableZ1sigXYHL[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXYHL.txt"}],Re[dataZZ1sigXYHL[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableZ2sigXYHL[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXYHL.txt"}],Re[dataZZ2sigXYHL[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableZ1sigXYZHL[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXYZHL.txt"}],Re[dataZZ1sigXYZHL[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableZ2sigXYZHL[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXYZHL.txt"}],Re[dataZZ2sigXYZHL[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableZ2sigXY[ghZZ[c\[Alpha],1],c\[Alpha],0.7,1,0.025]
tableZ2sigXYZ[ghZZ[c\[Alpha],u],c\[Alpha],0.7,1,0.025,u,0.1,1,0.1]*)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaz2sigHL[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF2sigHL<= kZ[ghZZ] <= kappaZSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#FF0000"],Opacity[0.75]}, AspectRatio->1]

KZ2sigWXYZHL[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz2sigHL[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa Z in the case in which there are dependence in two or more parameters*)
kappaz1sigHL[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF1sigHL<= kZ[ghZZ] <= kappaZSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->PP,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#FF0000"],Opacity[0.75]}, AspectRatio->1]

KZ1sigWXYZHL[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz1sigHL[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KZHL[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KZ1sigWXYZHL[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KZ2sigWXYZHL[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaZ1sig[
ghZZ[c\[Alpha],u],c\[Alpha],u,0.8,1,1,2,calpha,U,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR KZ*)

dataKZ1sigHL[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF1sigHL <= kZ[ghZZ] <= kappaZSUP1sigHL, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKZ2sigHL[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF2sigHL <= kZ[ghZZ] <= kappaZSUP2sigHL, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KZ*)

TableKZHL[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_1sigma_HL.txt"}],
   Re[
     dataKZ1sigHL[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_2sigma_HL.txt"}],
   Re[
     dataKZ2sigHL[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
    "Table"
   ]
  }


(***************************************************************************************************************************************************)
(**********************************************************End kappa Z******************************************************************************)
(***************************************************************************************************************************************************)

End[]
