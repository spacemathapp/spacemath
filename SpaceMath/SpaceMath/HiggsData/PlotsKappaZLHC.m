(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Z************************************************************************************)
(******************************************************************************************************************************************************)
KZ1sigX::usage = "KZ1sigX"
KZ2sigX::usage = "KZ2sigX"
dataZZ1sigXY::usage = "dataZZ1sigXY"
dataZZ2sigXY::usage = "dataZZ2sigXY"
dataZZ1sigXYZ::usage = "dataZZ1sigXYZ"
dataZZ2sigXYZ::usage = "dataZZ2sigXYZ"
tableZ1sigXY::usage = "tableZ1sigXY"
tableZ2sigXY::usage = "tableZ2sigXY"
tableZ1sigXYZ::usage = "tableZ1sigXYZ"
tableZ2sigXYZ::usage = "tableZ2sigXYZ"
kappaz2sig::usage = "kappaz2sig"
KZ2sigWXYZ::usage = "KZ2sigWXYZ"
kappaz1sig::usage = "kappaz1sig"
KZ1sigWXYZ::usage = "KZ1sigWXYZ"
dataKZ1sig::usage = "dataKZ1sig"
dataKZ2sig::usage = "dataKZ2sig"

KZoneLHC::usage = "Type ?KVoneX for more details."

TableKZoneLHC::usage= "Type ?TableKVoneX for more details."

KZLHC::usage = "Type ?KVX for more details."

TableKZLHC::usage = "Type ?TableKVX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-Z*******************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaZLHC`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa Z****************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa Z for LHC

(*kappa Z to 1\[Sigma] in the case in which there is dependence in one parameter*)

KZ1sigX[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP1sig,kappaZINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#900C3F"],Opacity[0.75]}
]

(*kappa Z to 2\[Sigma] in the case in which there is dependence in one parameter*)

KZ2sigX[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP2sig,kappaZINF2sig},{x,xmin,xmax} 
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#900C3F"],Opacity[0.75]}
]

KZoneLHC[ghZZ_,x_,xmin_,xmax_,xlabel_]:={KZ1sigX[ghZZ,x,xmin,xmax,xlabel],KZ2sigX[ghZZ,x,xmin,xmax,xlabel]}

(*KappaZX1sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaZX2sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-Z}*)

dataZZ1sigXY[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF1sig<=kZ[ghZZ]<=kappaZSUP1sig, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataZZ2sigXY[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF2sig<=kZ[ghZZ]<=kappaZSUP2sig, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataZZ1sigXYZ[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF1sig<=kZ[ghZZ]<=kappaZSUP1sig, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataZZ2sigXYZ[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF2sig<=kZ[ghZZ]<=kappaZSUP2sig, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

 (*With this commands a table is generated and saved inside the folder TABLE*)

TableKZoneLHC[ghZZ_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_1sigma_LHC.txt"}],Re[dataZZ1sigXY[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_2sigma_LHC.txt"}],Re[dataZZ2sigXY[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableZ1sigXY[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXY.txt"}],Re[dataZZ1sigXY[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableZ2sigXY[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXY.txt"}],Re[dataZZ2sigXY[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableZ1sigXYZ[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXYZ.txt"}],Re[dataZZ1sigXYZ[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableZ2sigXYZ[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXYZ.txt"}],Re[dataZZ2sigXYZ[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableZ2sigXY[ghZZ[c\[Alpha],1],c\[Alpha],0.7,1,0.025]
tableZ2sigXYZ[ghZZ[c\[Alpha],u],c\[Alpha],0.7,1,0.025,u,0.1,1,0.1]*)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaz2sig[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF2sig<= kZ[ghZZ] <= kappaZSUP2sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#FE4D00"],Opacity[0.75]}, AspectRatio->1]

KZ2sigWXYZ[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz2sig[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa Z in the case in which there are dependence in two or more parameters*)
kappaz1sig[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF1sig<= kZ[ghZZ] <= kappaZSUP1sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#FE4D00"],Opacity[0.75]}, AspectRatio->1]

KZ1sigWXYZ[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz1sig[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KZLHC[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KZ1sigWXYZ[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KZ2sigWXYZ[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaZ1sig[
ghZZ[c\[Alpha],u],c\[Alpha],u,0.8,1,1,2,calpha,U,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR KZ*)

dataKZ1sig[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF1sig <= kZ[ghZZ] <= kappaZSUP1sig, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKZ2sig[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF2sig <= kZ[ghZZ] <= kappaZSUP2sig, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KZ*)

TableKZLHC[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_1sigma_LHC.txt"}],
   Re[
     dataKZ1sig[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_2sigma_LHC.txt"}],
   Re[
     dataKZ2sig[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
    "Table"
   ]
  }


(***************************************************************************************************************************************************)
(**********************************************************End kappa Z******************************************************************************)
(***************************************************************************************************************************************************)

End[]
