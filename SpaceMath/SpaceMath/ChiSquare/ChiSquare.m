(* Wolfram Language Package *)

(*THIS PROGRAM EVALUATE THE Chi Square*)


Chi2Rx::usage="Chi Square"


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
End[]
