(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin K top************************************************************************************)
(******************************************************************************************************************************************************)
Kt2sigX::usage = "Kt2sigX"
datatt1sigXY::usage = "datatt1sigXY"
datatt2sigXY::usage = "datatt2sigXY"
datatt1sigXYZ::usage = "datatt1sigXYZ"
datatt2sigXYZ::usage = "datatt2sigXYZ"
tableTop1sigXY::usage = "tableTop1sigXY"
tableTop2sigXY::usage = "tableTop2sigXY"
tableTop1sigXYZ::usage = "tableTop1sigXYZ"
tableTop2sigXYZ::usage = "tableTop2sigXYZ"
kappaT2sig::usage = "kappaT2sig"
Kt2sigWXYZ::usage = "Kt2sigWXYZ"
kappaT1sig::usage = "kappaT1sig"
Kt1sigWXYZ::usage = "Kt1sigWXYZ"

KTOPone::usage = "Ktone[ghtt_,x_,xmin_,xmax_,xlabel_][[i]]\[Rule] This command evaluates \!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\) when there is dependence only on one parameter. The argument ghWW is the hWW \
coupling. Here, h represents to SM-like Higgs boson while W is the W gauge boson. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xlabel is used \
for indicates the X axis label. Finally, [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma])."

TableKTOPone::usage="TableKtone[ghtt_,x_,xmin_,xmax_,xstep_] \[Rule] This command generates a table of \!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\). The argument ghWW is the \
hWW coupling. Here, h represents to SM-like Higgs boson while W is the W gauge boson. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xstep is used \
to indicates the steps from xmin to xmax. "

Kt::usage="Kt[ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]\[Rule] This command evaluates \!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\), \
when there is dependence on two or more parameters. The arguments ghWW is the hWW \
coupling. Here, h represents to SM-like Higgs boson while W is the W gauge boson. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableKt::usage="TableKt[ghtt_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, ystep_]\[Rule] This command generates a table of \!\(\*SubscriptBox[\(\[Kappa]\), \(W\)]\). The argument ghWW is the hWW, \
coupling. Here, h represents to SM-like Higgs boson while W is the W gauge boson. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users and xstep (ystep) is used \
to indicates the steps from xmin to xmax (ymin to ymax)."
(******************************************************************************************************************************************************)
(*********************************************************End K top***********************************************************************************)
(******************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaTop`Private`"]

(******************************************************************************************************************************************************)
(*********************************************************Begin Kappa top******************************************************************************)
(******************************************************************************************************************************************************)

Individual process;
kappa top

Kt1sigX[ghtt_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktop[ghtt],kappaTopSUP1sig,kappaTopINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1300,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{Blue,Opacity[0.1]}
]

(*kappa top to 2\[Sigma] in the case in which there is dependence in one parameter*)

Kt2sigX[ghtt_,x_,xmin_,xmax_,xlabel_]:=Plot[{ktop[ghtt],kappaTopSUP2sig,kappaTopINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1300,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)","\!\(\*
StyleBox[\"SpaceMath\",\nFontSlant->\"Italic\"]\)"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{Blue,Opacity[0.1]}
]

KTOPone[ghtt_,x_,xmin_,xmax_,xlabel_]:={
Kt1sigX[ghtt,x,xmin,xmax,xlabel],
Kt2sigX[ghtt,x,xmin,xmax,xlabel]
}

(*KappatopX1sig[ghtt[0.9,10,u],u,500,2000,u[GeV]]
KappatopX2sig[ghtt[0.9,10,u],u,500,2000,u[GeV]]*)

(*************************************************************************************************************************************************************************************)

 (*With this commands a table is created*)

(*Create a table of two columns to 1 \[Sigma] \[Rule] {x,kappa-top}*)

datatt1sigXY[ghtt_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTopINF1sig<=ktop[ghtt]<=kappaTopSUP1sig, ktop[ghtt],0]}, {x, xmin,xmax,xstep}]

(*Create a table of two columns to 2 \[Sigma] \[Rule] {x,kappa-top}*)

datatt2sigXY[ghtt_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    kappaTopINF2sig<=ktop[ghtt]<=kappaTopSUP2sig, ktop[ghtt],0]}, {x, xmin,xmax,xstep}]

(*Create a table of three columns to 1 \[Sigma] \[Rule] {x,y,kappa-top}*)

datatt1sigXYZ[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTopINF1sig<=ktop[ghtt]<=kappaTopSUP1sig, ktop[ghtt],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*Create a table of three columns to 2 \[Sigma] \[Rule] {x,y,kappa-top}*)

datatt2sigXYZ[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    kappaTopINF2sig<=ktop[ghtt]<=kappaTopSUP2sig, ktop[ghtt],0]}, {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]

(*databb2sig[ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Do[list=Append[list={x,y,If[
    kappaBotINF2sig<=kb[ghbb]<=kappaBotSUP2sig, kb[ghbb],0
]}], {x, xmin,xmax,xstep},{y, ymin,ymax,ystep}]*)

(*EXPORTING TABLES FOR KTOPone*)

TableKTOPone[ghtt_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTOPone_1sigma.txt"}],Re[datatt1sigXYZ[ghtt,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKTOPone_2sigma.txt"}],Re[datatt2sigXYZ[ghtt,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

 (*With this commands a table is generated and saved inside the folder TABLE*)

(*************************************************************************************************************************************************************************************)

(*This are the commands used in the shell of mathematica*)

tableTop1sigXY[ghtt_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTop1sigXY.txt"}],Re[datatt1sigXY[ghtt,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},"Table"
]

tableTop2sigXY[ghtt_,x_,xmin_,xmax_,xstep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTop2sigXY.txt"}],Re[datatt2sigXY[ghtt,x,xmin,xmax,xstep]]/. {{_,0} ->Sequence[]}
,"Table"
]

tableTop1sigXYZ[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTop1sigXYZ.txt"}],Re[datatt1sigXYZ[ghtt,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. { {_,_,0}-> Sequence[]},"Table"
]

tableTop2sigXYZ[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Export[
FileNameJoin[{$UserDocumentsDirectory,"tableTop2sigXYZ.txt"}],Re[datatt2sigXYZ[ghtt,x,xmin,xmax,xstep,y, ymin,ymax,ystep]]/. {{_,_,0} ->Sequence[]}
,"Table"
]

(*tableTop1sigXYZ[ghtt[c\[Alpha],Ztt,1000],c\[Alpha],0,1,0.1,Ztt,0,10,1]*)

(*************************************************************************************************************************************************************************************)

kappaT2sig[ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTopINF2sig<=ktop[ghtt]<=kappaTopSUP2sig},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->60, FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Pink, Dashed, Thickness[0.003]]}, PlotStyle -> {{Pink, Opacity[0.3]}}, AspectRatio->1,PlotPoints->200]

Kt2sigWXYZ[
ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaT2sig[ghtt,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 1\[Sigma]*)

(*kappa top to 1\[Sigma]*)
kappaT1sig[ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaTopINF1sig<=ktop[ghtt]<=kappaTopSUP1sig},
 {x, xmin, xmax}, {y, ymin, ymax}
 ,PlotPoints->60, FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(t\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Pink, Dashed, Thickness[0.003]]}, PlotStyle -> {{Pink, Opacity[0.3]}}, AspectRatio->1]

Kt1sigWXYZ[
ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
kappaT1sig[ghtt,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];


Kt[
ghtt_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Kt1sigWXYZ[
ghtt,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Kt2sigWXYZ[
ghtt,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Kt*)

dataKt1sig[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTopINF1sig <= Kt[ghtt] <= kappaTopSUP1sig, Kt[ghtt],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKt2sig[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaTopINF2sig <= Kt[ghtt] <= kappaTopSUP2sig, Kt[ghtt],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Ktau*)

TableKt[ghtt_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKt_1sigma.txt"}],
Re[
dataKt1sig[ghtt,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKt_2sigma.txt"}],
Re[
dataKt2sig[ghtt,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(******************************************************************************************************************************************************)
(*********************************************************End Kappa top******************************************************************************)
(******************************************************************************************************************************************************)

End[]
