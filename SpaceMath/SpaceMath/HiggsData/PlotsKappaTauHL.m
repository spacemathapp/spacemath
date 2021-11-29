(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KTau HL************************************************************************************)
(******************************************************************************************************************************************************)
Ktau1sigXHL::usage = "Ktau1sigXHL"
Ktau2sigXHL::usage = "Ktau2sigXHL"
datatautau1sigXYHL::usage = "datatautau1sigXYHL"
datatautau2sigXYHL::usage = "datatautau2sigXYHL"
datatautau1sigXYZHL::usage = "datatautau1sigXYZHL"
datatautau2sigXYZHL::usage = "datatautau2sigXYZHL"
tableTau1sigXYHL::usage = "tableTau1sigXYHL"
tableTau2sigXYHL::usage = "tableTau2sigXYHL"
tableTau1sigXYZHL::usage = "tableTau1sigXYZHL"
tableTau2sigXYZHL::usage = "tableTau2sigXYZHL"
kappaTau2sigHL::usage = "kappaTau2sigHL"
Ktau2sigWXYZHL::usage = "Ktau2sigWXYZHL"
kappaTau1sigHL::usage = "kappaTau1sigHL"
Ktau1sigWXYZHL::usage = "Ktau1sigWXYZHL"

dataKtau1sigHL::usage = "dataKtau1sigHL"
dataKtau2sigHL::usage = "dataKtau2sigHL"

KTAUoneHL::usage = "Type ?KTAUoneX for more details."

TableKTAUoneHL::usage = "Type ?TableKTAUoneX for more details."

KtauHL::usage = "Type ?KtauX for more details."

TableKtauHL::usage = "Type ?TableKtauX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF KTau**********************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaTauHL`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa tau

(*kappa tau to 1\[Sigma] in the case in which there is dependence in one parameter*)

Ktau1sigXHL[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP1sigHL,kappaTauINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#411B6B"],Opacity[0.75]}
]

(*kappa tau to 2\[Sigma] in the case in which there is dependence in one parameter*)

Ktau2sigXHL[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP2sigHL,kappaTauINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#411B6B"],Opacity[0.75]}
]

KTAUoneHL[ghtautau_,x_,xmin_,xmax_,xlabel_]:={
Ktau1sigXHL[ghtautau,x,xmin,xmax,xlabel],
Ktau2sigXHL[ghtautau,x,xmin,xmax,xlabel]
}
(*KappatauX1sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]
KappatauX2sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau1sigXYHL[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF1sigHL<=ktau[ghtautau]<=kappaTauSUP1sigHL, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau2sigXYHL[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF2sigHL<=ktau[ghtautau]<=kappaTauSUP2sigHL, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]


(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau1sigXYZHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF1sigHL<=ktau[ghtautau]<=kappaTauSUP1sigHL, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau2sigXYZHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF2sigHL<=ktau[ghtautau]<=kappaTauSUP2sigHL, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKTAUoneHL[ghtautau_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_1sigma_HL.txt"}],Re[datatautau1sigXYHL[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_2sigma_HL.txt"}],Re[datatautau2sigXYHL[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableTau1sigXYHL[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXYHL.txt"}],Re[datatautau1sigXYHL[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableTau2sigXYHL[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXYHL.txt"}],Re[datatautau2sigXYHL[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableTau1sigXYZHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXYZHL.txt"}],Re[datatautau1sigXYZHL[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableTau2sigXYZHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXYZHL.txt"}],Re[datatautau2sigXYZHL[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableTau2sigXYZ[ghtautau[c\[Alpha],Ztautau,1000],c\[Alpha],0,1,0.1,Ztautau,0,0.1,0.01]
tableTau1sigXY[ghtautau[c\[Alpha],0.05,1000],c\[Alpha],0,1,0.1]*)

(*************************************************************************************************************************************************************************************)
(*kappa tau in the case in which there are dependence in two or more parameters*)

(*To 2\[Sigma]*)

(*kappa tau to 2\[Sigma]*)
kappaTau2sigHL[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF2sigHL<= Abs[ktau[ghtautau]] <= kappaTauSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->PP,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Large, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)", Larger, Bold]}, {1, 0.5}],
(* AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, *)
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#411B6B"],Opacity[0.75]}, AspectRatio->1]

Ktau2sigWXYZHL[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau2sigHL[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa tau to 1\[Sigma]*)
kappaTau1sigHL[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF1sigHL<= Abs[ktau[ghtautau]] <= kappaTauSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->PP,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Large, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)", Larger, Bold]}, {1, 0.5}],
(* AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#411B6B"],Opacity[0.75]}, AspectRatio->1]

Ktau1sigWXYZHL[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau1sigHL[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KtauHL[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Ktau1sigWXYZHL[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Ktau2sigWXYZHL[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*Ktau1sigWXYZ[ghtautau[-ArcCos[cba]+ArcTan[tb],tb],cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaTAU2sig[ghtautau[c\[Alpha],Ztautau,u],u,Ztautau,500,2000,0,1
,u[GeV],Ztautau,c\[Alpha],yfor,0.9,0.99,0.01,yformin,yformax,yforstep]*)

(*TABLES FOR Ktau*)

dataKtau1sigHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF1sigHL <= ktau[ghtautau] <= kappaTauSUP1sigHL, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKtau2sigHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF2sigHL <= ktau[ghtautau] <= kappaTauSUP2sigHL, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Ktau*)

TableKtauHL[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_1sigma_HL.txt"}],
Re[
dataKtau1sigHL[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_2sigma_HL.txt"}],
Re[
dataKtau2sigHL[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

End[] 
