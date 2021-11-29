(* Wolfram Language Package *)

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon************************************************************************)
(***************************************************************************************************************************************************)
KGlu1sigX::usage = "KGlu1sigX"
KGlu2sigX::usage = "KGlu2sigX"
KappaGluGlu1sig::usage = "KappaGluGlu1sig"
KGlu1sigWXYZ::usage = "KGlu1sigWXYZ"
KappaGluGlu2sig::usage = "KappaGluGlu2sig"
KGlu2sigWXYZ::usage = "KGlu2sigWXYZ"
dataKGlu1sig::usage = "dataKGlu1sig"
dataKGlu2sig::usage = "dataKGlu2sig"

KGLUoneLHC::usage = "Type ?KGLUoneX for more details."

TableKGLUoneLHC::usage = "Type ?TableKGLUoneX for more details."

KGluLHC::usage = "Type ?KGluX for more details."

TableKGluLHC::usage = "Type ?TableKGluX for more details."

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon**************************************************************************)
(***************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotsKappaGluonLHC`Private`"]

(***************************************************************************************************************************************************)
(**********************************************************Begin kappa gluon**************************************************************************)
(***************************************************************************************************************************************************)
Individual process;
kappa gluon

(*kappa gluon to 1\[Sigma] in the case in which there is dependence in one parameter*)

KGlu1sigX[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP1sig,kappaGluonINF1sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[1\[Sigma]]", "L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#BACE29"],Opacity[0.75]}
]

(*kappa gluon to 2\[Sigma] in the case in which there is dependence in one parameter*)

KGlu2sigX[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{kgluglu[ghtt, ghbb],kappaGluonSUP2sig,kappaGluonINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)",
"U.L.[2\[Sigma]]", "L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->800,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)","SpaceMath"},
FrameStyle->Thickness[0.003],(*AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]},*)LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Red],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->1,Filling->{3->{2}},FillingStyle->{RGBColor["#BACE29"],Opacity[0.75]}
]

KGLUoneLHC[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:={
KGlu1sigX[ghtt,ghbb,x,xmin,xmax,xlabel],
KGlu2sigX[ghtt,ghbb,x,xmin,xmax,xlabel]
}

(*EXPORTING TABLES FOR KGLUone*)

TableKGLUoneLHC[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_1sigma_LHC.txt"}],Re[datagg1sigXYZ[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGLUone_2sigma_LHC.txt"}],Re[datagg2sigXYZ[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*To 1\[Sigma]*)

KappaGluGlu1sig[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF1sig<=kgluglu[ghtt,ghbb]<=kappaGluonSUP1sig},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#BACE29"],Opacity[0.75]}, AspectRatio->1]

KGlu1sigWXYZ[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu1sig[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*To 2\[Sigma]*)

KappaGluGlu2sig[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{kappaGluonINF2sig<=kgluglu[ghtt,ghbb]<=kappaGluonSUP2sig},
 {x, xmin, xmax}, {y, ymin, ymax}
,PlotPoints->PP , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{Style["\!\(\*SubscriptBox[\(\[Kappa]\), \(g\)]\)", Larger, Bold]}, {1, 0.5}],
 (*AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]},*) 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 1000,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, PlotStyle -> {RGBColor["#BACE29"],Opacity[0.75]}, AspectRatio->1]

KGlu2sigWXYZ[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
KappaGluGlu2sig[ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

KGluLHC[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
KGlu1sigWXYZ[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
KGlu2sigWXYZ[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*KappaGluon2sig[
ghtt[c\[Alpha],Ztt,u], ghbb[c\[Alpha],Zbb,u],Ztt,u,0,1,500,2000,Ztt,u,c\[Alpha],Zbb,0.9,1,0.005,0,1,0.2]*)

(*TABLES FOR KGlu*)

dataKGlu1sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF1sig<= kgluglu[ghtt,ghbb] <=kappaGluonSUP1sig,kgluglu[ghtt,ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataKGlu2sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    kappaGluonINF2sig<= kgluglu[ghtt,ghbb] <=kappaGluonSUP2sig,kgluglu[ghtt,ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR KGlu*)

TableKGluLHC[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_1sigma_LHC.txt"}],
Re[
dataKGlu1sig[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableKGlu_2sigma_LHC.txt"}],
Re[
dataKGlu2sig[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(***************************************************************************************************************************************************)
(**********************************************************End kappa gluon**************************************************************************)
(***************************************************************************************************************************************************)
End[] 