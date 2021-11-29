

(* Definitions *)

FUpperLimit::usage ="F[\[Mu]_, \[Sigma]_, CL_, x1_, x2_]"
UpperLimit::usage = "UpperLimit[\[Mu]_, \[Sigma]_, CL_, x1_, x2_]-> This command evaluates the upper bound for a given mean (\[Mu]), standard deviation (\[Sigma]), and Confidence Level (CL). 
\[Mu] indicates the mean of the population, \[Sigma] is the standard deviation of the population, CL is the Confidence Level (in percent), x1 for an upper limit is specifically '-Infinity' and finally x2 is the same as \[Mu]."

(*
UpperLimit[\[Mu]_, \[Sigma]_, CL_, x1_, x2_]-> This command evaluates the upper bound for a given mean (\[Mu]), standard deviation (\[Sigma]), and Confidence Level (CL)
*)

(************************************************************************************************************************************************************************************************************************************************************************************************************************)

Begin["`Package`"]
End[]

Begin["`UPLimits`Private`"]
FUpperLimit[\[Mu]_, \[Sigma]_, CL_, x1_, x2_] := Integrate[1/(\[Sigma] Sqrt[2 \[Pi]]) Exp[-(1/2) ((x - \[Mu])/\[Sigma])^2], {x, x1, CL/100*x2}] // N;
 
UpperLimit[\[Mu]_, \[Sigma]_, CL_, x1_, x2_] := FUpperLimit[\[Mu], \[Sigma], CL, x1, x2];


End[]
