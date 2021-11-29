(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF KTau************************************************************************************)
(******************************************************************************************************************************************************)
Ktau1sigX::usage = "Ktau1sigX"
Ktau2sigX::usage = "Ktau2sigX"
datatautau1sigXY::usage = "datatautau1sigXY"
datatautau2sigXY::usage = "datatautau2sigXY"
datatautau1sigXYZ::usage = "datatautau1sigXYZ"
datatautau2sigXYZ::usage = "datatautau2sigXYZ"
tableTau1sigXY::usage = "tableTau1sigXY"
tableTau2sigXY::usage = "tableTau2sigXY"
tableTau1sigXYZ::usage = "tableTau1sigXYZ"
tableTau2sigXYZ::usage = "tableTau2sigXYZ"
kappaTau2sig::usage = "kappaTau2sig"
Ktau2sigWXYZ::usage = "Ktau2sigWXYZ"
kappaTau1sig::usage = "kappaTau1sig"
Ktau1sigWXYZ::usage = "Ktau1sigWXYZ"

dataKtau1sig::usage = "dataKtau1sig"
dataKtau2sig::usage = "dataKtau2sig"

KTAUoneLHC::usage = "Type ?KTAUoneX for more details."

TableKTAUoneLHC::usage = "Type ?TableKTAUoneX for more details."

KtauLHC::usage = "Type ?KtauX for more details."

TableKtauLHC::usage = "Type ?TableKtauX for more details."

(******************************************************************************************************************************************************)
(*********************************************************End OF KTau**********************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaTauLHC`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa tau

(*kappa tau to 1\[Sigma] in the case in which there is dependence in one parameter*)

Ktau1sigX[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP1sig,kappaTauINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#6B1F1B"],Opacity[0.75]}
]

(*kappa tau to 2\[Sigma] in the case in which there is dependence in one parameter*)

Ktau2sigX[ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktau[ghtautau],kappaTauSUP2sig,kappaTauINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(\[Tau]\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#6B1F1B"],Opacity[0.75]}
]

KTAUoneLHC[ghtautau_,x_,xmin_,xmax_,xlabel_]:={
Ktau1sigX[ghtautau,x,xmin,xmax,xlabel],
Ktau2sigX[ghtautau,x,xmin,xmax,xlabel]
}
(*KappatauX1sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]
KappatauX2sig[ghtautau[0.9,0.1,u],u,500,2000,u[GeV]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau1sigXY[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF1sig<=ktau[ghtautau]<=kappaTauSUP1sig, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-tau}*)

datatautau2sigXY[ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTauINF2sig<=ktau[ghtautau]<=kappaTauSUP2sig, ktau[ghtautau],0]}, {x, xmin,xmax,xstep}]


(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau1sigXYZ[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF1sig<=ktau[ghtautau]<=kappaTauSUP1sig, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-tau}*)

datatautau2sigXYZ[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTauINF2sig<=ktau[ghtautau]<=kappaTauSUP2sig, ktau[ghtautau],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

TableKTAUoneLHC[ghtautau_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_1sigma_LHC.txt"}],Re[datatautau1sigXY[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTAUone_2sigma_LHC.txt"}],Re[datatautau2sigXY[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableTau1sigXY[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXY.txt"}],Re[datatautau1sigXY[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableTau2sigXY[ghtautau_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXY.txt"}],Re[datatautau2sigXY[ghtautau,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableTau1sigXYZ[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau1sigXYZ.txt"}],Re[datatautau1sigXYZ[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableTau2sigXYZ[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTau2sigXYZ.txt"}],Re[datatautau2sigXYZ[ghtautau,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableTau2sigXYZ[ghtautau[c\[Alpha],Ztautau,1000],c\[Alpha],0,1,0.1,Ztautau,0,0.1,0.01]
tableTau1sigXY[ghtautau[c\[Alpha],0.05,1000],c\[Alpha],0,1,0.1]*)

(*************************************************************************************************************************************************************************************)
(*kappa tau in the case in which there are dependence in two or more parameters*)

(*To 2\[Sigma]*)

(*kappa tau to 2\[Sigma]*)
kappaTau2sig[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF2sig<= Abs[ktau[ghtautau]] <= kappaTauSUP2sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#6B1F1B"],Opacity[0.75]}, AspectRatio->1]

Ktau2sigWXYZ[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau2sig[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa tau to 1\[Sigma]*)
kappaTau1sig[ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTauINF1sig<= Abs[ktau[ghtautau]] <= kappaTauSUP1sig},
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
     Dashed], BoundaryStyle -> {1 -> Directive[Yellow, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#6B1F1B"],Opacity[0.75]}, AspectRatio->1]

Ktau1sigWXYZ[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaTau1sig[ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KtauLHC[
ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Ktau1sigWXYZ[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Ktau2sigWXYZ[
ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*Ktau1sigWXYZ[ghtautau[-ArcCos[cba]+ArcTan[tb],tb],cba,tb,-1,1,0.1,50,c\[Beta]\[Alpha],t\[Beta],xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,50]*)

(*KappaTAU2sig[ghtautau[c\[Alpha],Ztautau,u],u,Ztautau,500,2000,0,1
,u[GeV],Ztautau,c\[Alpha],yfor,0.9,0.99,0.01,yformin,yformax,yforstep]*)

(*TABLES FOR Ktau*)

dataKtau1sig[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF1sig <= ktau[ghtautau] <= kappaTauSUP1sig, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKtau2sig[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTauINF2sig <= ktau[ghtautau] <= kappaTauSUP2sig, ktau[ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Ktau*)

TableKtauLHC[ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_1sigma_LHC.txt"}],
Re[
dataKtau1sig[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKtau_2sigma_LHC.txt"}],
Re[
dataKtau2sig[ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kappa tau******************************************************************************)
(******************************************************************************************************************************************************)

End[] 
