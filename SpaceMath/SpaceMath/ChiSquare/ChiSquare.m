(* Wolfram Language Package *)

(*THIS PROGRAM EVALUATE THE Chi Square*)


Chi2Rx::usage="Chi Square"
Chi2Rx95::usage="Chi2Rx95"
Chi2Rx68::usage="Chi2Rx68"
(************************************************************************************************************************************************************************************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`ChiSquare`Private`"]

Chi2Rx[ghtt_, ghbb_, ghtautau_, ghZZ_, ghWW_, gCH_, 
  mCH_] := ((Rbb - Rbotbot[ghtt, ghbb])^2/
  StandardDeviation[{Rbb, Rtautau, Rzz, Rww, 
    Rgammagamma}]) + ((Rtautau - Rtata[ghtt, ghbb, ghtautau])^2/
  StandardDeviation[{Rbb, Rtautau, Rzz, Rww, Rgammagamma}]) +
  ((Rzz - RZZ[ghtt, ghbb, ghZZ])^2/
  StandardDeviation[{Rbb, Rtautau, Rzz, Rww, 
    Rgammagamma}]) + ((Rww - RWW[ghtt, ghbb, ghWW])^2/
  StandardDeviation[{Rbb, Rtautau, Rzz, Rww, 
    Rgammagamma}]) + ((Rgammagamma - 
     Rgaga[ghtt, ghbb, ghWW, gCH, mCH])^2/
  StandardDeviation[{Rbb, Rtautau, Rzz, Rww, Rgammagamma}])  

(************************************************************************************************************************************************************************************************************************************************************************************************************************)

Chi2Rx95[ghtt_, ghbb_, ghtautau_, ghZZ_, ghWW_, gCH_, mCH_, Cba_,tb_] := 
 RegionPlot[
  Chi2Rx[ghtt, ghbb, ghtautau, ghZZ, ghWW, 0, 2000] < 
   11.070, {Cba, -1, 1}, {tb, 0.1, 50}(*,PlotPoints\[Rule]500*), 
  PlotStyle -> Blue, Frame -> True, 
   FrameLabel -> {Style["cos(\[Beta]-\[Alpha])", Larger, Bold], 
       Style["tan\[Beta]", Larger, Bold]}, 
   FrameStyle -> Thickness[0.003], 
   AxesLabel -> {Style["x", Larger, Bold, Bold], 
       Style["y", Larger, Bold, Bold]}, LabelStyle -> 30, 
  ImageSize -> 600, PlotLegends -> Placed[{"95% C.L."}, {0.2, 0.1}], 
  BoundaryStyle -> Blue, PlotPoints -> 100]
  
(**********************************************************************************************************************************************************************************************************************************************************************************************************************)  

Chi2Rx68[ghtt_, ghbb_, ghtautau_, ghZZ_, ghWW_, gCH_, mCH_, Cba_,tb_] := 
 RegionPlot[
  Chi2Rx[ghtt, ghbb, ghtautau, ghZZ, ghWW, 0, 2000] < 3.53, {Cba, -1, 
   1}, {tb, 0.1, 50}, PlotPoints -> 100, PlotStyle -> Green, 
  Frame -> True, 
   FrameLabel -> {Style["cos(\[Beta]-\[Alpha])", Larger, Bold], 
       Style["tan\[Beta]", Larger, Bold]}, 
   FrameStyle -> Thickness[0.003], 
   AxesLabel -> {Style["x", Larger, Bold, Bold], 
       Style["y", Larger, Bold, Bold]}, LabelStyle -> 30, 
  ImageSize -> 600, 
  PlotLegends -> Placed[{"68% C.L."(*1\[Sigma]*)}, {0.2, 0.2}], 
  BoundaryStyle -> Green]

(**********************************************************************************************************************************************************************************************************************************************************************************************************************)  
End[]
