(* Wolfram Language Package *)
(***********************************************************************************************************************)
(****************************************Begin Li-lj_lj_lk Random********************************************************)
(***********************************************************************************************************************)

(***********************************************************************************************************************)
SalidaTau3Mu::usage="SalidaTau3Mu \[Rule] Output file \[Tau]->3\[Mu]"
SalidaMu3e::usage="SalidaMu3e \[Rule] Output file \[Mu]->3e"

(*This command generates a list which must invoked for a subsequently be ploted*)

(***********************************************************************************************************************)
(***********************************************************************************************************************)
(***********************************************************************************************************************)
Tau3Mu::usage="Tau3Mu[ghmumu_,ghtaumu_,gHmumu_,gHtaumu_,gAmumu_,gAtaumu_,mH_,mA_, x1_, x1min_, x1max_,
x2_, x2min_, x2max_, x3_, x3min_, x3max_, x4_, x4min_, x4max_, NN_] \[Rule] This command generates random points that agree with the \[Mu]AMDM measurements. The arguments ghtt and ghbb stand for the SM-like Higgs boson to top and bottom quarks couplings, respectively. While xi, with i= 1, 2, 3, 4, are the parameters to constraint and ximin-ximax represent the initial-final values of the interval to evaluate. Finally, NN represents the random points to generate. Here [[i]] indicates the confidence level: i=1 (2) at 1\[Sigma] (2\[Sigma]). The output file will be saved in $UserDocumentsDirectory."

Mu3e::usage="Mu3e[ghee_,ghmue_,gHee_,gHmue_,gAee_,gAmue_,mH_,mA_, x1_, x1min_, x1max_,
x2_, x2min_, x2max_, x3_, x3min_, x3max_, x4_, x4min_, x4max_, NN_]"
(***********************************************************************************************************************)
(***********************************************************************************************************************)
(***********************************************************************************************************************)

(*Command for plotting*)

(***********************************************************************************************************************)
(**********************************************\[Mu]AMDM*******************************************************************)
(***********************************************************************************************************************)
PlotTau3Mu::usage="PlotTau3Mu[ci_, cj_, xlabel_, ylabel_] \[Rule] This command generates a plot with random points that are in accordance with \[Mu]AMDM measurements on the ci-cj plane, where ci and cj stand for the column i and j, respectively; xlabel (ylabel) is used for indicates the X axis label (Y axis label)."
PlotMu3e::usage="PlotMu3e[ci_, cj_, xlabel_, ylabel_] \[Rule] This command generates a plot with random points that are in accordance with \[Mu]AMDM measurements on the ci-cj plane, where ci and cj stand for the column i and j, respectively; xlabel (ylabel) is used for indicates the X axis label (Y axis label)."
(***********************************************************************************************************************)
(****************************************End Li-lj_lj_lk Random********************************************************)
(***********************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`PlotmuonAMDM`Private`"]

(***********************************************************************************************************************)
(****************************************Begin Li-lj_lj_lk Random********************************************************)
(***********************************************************************************************************************)

(***********************************************************************************************************************)
SalidaTau3Mu = 
  OpenWrite[FileNameJoin[{$UserDocumentsDirectory, "Tau3Mu.txt"}], 
   PageWidth -> Infinity, FormatType -> OutputForm];
SalidaMu3e = 
  OpenWrite[FileNameJoin[{$UserDocumentsDirectory, "Mu3e.txt"}], 
   PageWidth -> Infinity, FormatType -> OutputForm];


(*This command generates a list which must invoked for a subsequently be ploted*)

(***********************************************************************************************************************)
(***********************************************************************************************************************)
(***********************************************************************************************************************)
Tau3Mu[ghmumu_,ghtaumu_,gHmumu_,gHtaumu_,gAmumu_,gAtaumu_,mH_,mA_, x1_, x1min_, x1max_,
x2_, x2min_, x2max_, x3_, x3min_, x3max_, x4_, x4min_, x4max_, NN_]:=
 {
 Do[
   {
    
    x1 = RandomReal[{x1min, x1max}],
    x2 = RandomReal[{x2min, x2max}],
    x3 = RandomReal[{x3min, x3max}],
    x4 = RandomReal[{x4min, x4max}],
    
    If[
     0<BRtauto3muons[ghmumu,ghtaumu,gHmumu,gHtaumu,gAmumu,gAtaumu,mH,mA]<BRTAUtoMUMUMU,
     Write[SalidaTau3Mu, 
  FortranForm[x1], " , ", FortranForm[x2], " , ", 
      FortranForm[x3], " , ", FortranForm[x4], " , ", 
      FortranForm[BRtauto3muons[ghmumu,ghtaumu,gHmumu,gHtaumu,gAmumu,gAtaumu,mH,mA]]], 0
     ]
    }, {n, NN}
   ]
}
(***********************************************************************************************************************)
(***********************************************************************************************************************)
(***********************************************************************************************************************)
Mu3e[ghee_,ghmue_,gHee_,gHmue_,gAee_,gAmue_,mH_,mA_, x1_, x1min_, x1max_,
x2_, x2min_, x2max_, x3_, x3min_, x3max_, x4_, x4min_, x4max_, NN_]:=
 {
 Do[
   {
    
    x1 = RandomReal[{x1min, x1max}],
    x2 = RandomReal[{x2min, x2max}],
    x3 = RandomReal[{x3min, x3max}],
    x4 = RandomReal[{x4min, x4max}],
    
    If[
     0<BRmuto3electrons[ghee,ghmue,gHee,gHmue,gAee,gAmue,mH,mA]<BRMUtoEEE,
     Write[SalidaMu3e, 
  FortranForm[x1], " , ", FortranForm[x2], " , ", 
      FortranForm[x3], " , ", FortranForm[x4], " , ", 
      FortranForm[BRmuto3electrons[ghee,ghmue,gHee,gHmue,gAee,gAmue,mH,mA]]], 0
     ]
    }, {n, NN}
   ]
}

(*Command for plotting*)

(***********************************************************************************************************************)
(**********************************************\[Tau]->3\[Mu]*******************************************************************)
(***********************************************************************************************************************)

PlotTau3Mu[ci_, cj_, xlabel_, ylabel_] := 
ListPlot[Import[FileNameJoin[{$UserDocumentsDirectory, "Tau3Mu.txt"}], "CSV"][[All, {ci, cj}]],
  Frame -> True,
  PlotStyle -> {Blue, Opacity[1]},
  FrameLabel -> {Style[xlabel, Larger, Bold], 
       Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}(*,
   AxesLabel -> {Style["x", Larger, Bold], 
     Style["y", Larger, Bold],Style["z", Larger, Bold]}*), 
   FrameStyle ->  Thickness[0.004], LabelStyle -> 35, 
  ImageSize -> 800,
    GridLines -> Automatic, 
  GridLinesStyle ->    Directive[Black, Dashed],
  (*PlotMarkers->{{\[FilledUpTriangle],3}},*) 
  PlotRange -> Full(*,
PlotLegends -> 
 Placed[{Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
    Bold]}, {1, 0.6}]*),AspectRatio->1
  ]
(***********************************************************************************************************************)
(**********************************************\[Mu]->3e*******************************************************************)
(***********************************************************************************************************************)

PlotMu3e[ci_, cj_, xlabel_, ylabel_] := 
ListPlot[Import[FileNameJoin[{$UserDocumentsDirectory, "Mu3e.txt"}], "CSV"][[All, {ci, cj}]],
  Frame -> True,
  PlotStyle -> {Red, Opacity[1]},
  FrameLabel -> {Style[xlabel, Larger, Bold], 
       Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}(*,
   AxesLabel -> {Style["x", Larger, Bold], 
     Style["y", Larger, Bold],Style["z", Larger, Bold]}*), 
   FrameStyle ->  Thickness[0.004], LabelStyle -> 35, 
  ImageSize -> 800,
    GridLines -> Automatic, 
  GridLinesStyle ->    Directive[Black, Dashed],
  (*PlotMarkers->{{\[FilledUpTriangle],3}},*) 
  PlotRange -> Full(*,
PlotLegends -> 
 Placed[{Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
    Bold]}, {1, 0.6}]*),AspectRatio->1
  ]

(***********************************************************************************************************************)
(****************************************End Li-lj_lj_lk Random********************************************************)
(***********************************************************************************************************************)

End[]