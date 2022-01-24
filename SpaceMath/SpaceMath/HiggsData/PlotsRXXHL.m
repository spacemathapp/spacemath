(* Wolfram Language Package *)
(******************************************************************************************************************************************************)
(*********************************************************Begin OF RGamma-HL************************************************************************************)
(******************************************************************************************************************************************************)
RGAMoneHL::usage = "\!\(\*
StyleBox[\"RGAMone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghWW_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"gCH_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"mCH_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xlabel_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"i\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule] This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\) when there is dependence only on one parameter. The arguments ghtt, ghbb, ghWW and gCH are the htt, hbb, hWW and h\!\(\*SuperscriptBox[\(H\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\) \
couplings. Here, h represents to SM-like Higgs boson, t and b the top and bottom quarks, \!\(\*SuperscriptBox[\(H\), \(-\)]\) the charged scalar boson. Labels mCH and x \
indicate the charged scalar mass and the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xlabel is used \
for indicates the X axis label. Finally, [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma])."

TableRGAMoneHL::usage="\!\(\*
StyleBox[\"TableRGAMone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghWW_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"gCH_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"mCH_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xstep_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule] This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\). The arguments ghtt, ghbb, ghWW, gCH and mCH are the htt \
, hbb, hWW, \!\(\*SuperscriptBox[\(hH\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\) couplings, while mCH is the charged scalar boson mass that could to contributes to the process. Here, h represents to SM-like Higgs boson while t and b the top and bottom quarks. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xstep is used \
to indicates the steps from xmin to xmax. The output file will be saved in $UserDocumentsDirectory."

RGamHL::usage="RGam[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_][[i]]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\) \
when there is dependence on two or more parameters. The arguments ghtt, ghbb, ghWW and gCH are the htt, hbb, hWW and h\!\(\*SuperscriptBox[\(H\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\)\
couplings while mCH stands for the charged scalar boson mass. Here, h represents to SM-like Higgs boson while t and b the top and bottom querkas. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRGamHL::usage="TableRGam[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]\[Rule] 
This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\). The arguments ghtt, ghbb, ghWW and gCH are the htt, \
hbb, hWW and h-\!\(\*SuperscriptBox[\(H\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\) couplings. Here, h represents to SM-like Higgs boson while t and b the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users and xstep (ystep) is used \
to indicates the steps from xmin to xmax (ymin to ymax). The output file will be saved in $UserDocumentsDirectory."
(******************************************************************************************************************************************************)
(*********************************************************END OF RGamma************************************************************************************)
(******************************************************************************************************************************************************)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF RTau************************************************************************************)
(******************************************************************************************************************************************************)
RTAUoneHL::usage = "\!\(\*
StyleBox[\"RTAUone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtautau_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xlabel_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"i\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule]  \
This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)\ when there is dependence only on one parameter. The arguments ghtt, ghbb and ghtautau are the htt,\ hbb and htautau couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks and tau stands for tau-lepton. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xlabel is used \
for indicates the X axis label. Finally, [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma])."

TableRTAUoneHL::usage="\!\(\*
StyleBox[\"TableRTAUone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtautau_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xstep_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule] This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\). The arguments ghtt, ghbb and ghtautau are the htt, \
hbb and htautau couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks and tau stands for tau-lepton. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xstep is used \
to indicates the steps from xmin to xmax. The output file will be saved in $UserDocumentsDirectory."

RtauHL::usage="Rtau[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_][[i]]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\), \
when there is dependence on two or more parameters. The arguments ghtt, ghbb and ghtautau are the htt, hbb \
and htautau couplings. Here, h represents to SM-like Higgs boson while t, b and tau are the top and bottom quarks and the tau-lepton. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRtauHL::usage="TableRtau[ghtt_, ghbb_,ghtautau_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, ystep_]\[Rule] 
This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\). The arguments ghtt, ghbb and ghtautau are the htt, \
hbb and htautau couplings. Here, h represents to SM-like Higgs boson while t, b and tau are the top and bottom quarks and the tau-lepton. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users and xstep (ystep) is used \
to indicates the steps from xmin to xmax (ymin to ymax). The output file will be saved in $UserDocumentsDirectory."
(******************************************************************************************************************************************************)
(*********************************************************End OF RTau************************************************************************************)
(******************************************************************************************************************************************************)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF RBottom************************************************************************************)
(******************************************************************************************************************************************************)
RBOToneHL::usage = "\!\(\*
StyleBox[\"RBOTone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xlabel_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"i\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule]  \
This command evaluates \!\(\*SubscriptBox[\(R\), \(b\)]\)\ when there is dependence only on one parameter. The arguments ghtt, ghbb are the htt \
and hbb couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xlabel is used \
for indicates the X axis label. Finally, [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma])."

TableRBOToneHL::usage="\!\(\*
StyleBox[\"TableRBOTone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xstep_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule] This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(b\)]\). The arguments ghtt and ghbb are the htt \
and hbb couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xstep is used \
to indicates the steps from xmin to xmax. The output file will be saved in $UserDocumentsDirectory."

RbHL::usage="Rb[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(b\)]\), \
when there is dependence on two or more parameters. The arguments ghtt and ghbb are the htt, hbb \
couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRbHL::usage="TableRb[ghtt_, ghbb_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, ystep_]\[Rule] 
This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(b\)]\). The arguments ghtt, ghbb are the htt, \
hbb couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users and xstep (ystep) is used \
to indicates the steps from xmin to xmax (ymin to ymax). The output file will be saved in $UserDocumentsDirectory."
(******************************************************************************************************************************************************)
(*********************************************************End OF RBottom************************************************************************************)
(******************************************************************************************************************************************************)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF RXALL************************************************************************************)
(*****************************************************************************************************************************************************)

RXALLHL::usage="RXALL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, PP_][[i]]\[Rule] 
This command evaluates all signal strengths, \
when there is dependence on two or more parameters. The arguments ghtt, ghbb, ghZZ, ghWW, ghtautau and gCH are the htt, hbb, \
hZZ, hWW, htautau and \!\(\*SuperscriptBox[\(hH\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\) couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks; V=Z, W are the gauge bosons, tau is the tau lepton and \!\(\*SuperscriptBox[\(H\), \(-\)]\) is a charged scalar boson. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively; mCH stands for the charged scalar boson. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

(******************************************************************************************************************************************************)
(*********************************************************End OF RXALL************************************************************************************)
(*****************************************************************************************************************************************************)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF RXIntersection************************************************************************************)
(*****************************************************************************************************************************************************)
RXintersectionHL::usage="RXintersection[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]\[Rule] 
This command evaluates the intersection of all signal strengths, \
when there is dependence on two or more parameters. The arguments ghtt, ghbb, ghZZ, ghWW, ghtautau and gCH are the htt, hbb, \
hZZ, hWW, htautau and \!\(\*SuperscriptBox[\(hH\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\) couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks; V=Z, W are the gauge bosons, tau is the tau lepton and \!\(\*SuperscriptBox[\(H\), \(-\)]\) is a charged scalar boson. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively; mCH stands for the charged scalar boson. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."
(******************************************************************************************************************************************************)
(*********************************************************End OF RXIntersection************************************************************************************)
(*****************************************************************************************************************************************************)

(*********************************************************************************************
*******************************All signal strenghts*************************************************************
*********************************************************************************************)
RXALL1sigHL::usage ="RXALL1sigHL"

RXALL2sigHL::usage ="RXALL2sigHL"

RZ1sigXHL::usage ="RZ1sigXHL"

RZ2sigXHL::usage ="RZ2sigXHL"

RZoneHL::usage ="RZoneHL"

(*TABLES FOR RVone*)
dataRZone1sigHL::usage ="dataRZone1sigHL"
dataRZone2sigHL::usage ="dataRZone2sigHL"

(*EXPORTING TABLES FOR RVone*)
TableRZoneHL::usage ="TableRZoneHL"

(*RZ to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]ZZ*)
RZ2sigHL::usage ="RZ2sigHL"
RZ2sigWXYZHL::usage ="RZ2sigWXYZHL"

(*RZ to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]ZZ*)
RZ1sigHL::usage ="RZ1sigHL"
RZ1sigWXYZHL::usage ="RZ1sigWXYZHL"
RZHL::usage ="RZHL"

(*TABLES FOR RZ*)
dataRZ1sigHL::usage ="dataRZ1sigHL"
dataRZ2sigHL::usage ="dataRZ2sigHL"

(*EXPORTING TABLES FOR RZ*)
TableRZHL::usage ="TableRZHL"

(* Individual process *)
(* R W *)
(*R W to 1\[Sigma] in the case in which there is dependence in one parameter*)
RW1sigXHL::usage ="RW1sigXHL"

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)
RW2sigXHL::usage ="RW2sigXHL"
RWoneHL::usage ="RWoneHL"

(*TABLES FOR RWone*)
dataRWone1sigHL::usage ="dataRWone1sigHL"
dataRWone2sigHL::usage ="dataRWone2sigHL"

(*EXPORTING TABLES FOR RVone*)
TableRWoneHL::usage ="TableRWoneHL"

(*RW to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]WW*)
RW2sigHL::usage ="RW2sigHL"
RW2sigWXYZHL::usage ="RW2sigWXYZHL"

(*RW to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]WW*)
RW1sigHL::usage ="RW1sigHL"
RW1sigWXYZHL::usage ="RW1sigWXYZHL"
RWHL::usage ="RWHL"

(*TABLES FOR RW*)
dataRW1sigHL::usage ="dataRW1sigHL"
dataRW2sigHL::usage ="dataRW2sigHL"

(*EXPORTING TABLES FOR RZ*)
TableRWHL::usage ="TableRWHL"

(* Individual process *)
(* R Gamma *)
(*R Gamma to 1\[Sigma] in the case in which there is dependence in one parameter*)
RGam1sigXHL::usage ="RGam1sigXHL"

(*R gamma to 2\[Sigma] in the case in which there is dependence in one parameter*)
RGam2sigXHL::usage ="RGam2sigXHL"


(*TABLES FOR RGAMone*)
dataRGAMone1sigHL::usage ="dataRGAMone1sigHL"
dataRGAMone2sigHL::usage ="dataRGAMone2sigHL"

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]\[Gamma]\[Gamma]*)
Rgam2sigHL::usage ="Rgam2sigHL"
RGam2sigWXYZHL::usage ="RGam2sigWXYZHL"

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]\[Gamma]\[Gamma]*)
Rgam1sigHL::usage ="Rgam1sigHL"
RGam1sigWXYZHL::usage ="RGam1sigWXYZHL"

(*R gamma to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(* Individual process *)
(* R botton *)
(*************************************************************************************************************************************************************************************)
(*R bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)
Rb1sigXHL::usage ="Rb1sigXHL"

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)
Rb2sigXHL::usage ="Rb2sigXHL"

(*TABLES FOR RBOTone*)
dataRBOTone1sigHL::usage ="dataRBOTone1sigHL"
dataRBOTone2sigHL::usage ="dataRBOTone2sigHL"

(* Individual process *)
(* R tau *)
(*R tau to 1\[Sigma] in the case in which there is dependence in one parameter*)
Rtau1sigXHL::usage ="Rtau1sigXHL"

(*R tau to 2\[Sigma] in the case in which there is dependence in one parameter*)
Rtau2sigXHL::usage ="Rtau2sigXHL"

(*TABLES FOR RTAUone*)
dataRTAUone1sigHL::usage ="dataRTAUone1sigHL"
dataRTAUone2sigHL::usage ="dataRTAUone2sigHL"

Intersection2sigRXXHL::usage ="Intersection2sigRXXHL"
Intersection1sigRXXHL::usage ="Intersection1sigRXXHL"
(*********************************************************************************************************************)
RXALL1sigINTHL::usage ="RXALL1sigINTHL"
RXALL1INTHL::usage ="RXALL1INTHL"
RXALL2sigINTHL::usage ="RXALL2sigINTHL"
RXALL2INTHL::usage ="RXALL2INTHL"
RXALLINTHL::usage ="RXALLINTHL"
(*********************************************************************************************************************)
(* ------------------------------------------------------------------------ *)

Begin["`Package`"]
End[]

Begin["`PlotsRXXHL`Private`"]

(*********************************************************************************************
*******************************All signal strenghts*************************************************************
*********************************************************************************************)

RXALL1sigHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL, 
 RtautauINF1sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sigHL, 
   RwwINF1sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sigHL, 
     RzzINF1sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sigHL, 
       RgammagammaINF1sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, PlotLegends -> 
 Placed[{Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
    Bold], Style["\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)", 
    Larger, Bold], 
   Style["\!\(\*SubscriptBox[\(R\), \(W\)]\)", Larger, Bold], 
   Style["\!\(\*SubscriptBox[\(R\), \(Z\)]\)", Larger, Bold], Style["\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)", Larger, Bold]}, {1, 
   0.6}], 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Green, Dashed, Thickness[0.003]], 
  2 -> Directive[Pink, Dashed, Thickness[0.003]], 
  3 -> Directive[Yellow, Dashed, Thickness[0.003]], 
  4 -> Directive[Blue, Dashed, Thickness[0.003]], 
  5 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {{Green, Opacity[0.3]}, {Pink, Opacity[0.3]}, {Yellow, 
   Opacity[0.3]}, {Blue, Opacity[0.3]}, {Orange, Opacity[0.3]}},PlotPoints->PP]


RXALL1HL[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RXALL1sig[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXALL2sigHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL, 
 RtautauINF2sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sigHL, 
   RwwINF2sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sigHL, 
     RzzINF2sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sigHL, 
       RgammagammaINF2sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, PlotLegends -> 
 Placed[{Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
    Bold], Style["\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)", 
    Larger, Bold], 
   Style["\!\(\*SubscriptBox[\(R\), \(W\)]\)", Larger, Bold], 
   Style["\!\(\*SubscriptBox[\(R\), \(Z\)]\)", Larger, Bold], Style["\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)", Larger, Bold]}, {1, 
   0.6}], 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Green, Dashed, Thickness[0.003]], 
  2 -> Directive[Pink, Dashed, Thickness[0.003]], 
  3 -> Directive[Yellow, Dashed, Thickness[0.003]], 
  4 -> Directive[Blue, Dashed, Thickness[0.003]], 
  5 -> Directive[Orange, Dashed, Thickness[0.003]]}, PlotStyle -> {{Green, Opacity[0.3]}, {Pink, Opacity[0.3]}, {Yellow, 
   Opacity[0.3]}, {Blue, Opacity[0.3]}, {Orange, Opacity[0.3]}},PlotPoints->PP]


RXALL2HL[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RXALL2sigHL[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXALLHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:={
RXALL1HL[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RXALL2HL[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

Individual process;
R Z HL

(*************************************************************************************************************************************************************************************)

(*R Z to 1\[Sigma] in the case in which there is dependence in one parameter*)

RZ1sigXHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{RZZ[ghtt,ghbb,ghZZ],RzzSUP1sigHL,RzzINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(Z\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(Z\)]\)"}, 
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Red],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Red]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Orange}
]

(*RZ to 2\[Sigma] in the case in which there is dependence in one parameter*)

RZ2sigXHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{RZZ[ghtt,ghbb,ghZZ],RzzSUP2sigHL,RzzINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(Z\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(Z\)]\)"}, 
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Red],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Red]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Orange}
]

RZoneHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:={
RZ1sigXHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xlabel],
RZ2sigXHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xlabel]
}

(*TABLES FOR RVone*)

dataRZone1sigHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RzzINF1sigHL<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP1sigHL, RZZ[ghtt,ghbb,ghZZ],0]}, {x, xmin,xmax,xstep}]

dataRZone2sigHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RzzINF2sigHL<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP2sigHL, RZZ[ghtt,ghbb,ghZZ],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RVone*)

TableRZoneHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZone_1sigmaHL.txt"}],Re[dataRZone1sigHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZone_2sigmaHL.txt"}],Re[dataRZone2sigHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*RZ to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*RZZ*)
RZ2sigHL[ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RzzINF2sigHL <= Re[RZZ[ghtt, ghbb, ghZZ]] <= RzzSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Large, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(Z\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Orange, Opacity[0.3]}}, AspectRatio -> 0.6,PlotPoints->PP]

RZ2sigWXYZHL[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RZ2sigHL[ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*RZ to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]ZZ*)
RZ1sigHL[ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RzzINF1sigHL <= Re[RZZ[ghtt, ghbb, ghZZ]] <= RzzSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Large, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(Z\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Orange, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Orange, Opacity[0.3]}}, AspectRatio -> 0.6,PlotPoints->PP]

RZ1sigWXYZHL[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RZ1sigHL[ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RZHL[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RZ1sigWXYZHL[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RZ2sigWXYZHL[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RZ*)

dataRZ1sigHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RzzINF1sigHL<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP1sigHL, RZZ[ghtt,ghbb,ghZZ],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRZ2sigHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    RzzINF2sigHL<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP2sigHL, RZZ[ghtt,ghbb,ghZZ],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RZ*)

TableRZHL[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZ_1sigmaHL.txt"}],
Re[
dataRZ1sigHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZ_2sigmaHL.txt"}],
Re[
dataRZ2sigHL[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

Individual process;
R W HL

(*************************************************************************************************************************************************************************************)

(*R W to 1\[Sigma] in the case in which there is dependence in one parameter*)

RW1sigXHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{RWW[ghtt,ghbb,ghWW],RwwSUP1sigHL,RwwINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(W\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(W\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple,Opacity[0.5]],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple,Opacity[0.5]]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Pink}
]

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)

RW2sigXHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{RWW[ghtt,ghbb,ghWW],RwwSUP2sigHL,RwwINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(W\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(W\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple,Opacity[0.5]],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple,Opacity[0.5]]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Pink}
]

RWoneHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:={
RW1sigXHL[ghtt,ghbb,ghWW,x,xmin,xmax,xlabel],
RW2sigXHL[ghtt,ghbb,ghWW,x,xmin,xmax,xlabel]
}

(*TABLES FOR RWone*)

dataRWone1sigHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RwwINF1sigHL<=RWW[ghtt,ghbb,ghWW]<=RwwSUP1sigHL, RWW[ghtt,ghbb,ghWW],0]}, {x, xmin,xmax,xstep}]

dataRWone2sigHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RwwINF2sigHL<=RWW[ghtt,ghbb,ghWW]<=RwwSUP2sigHL, RWW[ghtt,ghbb,ghWW],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RVone*)

TableRWoneHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRWone_1sigmaHL.txt"}],Re[dataRWone1sigHL[ghtt,ghbb,ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRWone_2sigmaHL.txt"}],Re[dataRWone2sigHL[ghtt,ghbb,ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*RW to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]WW*)
RW2sigHL[ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RwwINF2sigHL <= Re[RWW[ghtt, ghbb, ghWW]] <= RwwSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(W\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Black, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Red, Opacity[0.8]}}, AspectRatio -> 0.6,PlotPoints->PP]

RW2sigWXYZHL[
ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RW2sigHL[ghtt, ghbb,ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*RW to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]WW*)
RW1sigHL[ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RwwINF1sigHL <= Re[RWW[ghtt, ghbb, ghWW]] <= RwwSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(W\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Black, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Red, Opacity[0.8]}}, AspectRatio -> 0.6,PlotPoints->PP]

RW1sigWXYZHL[
ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RW1sigHL[ghtt, ghbb,ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RWHL[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RW1sigWXYZHL[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RW2sigWXYZHL[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RW*)

dataRW1sigHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RwwINF1sigHL<=RWW[ghtt,ghbb,ghWW]<=RwwSUP1sigHL, RWW[ghtt,ghbb,ghWW],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRW2sigHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    RwwINF2sigHL<=RWW[ghtt,ghbb,ghWW]<=RwwSUP2sigHL, RWW[ghtt,ghbb,ghWW],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RW*)

TableRWHL[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRW_1sigmaHL.txt"}],
Re[
dataRW1sigHL[ghtt,ghbb,ghWW,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRW_2sigmaHL.txt"}],
Re[
dataRW2sigHL[ghtt,ghbb,ghWW,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

Individual process;
R Gamma HL

(*R Gamma to 1\[Sigma] in the case in which there is dependence in one parameter*)

RGam1sigXHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{ Rgaga[ghtt, ghbb, ghWW, gCH, mCH],RgammagammaSUP1sigHL,RgammagammaINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Cyan],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Cyan]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue}
]

(*R gamma to 2\[Sigma] in the case in which there is dependence on one parameter*)

RGam2sigXHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{ Rgaga[ghtt, ghbb, ghWW, gCH, mCH],RgammagammaSUP2sigHL,RgammagammaINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Cyan],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Cyan]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue}
]

RGAMoneHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:={
RGam1sigXHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel],
RGam2sigXHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel]
}

(*TABLES FOR RGAMone*)

dataRGAMone1sigHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RgammagammaINF1sigHL<=Rgaga[ghtt, ghbb, ghWW, gCH, mCH]<=RgammagammaSUP1sigHL, 
Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, {x, xmin,xmax,xstep}]

dataRGAMone2sigHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RgammagammaINF2sigHL<=Rgaga[ghtt, ghbb, ghWW, gCH, mCH]<=RgammagammaSUP2sigHL, 
Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR RGAMone*)

TableRGAMoneHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGAMone_1sigmaHL.txt"}],Re[dataRGAMone1sigHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGAMone_2sigmaHL.txt"}],Re[dataRGAMone2sigHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]\[Gamma]\[Gamma]*)
Rgam2sigHL[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RgammagammaINF2sigHL<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Purple, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP]

RGam2sigWXYZHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rgam2sigHL[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]\[Gamma]\[Gamma]*)
Rgam1sigHL[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RgammagammaINF1sigHL<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
  ,FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)"}, {1,0.6}],
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 800,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed], BoundaryStyle -> {1 -> Directive[Purple, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Purple, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP]

RGam1sigWXYZHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rgam1sigHL[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RGamHL[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RGam1sigWXYZHL[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RGam2sigWXYZHL[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RGam*)

dataRGam1sigHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RgammagammaINF1sigHL<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP1sigHL,Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRGam2sigHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RgammagammaINF2sigHL<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP2sigHL,Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RGam*)

TableRGamHL[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGam_1sigmaHL.txt"}],
Re[
dataRGam1sigHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGam_2sigmaHL.txt"}],
Re[
dataRGam2sigHL[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(*************************************************************************************************************************************************************************************)

Individual process;
R botton HL

(*************************************************************************************************************************************************************************************)

(*R bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)

Rb1sigXHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rbotbot[ghtt,ghbb],RbbSUP1sigHL,RbbINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(b\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue,Opacity[0.1]}
]

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)

Rb2sigXHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rbotbot[ghtt,ghbb],RbbSUP2sigHL,RbbINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(b\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue,Opacity[0.1]}
]


RBOToneHL[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:={
Rb1sigXHL[ghtt,ghbb,x,xmin,xmax,xlabel],
Rb2sigXHL[ghtt,ghbb,x,xmin,xmax,xlabel]
}

(*TABLES FOR RBOTone*)

dataRBOTone1sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RbbINF1sigHL<=Rbotbot[ghtt,ghbb]<=RbbSUP1sigHL, 
Rbotbot[ghtt,ghbb],0]}, {x, xmin,xmax,xstep}]

dataRBOTone2sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RbbINF2sigHL<=Rbotbot[ghtt,ghbb]<=RbbSUP2sigHL,
 Rbotbot[ghtt,ghbb],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR RBOTone*)

TableRBOToneHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_1sigmaHL.txt"}],Re[dataRBOTone1sigHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_2sigmaHL.txt"}],Re[dataRBOTone2sigHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*Rb to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]bb*)
Rb2sigHL[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> {"\!\(\*SubscriptBox[\(R\), \(b\)]\)"},
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {{Orange, Opacity[1]}}, AspectRatio -> 0.6,PlotPoints->PP]

Rb2sigWXYZHL[
ghtt_,ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rb2sigHL[ghtt,ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Rb to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rb*)
Rb1sigHL[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> {"\!\(\*SubscriptBox[\(R\), \(b\)]\)"},
 AxesLabel -> {Style["x", Larger, Bold], 
 Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
 GridLines -> Automatic, GridLinesStyle -> 
 Directive[Black, 
 Dashed],BoundaryStyle -> {1 -> Directive[Red, Dashed, Thickness[0.003]]}, PlotStyle -> {{Orange, Opacity[1]}}, AspectRatio -> 0.6,PlotPoints->PP]

Rb1sigWXYZHL[
ghtt_,ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rb1sigHL[ghtt,ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RbHL[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Rb1sigWXYZHL[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Rb2sigWXYZHL[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Rb*)

dataRb1sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL, Rbotbot[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRb2sigHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL, Rbotbot[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Rb*)

TableRBOToneHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_1sigmaHL.txt"}],
Re[dataRBOTone1sigHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_2sigmaHL.txt"}],Re[dataRBOTone2sigHL[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

TableRbHL[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRb_1sigmaHL.txt"}],
Re[
dataRb1sigHL[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRb_2sigmaHL.txt"}],
Re[
dataRb2sigHL[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

Individual process;
R tau HL

(*R tau to 1\[Sigma] in the case in which there is dependence in one parameter*)

Rtau1sigXHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rtata[ghtt,ghbb,ghtautau],RtautauSUP1sigHL,RtautauINF1sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)",
"U.L.[1\[Sigma]]","L.L.[1\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Green],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Green]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Yellow}
]

(*R tau to 2\[Sigma] in the case in which there is dependence on one parameter*)

Rtau2sigXHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rtata[ghtt,ghbb,ghtautau],RtautauSUP2sigHL,RtautauINF2sigHL},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Green],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Green]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Yellow}
]

RTAUoneHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:={
Rtau1sigXHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xlabel],
Rtau2sigXHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xlabel]
}


(*TABLES FOR RTAUone*)

dataRTAUone1sigHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RtautauINF1sigHL<=Rtata[ghtt,ghbb,ghtautau]<=RtautauSUP1sigHL, 
Rtata[ghtt,ghbb,ghtautau],0]}, {x, xmin,xmax,xstep}]

dataRTAUone2sigHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RtautauINF2sigHL<=Rtata[ghtt,ghbb,ghtautau]<=RtautauSUP2sigHL, 
Rtata[ghtt,ghbb,ghtautau],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RTAUone*)

TableRTAUoneHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRTAUone_1sigmaHL.txt"}],Re[dataRTAUone1sigHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRTAUone_2sigmaHL.txt"}],Re[dataRTAUone2sigHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*Rtau to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rtau HL*)
Rtau2sigHL[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RtautauINF2sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> {"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)"}, 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],BoundaryStyle -> {1 -> Directive[Magenta, Dashed, Thickness[0.003]]}, PlotStyle -> {{Black, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP]

Rtau2sigWXYZHL[
ghtt_,ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rtau2sigHL[ghtt,ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Rtau to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rtau*)
Rtau1sigHL[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RtautauINF1sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, 
 PlotLegends -> {"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)"}, 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600,
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],
BoundaryStyle -> {1 -> Directive[Magenta, Dashed, Thickness[0.003]]},
 PlotStyle -> {{Black, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP]

Rtau1sigWXYZHL[
ghtt_,ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rtau1sigHL[ghtt,ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RtauHL[
ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Rtau1sigWXYZHL[
ghtt, ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Rtau2sigWXYZHL[
ghtt, ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Rtau HL*)

dataRtau1sigHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RtautauINF1sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sigHL, Rtata[ghtt, ghbb,ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRtau2sigHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RtautauINF1sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sigHL, Rtata[ghtt, ghbb,ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Rtau*)

TableRtauHL[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRtau_1sigmaHL.txt"}],
Re[
dataRtau1sigHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRtau_2sigmaHL.txt"}],
Re[
dataRtau1sigHL[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(*********************************************************************************************************************)
(*********************************************INTERSECTION*********************************************************)
(*********************************************************************************************************************)

Intersection2sigRXXHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=RegionPlot[
{RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL&& 
    RtautauINF2sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sigHL&& 
   RwwINF2sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sigHL&& 
    RzzINF2sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sigHL&& 
  RgammagammaINF2sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP2sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, PlotLegends -> 
 Placed[{Style["Intersection", Larger, 
    Bold]}, {0.8, 0.6}], 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600(*,PlotPoints->100000*),
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],BoundaryStyle -> {1 -> Directive[Black, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Blue, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP
]

Inter2sigmaHL[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Intersection2sigRXXHL[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

Intersection1sigRXXHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=RegionPlot[
{RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL&& 
    RtautauINF1sigHL <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sigHL&& 
   RwwINF1sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sigHL&& 
    RzzINF1sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sigHL&& 
  RgammagammaINF1sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP1sigHL},
 {x, xmin, xmax}, {y, ymin, ymax}
 , FrameLabel -> {Style[xlabel, Larger, Bold], 
   Style[ylabel, Larger, Bold], 
   Style["\!\(\*
StyleBox[\"SpaceMath\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)", Medium, Bold]}, PlotLegends -> 
 Placed[{Style["Intersection", Larger, 
    Bold]}, {0.8, 0.6}], 
 AxesLabel -> {Style["x", Larger, Bold], 
   Style["y", Larger, Bold]}, AspectRatio -> 1, 
 FrameStyle ->  Thickness[0.004], LabelStyle -> 35, ImageSize -> 600(*,PlotPoints->100000*),
  GridLines -> Automatic, GridLinesStyle -> 
   Directive[Black, 
     Dashed],BoundaryStyle -> {1 -> Directive[Black, Dashed, Thickness[0.003]]}, 
PlotStyle -> {{Blue, Opacity[0.5]}}, AspectRatio -> 0.6,PlotPoints->PP
]

Inter1sigmaHL[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Intersection1sigRXXHL[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXintersectionHL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Inter1sigmaHL[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
,
Inter2sigmaHL[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*********************************************************************************************************************)
(*********************************************************************************************************************)
(*********************************************************************************************************************)
RXALL1sigINTHL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, 
  y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, PP_] := RegionPlot[
  {
     RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL, 
       RtautauINF1sigHL <= Rtata[ghtt, ghbb, ghtautau] <= 
    RtautauSUP1sigHL, 
      RwwINF1sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sigHL, 
       RzzINF1sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sigHL, 
     RgammagammaINF1sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
    RgammagammaSUP1sigHL, 
   RbbINF1sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP1sigHL && 
        RtautauINF1sigHL <= Rtata[ghtt, ghbb, ghtautau] <= 
     RtautauSUP1sigHL && 
       RwwINF1sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sigHL && 
        RzzINF1sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sigHL && 
      RgammagammaINF1sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
     RgammagammaSUP1sigHL},
   {x, xmin, xmax}, {y, ymin, ymax}
   , FrameLabel -> {Style["cos\[Alpha]", Larger, Bold], 
       Style["\!\(\*SubscriptBox[\(\[Eta]\), \(L\)]\)", Larger, Bold], 
       Style["SpaceMath", Medium, Bold]}, PlotLegends -> 
    Placed[{ Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
          Bold],
         Style["\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)", 
          Larger, Bold], 
        Style["\!\(\*SubscriptBox[\(R\), \(W\)]\)", Larger, Bold], 
        Style["\!\(\*SubscriptBox[\(R\), \(Z\)]\)", Larger, Bold], 
     Style["\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)", Larger, 
      Bold]}, {1, 
        0.6}], 
   AxesLabel -> {Style["x", Larger, Bold], 
       Style["y", Larger, Bold]}, AspectRatio -> 1, 
   FrameStyle ->  Thickness[0.004], LabelStyle -> 35, 
  ImageSize -> 1000,
    GridLines -> Automatic, GridLinesStyle -> 
      Directive[Black, 
         Dashed], 
  BoundaryStyle -> {1 -> Directive[Green, Dashed, Thickness[0.003]], 
      2 -> Directive[Pink, Dashed, Thickness[0.003]], 
      3 -> Directive[Yellow, Dashed, Thickness[0.003]], 
      4 -> Directive[Blue, Dashed, Thickness[0.003]], 
      5 -> Directive[Orange, Dashed, Thickness[0.003]],
       6 -> Directive[Red, Dashed, Thickness[0.003]]},
      PlotStyle -> {{Green, Opacity[0.3]},
        {Pink, Opacity[0.3]}, 
        {Yellow, Opacity[0.3]}, 
        {Blue, Opacity[0.3]},
         {Orange, Opacity[0.3]},
         {Red, Opacity[1]}}
     , PlotPoints -> PP
  ]

RXALL1INTHL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, 
   xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
   xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, 
   PP_] := Manipulate[
   RXALL1sigINTHL[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y, 
    xmin, xmax, ymin, ymax, xlabel, ylabel, PP], {xfor, xformin, 
    xformax, xforstep}, {yfor, yformin, yformax, yforstep}];

RXALL2sigINTHL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, 
  y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, PP_] := RegionPlot[
  {
     RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL, 
       RtautauINF2sigHL <= Rtata[ghtt, ghbb, ghtautau] <= 
    RtautauSUP2sigHL, 
      RwwINF2sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sigHL, 
       RzzINF2sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sigHL, 
     RgammagammaINF2sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
    RgammagammaSUP2sigHL, 
   RbbINF2sigHL <= Rbotbot[ghtt, ghbb] <= RbbSUP2sigHL && 
        RtautauINF2sigHL <= Rtata[ghtt, ghbb, ghtautau] <= 
     RtautauSUP2sigHL && 
       RwwINF2sigHL <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sigHL && 
        RzzINF2sigHL <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sigHL && 
      RgammagammaINF2sigHL <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
     RgammagammaSUP2sigHL},
   {x, xmin, xmax}, {y, ymin, ymax}
   , FrameLabel -> {Style["cos\[Alpha]", Larger, Bold], 
       Style["\!\(\*SubscriptBox[\(\[Eta]\), \(L\)]\)", Larger, Bold], 
       Style["SpaceMath", Medium, Bold]}, PlotLegends -> 
    Placed[{ Style["\!\(\*SubscriptBox[\(R\), \(b\)]\)", Larger, 
          Bold],
         Style["\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)", 
          Larger, Bold], 
        Style["\!\(\*SubscriptBox[\(R\), \(W\)]\)", Larger, Bold], 
        Style["\!\(\*SubscriptBox[\(R\), \(Z\)]\)", Larger, Bold], 
     Style["\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)", Larger, 
      Bold]}, {1, 
        0.6}], 
   AxesLabel -> {Style["x", Larger, Bold], 
       Style["y", Larger, Bold]}, AspectRatio -> 1, 
   FrameStyle ->  Thickness[0.004], LabelStyle -> 35, 
  ImageSize -> 1000,
    GridLines -> Automatic, GridLinesStyle -> 
      Directive[Black, 
         Dashed], 
  BoundaryStyle -> {1 -> Directive[Green, Dashed, Thickness[0.003]], 
      2 -> Directive[Pink, Dashed, Thickness[0.003]], 
      3 -> Directive[Yellow, Dashed, Thickness[0.003]], 
      4 -> Directive[Blue, Dashed, Thickness[0.003]], 
      5 -> Directive[Orange, Dashed, Thickness[0.003]],
       6 -> Directive[Red, Dashed, Thickness[0.003]]},
      PlotStyle -> {{Green, Opacity[0.3]},
        {Pink, Opacity[0.3]}, 
        {Yellow, Opacity[0.3]}, 
        {Blue, Opacity[0.3]},
         {Orange, Opacity[0.3]},
         {Red, Opacity[1]}}
     , PlotPoints -> PP
  ]


RXALL2INTHL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_,xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
   xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_,PP_] := Manipulate[
   RXALL2sigINTHL[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y,xmin, xmax, ymin, ymax, xlabel, ylabel, PP], {xfor, xformin, 
    xformax, xforstep}, {yfor, yformin, yformax, yforstep}];

RXALLINTHL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_,xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
  xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_,PP_] := {RXALL1INTHL[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y,
    xmin, xmax, ymin, ymax, xlabel, ylabel, xfor, yfor, xformin, 
   xformax, xforstep, yformin, yformax, yforstep, PP], 
  RXALL2INTHL[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y, xmin, 
   xmax, ymin, ymax, xlabel, ylabel, xfor, yfor, xformin, xformax, 
   xforstep, yformin, yformax, yforstep, PP]}

(*********************************************************************************************************************)
(*********************************************************************************************************************)
(*********************************************************************************************************************)

End[]