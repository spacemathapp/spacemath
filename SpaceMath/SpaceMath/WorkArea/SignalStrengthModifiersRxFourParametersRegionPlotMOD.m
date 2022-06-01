(* MENU *)
(*Signal strength modifiers Rx *)
(* FOUR PARAMETERS *)

WinRWsubMOD[]:=
Panel[
DynamicModule[
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghWWcode = Hold[ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gw*mW*x6],
  		 x5code = Hold[x5[x1_,x2_,x3_,x4_] = ArcCos[x1]+ArcTan[x2]],
	       x6code = Hold[x6[x1_,x2_,x3_,x4_] = Sqrt[1-x1^2]], 
	       x7code = Hold[x7[x1_,x2_,x3_,x4_] = 0],
	       (*
  		 x5code = Hold[x5[x1_,x2_,x3_,x4_] := ArcCos[x1]+ArcTan[x2]],
	       x6code = Hold[x6[x1_,x2_,x3_,x4_] := Sqrt[1-x1^2]], 
	       x7code = Hold[x7[x1_,x2_,x3_,x4_] := 0], t0[x1_,x2_,x3_,x4_]
	       *)
	       (*
	       x5= ArcCos[x1]+ArcTan[x2], 
	       x6= Sqrt[1-x1^2],
	       x7= 0, 
	       *)
		   x1min = -1, 
		   x1max = 1,
		   x2min = 1,
		   x2max = 40,
		   x1label = Subscript[c,\[Alpha]\[Beta]],
		   x2label = Subscript[t,\[Beta]],
		   x3min = 0,
		   x3max = 1,
		   x3step = 0.1,
		   x4min = 0,
		   x4max = 1,
		   x4step = 0.1,
		   PP = 20, 
	       SMsigma = 1,
	       LabelXX1 = LabelXX,
	       x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn4 = (ghWWcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fnx5 = (x5code = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fnx6 = (x6code = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fnx7 = (x7code = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(W\)], TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["RW",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                        
                                   ],                                                                                                                     
                                   Item[FigRW = Dynamic[RW[ghtt[x1,x2,x3,x4,Part[Flatten[x5 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x6 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x7 @@@ {{x1,x2,x3,x4}}],1]],ghbb[x1,x2,x3,x4,Part[Flatten[x5 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x6 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x7 @@@ {{x1,x2,x3,x4}}],1]],ghWW[x1,x2,x3,x4,Part[Flatten[x5 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x6 @@@ {{x1,x2,x3,x4}}],1],Part[Flatten[x7 @@@ {{x1,x2,x3,x4}}],1]],x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRW],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRW[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]
                                   },
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghWWcode, fn4], Hold[Expression],ImageSize->{500,50}],Style["ghWW",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},  
                                  {"",Item[Labeled[InputField[Dynamic[x5code, fnx5], Hold[Expression],ImageSize->{500,50}],Style["x5",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],SpanFromLeft,""},
                                  {"",Item[Labeled[InputField[Dynamic[x6code, fnx6], Hold[Expression],ImageSize->{500,50}],Style["x6",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],SpanFromLeft,""},
                                  {"",Item[Labeled[InputField[Dynamic[x7code, fnx7], Hold[Expression],ImageSize->{500,50}],Style["x7",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},  
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ], 
                Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn4[ghWWcode], fnx5[x5code], fnx6[x6code], fnx7[x7code]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
];

WinRZsubMOD[]:=
Panel[
DynamicModule[
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghZZcode = Hold[ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gz*mZ*x6],
	       x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = Sqrt[1-x1^2],
	       x7 = 0,
           x1min = -1,
           x1max = 1,
           x2min = 1,
           x2max = 40, 
           x1label = Subscript[c,\[Alpha]\[Beta]], 
           x2label = Subscript[t,\[Beta]],  
           x3min = 0,
           x3max = 1,
           x3step = 0.1,
           x4min = 0,
           x4max = 1,
           x4step = 0.1,
           PP = 40,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn5 = (ghZZcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[                                             
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(Z\)], TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["RZ",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }
                                   ],                                                                                                             
                                   Item[FigRZ = Dynamic[RZ[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghZZ[x1,x2,x3,x4,x5,x6,x7],x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRZone],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRZ[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghZZ[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["1/3 width",FontFamily ->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], SetOptions[SelectedNotebook[], WindowSize -> {Scaled[1/3], Scaled[.98]}, WindowMargins -> {{0, Automatic}, {Automatic, 0}}], BaseStyle -> {"GenericButton", 10}, Background->RGBColor["#6EA240"],ImageSize->{140,50}]
                                    }]
                                   },
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghZZcode, fn5], Hold[Expression],ImageSize->{500,50}],Style["ghZZ",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn5[ghZZcode]}
      		]
      	   ]
     	  ], Background->Lighter[White, 0.85]
];

WinRGamSubMOD[]:=
Panel[
DynamicModule[
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghWWcode = Hold[ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gw*mW*x6], 
	       x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = Sqrt[1-x1^2],
	       x7 = 0,  
	       gCH = 0.1,
	       mCH = 1000,      
           x1min = -1,
           x1max = 1,
           x2min = 1,
           x2max = 40, 
           x1label = Subscript[c,\[Alpha]\[Beta]], 
           x2label = Subscript[t,\[Beta]],  
           x3min = 0,
           x3max = 1,
           x3step = 0.1,
           x4min = 0,
           x4max = 1,
           x4step = 0.1,
           PP = 40,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn4 = (ghWWcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
   	                 Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(\(\[Gamma]\)\(\\\ \)\)],TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["RGAM",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[gCH]], Style["gCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[mCH]], Style["mCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                      
                                   ],                                                                                                     
                                   Item[FigRGam = Dynamic[RGam[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],gCH,mCH,x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRGam],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRGam[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],gCH,mCH,x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]                                                                                                                   
                                   },                                                                                                                  
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghWWcode, fn4], Hold[Expression],ImageSize->{500,50}],Style["ghWW",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn4[ghWWcode]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
]

WinRbsubMOD[]:=
Panel[
DynamicModule[
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = Sqrt[1-x1^2],
	       x7 = 0,  
           x1min = -1,
           x1max = 1,
           x2min = 1,
           x2max = 20, 
           x1label = Subscript[c,\[Alpha]\[Beta]], 
           x2label = Subscript[t,\[Beta]],  
           x3min = 0,
           x3max = 1,
           x3step = 0.1,
           x4min = 0,
           x4max = 1,
           x4step = 0.1,
           PP = 40,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(b\)], TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["Rb",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                     
                                   ],                         
                                   Item[FigRb = Dynamic[Rb[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRb],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRb[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]                                                                                                                                                                                      
                                   },                                                                                                                   
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
]

WinRtausubMOD[]:=
Panel[
DynamicModule[
	      {     
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghtautaucode = Hold[ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mtau/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mtau)*(mtau/vev*x3)))],
	       x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = 0,
	       x7 = 0,  
           x1min = -1,
           x1max = 1,
           x2min = 1,
           x2max = 20, 
           x1label = LabelX, 
           x2label = LabelY,  
           x3min = 0,
           x3max = 1,
           x3step = 0.1,
           x4min = 0,
           x4max = 1,
           x4step = 0.1,
           PP = 40,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn3 = (ghtautaucode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(\[Tau]\)],TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["Rtau",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                      
                                   ],                                                                      
                                   Item[FigRtau = Dynamic[Rtau[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghtautau[x1,x2,x3,x4,x5,x6,x7],x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x4step,x4min,x4max,x4step,PP][[SMsigma]] ],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRtau],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRtau[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghtautau[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]                                                                                                                   
                                   },                                                                                                                   
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Style[""], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghtautaucode, fn3], Hold[Expression],ImageSize->{500,50}],Style["ghtautau",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn3[ghtautaucode]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
];

WinPlotRXALLsubMOD[]:=
Panel[
DynamicModule[              
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghZZcode = Hold[ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gz*mZ*x6],
  		 ghWWcode = Hold[ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gw*mW*x6],
  		 ghtautaucode = Hold[ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mtau/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mtau)*(mtau/vev*x3)))],
	       x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = Sqrt[1-x1^2],
	       x7 = 0,     
           gCH = 0,
           mCH = 1000,  
           x1min = -1,
           x1max = 1,
           x2min = 0.1,
           x2max = 50,
           x1label = Subscript[c,\[Alpha]\[Beta]],
           x2label = Subscript[t,\[Beta]], 
           x3min = 0.9,
           x3max = 1,
           x3step = 0.1,
           x4min = 0.9,
           x4max = 1,
           x4step = 0.1,
           PP = 20,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn3 = (ghtautaucode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn4 = (ghWWcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn5 = (ghZZcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers ",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["RXALL",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[gCH]], Style["gCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[mCH]], Style["mCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                       
                                   ],                                                      
                                   Item[FigRXALL = Dynamic[RXALL[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghZZ[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],ghtautau[x1,x2,x3,x4,x5,x6,x7],gCH,mCH,x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRXALL],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRW[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]                                                                                                                                                                                        
                                   },
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghWWcode, fn4], Hold[Expression],ImageSize->{500,50}],Style["ghWW",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghZZcode, fn5], Hold[Expression],ImageSize->{500,50}],Style["ghZZ",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghtautaucode, fn3], Hold[Expression],ImageSize->{500,50}],Style["ghtautau",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn3[ghtautaucode],fn4[ghWWcode],fn5[ghZZcode]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
];

WinRXintersectionsubMOD[]:=
Panel[
DynamicModule[
	      {
	       ghttcode = Hold[ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_] :=(g/2) (mt/mW) ((Cos[x5]/(x2*Cos[ArcTan[x2]])) - (Sqrt[2] x1/(g*x2*Cos[ArcTan[x2]]) (mW/mt)*(mt/vev*x3)))],
  		 ghbbcode = Hold[ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mb/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mb)*(mb/vev*x4)))],
  		 ghZZcode = Hold[ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gz*mZ*x6],
  		 ghWWcode = Hold[ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := gw*mW*x6],
  		 ghtautaucode = Hold[ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_] := (g/2) (mtau/mW) (((-Sin[x5]*x2)/Sin[ArcTan[x2]]) + (Sqrt[2] (x1*x2)/(g*Sin[ArcTan[x2]]) (mW/mtau)*(mtau/vev*x3)))],
	       x5 = ArcCos[x1]+ArcTan[x2], 
	       x6 = Sqrt[1-x1^2],
	       x7 = 0,     
           gCH = 0,
	       mCH = 1000, 
           x1min = -1,
           x1max = 1,
           x2min = 0.1,
           x2max = 50,
           x1label = Subscript[c,\[Alpha]\[Beta]],
           x2label = Subscript[t,\[Beta]], 
           x3min = 0.9,
           x3max = 1,
           x3step = 0.1,
           x4min = 0.9,
           x4max = 1,
           x4step = 0.1,
           PP = 20,
           SMsigma = 2,
           x1step = 0.5,
	       x2step = 1
	      },
  	      With[
  	           {
  	            fn1 = (ghttcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn2 = (ghbbcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn3 = (ghtautaucode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn4 = (ghWWcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &,
  	            fn5 = (ghZZcode = #;ReleaseHold[# /. RuleDelayed -> SetDelayed]) &
  	           }, 
   	       Manipulate[
   	         Dynamic[
                        Panel[Grid[
                                 {  
                                  {Item[Style["LHC Higgs boson data  - Signal strength modifiers \!\(\*FormBox[SubscriptBox[\(R\), \(intersection\)], TraditionalForm]\)",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Item[Style["RXintersection",FontFamily->"League Gothic",FontSize -> 30, FontColor -> White, FontWeight -> "Light"], Background->RGBColor["#3A7486"], Alignment -> {Center, Center}],SpanFromLeft,SpanFromLeft,SpanFromLeft},
                                  {Column[
                                   {
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Style["   Enter parameters values",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x5]], Style["x5",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x6]], Style["x6",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x7]], Style["x7",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[gCH]], Style["gCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[mCH]], Style["mCH",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1min]], Style["x1min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]], 
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1max]], Style["x1max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2min]], Style["x2min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2max]], Style["x2max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1label]], Style["x1label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2label]], Style["x2label",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3min]], Style["x3min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3max]], Style["x3max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x3step]], Style["x3step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4min]], Style["x4min",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4max]], Style["x4max",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x4step]], Style["x4step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[PP]], Style["PP",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[SMsigma]], Style["\[Sigma]",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x1step]], Style["x1step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item[Labeled[InputField[Dynamic[x2step]], Style["x2step",FontFamily->"League Gothic",FontSize -> 23, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]],
                                    Item["", Background -> RGBColor["#3E3571"]]
                                   }                       
                                   ],                                                                                                                                                                                                                     
                                   Item[FigRXintersection = Dynamic[RXintersection[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghZZ[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],ghtautau[x1,x2,x3,x4,x5,x6,x7],gCH,mCH,x1,x2,x1min,x1max,x2min,x2max,x1label,x2label,x3,x4,x3min,x3max,x3step,x4min,x4max,x4step,PP][[SMsigma]]],Frame -> False,Background -> RGBColor["#FFFFFF"]],
                                   SpanFromLeft,
                                   Column[
                                    {Hyperlink[Button[Style["Documentation Center", FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}, Method -> "Queued"], "paclet:SpaceMath/tutorial/SpaceMathOverview"], 
                                     DisplayForm@ButtonBox[Style["Examples",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], ButtonFunction :> SystemOpen[FileNameJoin[{$SpaceMathDirectory, "Examples"}]], Evaluator -> Automatic, Method -> "Preemptive", Appearance -> "DialogBox", Background -> RGBColor["#6EA240"], ImageSize -> {140, 50}], 
                                     Button[Style["Figure",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Export[SystemDialogInput["FileSave","untitled"],FigRXintersection],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"],
                                     Button[Style["Table",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"],Dynamic[TableRW[ghtt[x1,x2,x3,x4,x5,x6,x7],ghbb[x1,x2,x3,x4,x5,x6,x7],ghWW[x1,x2,x3,x4,x5,x6,x7],x1,x1min,x1max,x1step,x2,x2min,x2max,x2step]],Background->RGBColor["#6EA240"],ImageSize->{140,50},Method->"Queued"]
                                    }]
                                   },
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["Enter couplings",FontFamily->"League Gothic",FontSize -> 25, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtt[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghWW[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghttcode, fn1], Hold[Expression],ImageSize->{500,50}],Style["ghtt",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghWWcode, fn4], Hold[Expression],ImageSize->{500,50}],Style["ghWW",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghbb[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item[Style["ghZZ[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghbbcode, fn2], Hold[Expression],ImageSize->{500,50}],Style["ghbb",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item[Labeled[InputField[Dynamic[ghZZcode, fn5], Hold[Expression],ImageSize->{500,50}],Style["ghZZ",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""},
                                  {"",Item[Style["ghtautau[x1_,x2_,x3_,x4_,x5_,x6_,x7_]",FontFamily->"League Gothic",FontSize -> 15, FontColor -> White, FontWeight -> "Light"], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Labeled[InputField[Dynamic[ghtautaucode, fn3], Hold[Expression],ImageSize->{500,50}],Style["ghtautau",FontFamily->"League Gothic",FontSize -> 20, FontColor -> White, FontWeight -> "Light"], Left], Background -> RGBColor["#B83451"]],Item["", Background -> RGBColor["#B83451"]],""},
                                  {"",Item[Style[""], Background -> RGBColor["#B83451"]],SpanFromLeft,""}
                                 }, Frame -> None,Alignment -> {Left, Center},Background->RGBColor["#3A7486"]], Background->RGBColor["#3A7486"]]
                         ],
      		 Initialization :> {fn1[ghttcode],fn2[ghbbcode],fn4[ghWWcode]}
      		] 
      	   ]
     	  ], Background->Lighter[White, 0.85]
];