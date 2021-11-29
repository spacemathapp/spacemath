(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF Kappa-Z************************************************************************************)
(******************************************************************************************************************************************************)
KZ1sigXHE::usage = "KZ1sigXHE"
KZ2sigXHE::usage = "KZ2sigXHE"
dataZZ1sigXYHE::usage = "dataZZ1sigXYHE"
dataZZ2sigXYHE::usage = "dataZZ2sigXYHE"
dataZZ1sigXYZHE::usage = "dataZZ1sigXYZHE"
dataZZ2sigXYZHE::usage = "dataZZ2sigXYZHE"
tableZ1sigXYHE::usage = "tableZ1sigXYHE"
tableZ2sigXYHE::usage = "tableZ2sigXYHE"
tableZ1sigXYZHE::usage = "tableZ1sigXYZHE"
tableZ2sigXYZHE::usage = "tableZ2sigXYZHE"
kappaz2sigHE::usage = "kappaz2sigHE"
KZ2sigWXYZHE::usage = "KZ2sigWXYZHE"
kappaz1sigHE::usage = "kappaz1sigHE"
KZ1sigWXYZHE::usage = "KZ1sigWXYZHE"
dataKZ1sigHE::usage = "dataKZ1sigHE"
dataKZ2sigHE::usage = "dataKZ2sigHE"

KZoneHE::usage = "Type ?KVoneX for more details."

TableKZoneHE::usage = "Type ?TableKVoneX for more details."

KZHE::usage = "Type ?KVX for more details."

TableKZHE::usage = "Type ?TableKVX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF Kappa-Z*******************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaZHE`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa Z****************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa Z

(*kappa Z to 1\[Sigma] in the case in which there is dependence in one parameter*)

KZ1sigXHE[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP1sigHE,kappaZINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#EB4D11"],Opacity[0.75]}
]

(*kappa Z to 2\[Sigma] in the case in which there is dependence in one parameter*)

KZ2sigXHE[ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{kZ[ghZZ],kappaZSUP2sigHE,kappaZINF2sigHE},{x,xmin,xmax} 
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(Z\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#EB4D11"],Opacity[0.75]}
]

KZoneHE[ghZZ_,x_,xmin_,xmax_,xlabel_]:={KZ1sigXHE[ghZZ,x,xmin,xmax,xlabel],KZ2sigXHE[ghZZ,x,xmin,xmax,xlabel]}

(*KappaZX1sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]
KappaZX2sig[ghZZ[c\[Alpha],1],c\[Alpha],0,1,Subscript[c, \[Alpha]]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-Z}*)

dataZZ1sigXYHE[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF1sigHE<=kZ[ghZZ]<=kappaZSUP1sigHE, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-W}*)

dataZZ2sigXYHE[ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaZINF2sigHE<=kZ[ghZZ]<=kappaZSUP2sigHE, kZ[ghZZ],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-W}*)

dataZZ1sigXYZHE[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF1sigHE<=kZ[ghZZ]<=kappaZSUP1sigHE, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

dataZZ2sigXYZHE[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,If[
    kappaZINF2sigHE<=kZ[ghZZ]<=kappaZSUP2sigHE, kZ[ghZZ],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

 (*With this commands a table is generated and saved inside the folder TABLE*)

TableKZoneHE[ghZZ_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_1sigma_HE.txt"}],Re[dataZZ1sigXYHE[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKZone_2sigma_HE.txt"}],Re[dataZZ2sigXYHE[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableZ1sigXYHE[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXYHE.txt"}],Re[dataZZ1sigXYHE[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableZ2sigXYHE[ghZZ_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXYHE.txt"}],Re[dataZZ2sigXYHE[ghZZ,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableZ1sigXYZHE[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ1sigXYZHE.txt"}],Re[dataZZ1sigXYZHE[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableZ2sigXYZHE[ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableZ2sigXYZHE.txt"}],Re[dataZZ2sigXYZHE[ghZZ,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableZ2sigXY[ghZZ[c\[Alpha],1],c\[Alpha],0.7,1,0.025]
tableZ2sigXYZ[ghZZ[c\[Alpha],u],c\[Alpha],0.7,1,0.025,u,0.1,1,0.1]*)

(*To 2\[Sigma]*)

(*kappa W in the case in which there are dependence in two or more parameters*)
kappaz2sigHE[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF2sigHE<= kZ[ghZZ] <= kappaZSUP2sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#EB4D11"],Opacity[0.75]}, AspectRatio->1]

KZ2sigWXYZHE[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz2sigHE[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa Z in the case in which there are dependence in two or more parameters*)
kappaz1sigHE[ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaZINF1sigHE<= kZ[ghZZ] <= kappaZSUP1sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Blue, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#EB4D11"],Opacity[0.75]}, AspectRatio->1]

KZ1sigWXYZHE[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaz1sigHE[ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KZHE[
ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KZ1sigWXYZHE[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KZ2sigWXYZHE[
ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaZ1sig[
ghZZ[c\[Alpha],u],c\[Alpha],u,0.8,1,1,2,calpha,U,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep]*)

(*TABLES FOR KZ*)

dataKZ1sigHE[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF1sigHE <= kZ[ghZZ] <= kappaZSUP1sigHE, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

dataKZ2sigHE[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] :=
 Table[
  {x, y, If[
        kappaZINF2sigHE <= kZ[ghZZ] <= kappaZSUP2sigHE, kZ[ghZZ], 
    0]}, 
  {x, xmin, xmax, xstep}, {y, ymin, ymax, ystep}]

(*EXPORTING TABLES FOR KZ*)

TableKZHE[ghZZ_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, 
  ystep_] := {
  Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_1sigma_HE.txt"}],
   Re[
     dataKZ1sigHE[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  ,
 Export[
   FileNameJoin[{$UserDocumentsDirectory, "TableKZ_2sigma_HE.txt"}],
   Re[
     dataKZ2sigHE[ghZZ, x, xmin, xmax, xstep, y, ymin, ymax, ystep]
     ] /. {{_, _, 0} -> Sequence[]},
   "Table"
   ]
  }


(***************************************************************************************************************************************************)
(**********************************************************End kappa Z******************************************************************************)
(***************************************************************************************************************************************************)

End[]
