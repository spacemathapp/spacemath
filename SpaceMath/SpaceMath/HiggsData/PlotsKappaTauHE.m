(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KTau HE************************************************************************************)
(******************************************************************************************************************************************************)
Ktau1sigXHE::usage = "Ktau1sigXHE"
Ktau2sigXHE::usage = "Ktau2sigXHE"
datatautau1sigXYHE::usage = "datatautau1sigXYHE"
datatautau2sigXYHE::usage = "datatautau2sigXYGE"
datatautau1sigXYZHE::usage = "datatautau1sigXYZHE"
datatautau2sigXYZHE::usage = "datatautau2sigXYZHE"
tableTau1sigXYHE::usage = "tableTau1sigXYHE"
tableTau2sigXYHE::usage = "tableTau2sigXYHE"
tableTau1sigXYZHE::usage = "tableTau1sigXYZHE"
tableTau2sigXYZHE::usage = "tableTau2sigXYZHE"
kappaTau2sigHE::usage = "kappaTau2sigHE"
Ktau2sigWXYZHE::usage = "Ktau2sigWXYZHE"
kappaTau1sigHE::usage = "kappaTau1sigHE"
Ktau1sigWXYZHE::usage = "Ktau1sigWXYZHE"

dataKtau1sigHE::usage = "dataKtau1sigHE"
dataKtau2sigHE::usage = "dataKtau2sigHE"

KTAUoneHE::usage = "Type ?KTAUoneX for more details."

TableKTAUoneHE::usage = "Type ?TableKTAUoneX for more details."

KtauHE::usage = "Type ?KtauX for more details."

TableKtauHE::usage = "Type ?TableKtauX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF KTau**********************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaTauHE`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa tau

(*kappa tau to 1\[Sigma] in the case in which there is dependence in one parameter*)

Ktau1sigXHE[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP1sigHE,kappaTauINF1sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#1B6B1F"],Opacity[0.75]}
]

(*kappa tau to 2\[Sigma] in the case in which there is dependence in one parameter*)

Ktau2sigXHE[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP2sigHE,kappaTauINF2sigHE},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#1B6B1F"],Opacity[0.75]}
]

KTAUoneHE[ghtautau_,x_,xmin_,xmax_,xlabel_]:={
Ktau1sigXHE[ghtautau,x,xmin,xmax,xlabel],
Ktau2sigXHE[ghtautau,x,xmin,xmax,xlabel]
}
(*KappatauX1sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]
KappatauX2sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau1sigXYHE[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF1sigHE<=ktau[ghtautau]<=kappaTauSUP1sigHE, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau2sigXYHE[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF2sigHE<=ktau[ghtautau]<=kappaTauSUP2sigHE, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]


(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau1sigXYZHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF1sigHE<=ktau[ghtautau]<=kappaTauSUP1sigHE, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau2sigXYZHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF2sigHE<=ktau[ghtautau]<=kappaTauSUP2sigHE, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKTAUoneHE[ghtautau_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_1sigma_HE.txt"}],Re[datatautau1sigXYHE[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_2sigma_HE.txt"}],Re[datatautau2sigXYHE[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableTau1sigXYHE[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXYHE.txt"}],Re[datatautau1sigXYHE[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableTau2sigXYHE[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXYHE.txt"}],Re[datatautau2sigXYHE[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableTau1sigXYZHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXYZHE.txt"}],Re[datatautau1sigXYZHE[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableTau2sigXYZHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXYZHE.txt"}],Re[datatautau2sigXYZHE[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableTau2sigXYZ[ghtautau[c\[Alpha],Ztautau,1000],c\[Alpha],0,1,0.1,Ztautau,0,0.1,0.01]
tableTau1sigXY[ghtautau[c\[Alpha],0.05,1000],c\[Alpha],0,1,0.1]*)

(*************************************************************************************************************************************************************************************)
(*kappa tau in the case in which there are dependence in two or more parameters*)

(*To 2\[Sigma]*)

(*kappa tau to 2\[Sigma]*)
kappaTau2sigHE[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF2sigHE<= Abs[ktau[ghtautau]] <= kappaTauSUP2sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#1B6B1F"],Opacity[0.75]}, AspectRatio->1]

Ktau2sigWXYZHE[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau2sigHE[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa tau to 1\[Sigma]*)
kappaTau1sigHE[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF1sigHE<= Abs[ktau[ghtautau]] <= kappaTauSUP1sigHE},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#1B6B1F"],Opacity[0.75]}, AspectRatio->1]

Ktau1sigWXYZHE[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau1sigHE[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KtauHE[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Ktau1sigWXYZHE[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Ktau2sigWXYZHE[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*Ktau1sigWXYZ[ghtautau[-ArcCos[cba]+ArcTan[tb],tb],cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaTAU2sig[ghtautau[c\[Alpha],Ztautau,u],u,Ztautau,500,2000,0,1
,u[GeV],Ztautau,c\[Alpha],yfor,0.9,0.99,0.01,yformin,yformax,yforstep]*)

(*TABLES FOR Ktau*)

dataKtau1sigHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF1sigHE <= ktau[ghtautau] <= kappaTauSUP1sigHE, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKtau2sigHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF2sigHE <= ktau[ghtautau] <= kappaTauSUP2sigHE, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Ktau*)

TableKtauHE[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_1sigma_HE.txt"}],
Re[
dataKtau1sigHE[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_2sigma_HE.txt"}],
Re[
dataKtau2sigHE[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

End[] 
