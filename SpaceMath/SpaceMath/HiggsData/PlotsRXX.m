(* Wolfram Language Package *)

(******************************************************************************************************************************************************)
(*********************************************************Begin RV************************************************************************************)
(******************************************************************************************************************************************************)
(******************************************************************************************************************************************************)
RVone::usage = "\!\(\*
StyleBox[\"RVone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghVV_\",\nFontWeight->\"Bold\"]\)\!\(\*
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
This command evaluates \!\(\*SubscriptBox[\(R\), \(V\)]\) with V=W, \
Z when there is dependence only on one parameter. The arguments ghtt, ghbb and ghVV are the htt, hbb, hVV \
couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xlabel is used \
for indicates the X axis label. Finally, [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma])."

TableRVone::usage="\!\(\*
StyleBox[\"TableRVone\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"[\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghtt_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghbb_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"ghVV_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"x_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmin_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xmax_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\",\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"xstep_\",\nFontWeight->\"Bold\"]\)\!\(\*
StyleBox[\"]\",\nFontWeight->\"Bold\"]\)\[Rule] This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(V\)]\), with V= W, Z. The arguments ghtt, ghbb and ghVV are the htt, hbb, hVV \
couplings. Here, h represents to SM-like Higgs boson while t and b the top and bottom quarks. The label x \
indicates the parameter to constrain, while xmin and xmax are the \
initial and final values defined by users and xstep is used \
to indicates the steps from xmin to xmax. The output file will be saved in $UserDocumentsDirectory."

RV::usage="RV[ghtt_,ghbb_,ghVV_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_][[i]]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(V\)]\) with V=W, \
Z when there is dependence on two or more parameters. The arguments ghtt, ghbb, ghVV are the htt, hbb, hVV \
couplings. Here, h represents to SM-like Higgs boson while t and b the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRV::usage="TableRV[ghtt_,ghbb_,ghVV_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]\[Rule] 
This command generates a table of the signal strength \!\(\*SubscriptBox[\(R\), \(V\)]\), with V= W, Z gauge bosons. The arguments ghtt, ghbb and ghVV are the htt, \
hbb and hVV couplings. Here, h represents to SM-like Higgs boson while t and b the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users and xstep (ystep) is used \
to indicates the steps from xmin to xmax (ymin to ymax). The output file will be saved in $UserDocumentsDirectory."
(******************************************************************************************************************************************************)
(*********************************************************END OF RV************************************************************************************)
(******************************************************************************************************************************************************)

(******************************************************************************************************************************************************)
(*********************************************************Begin OF RGamma************************************************************************************)
(******************************************************************************************************************************************************)
RGAMone::usage = "\!\(\*
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

TableRGAMone::usage="\!\(\*
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

RGam::usage="RGam[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_][[i]]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\) \
when there is dependence on two or more parameters. The arguments ghtt, ghbb, ghWW and gCH are the htt, hbb, hWW and h\!\(\*SuperscriptBox[\(H\), \(-\)]\)\!\(\*SuperscriptBox[\(H\), \(+\)]\)\
couplings while mCH stands for the charged scalar boson mass. Here, h represents to SM-like Higgs boson while t and b the top and bottom querkas. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRGam::usage="TableRGam[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]\[Rule] 
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
RTAUone::usage = "\!\(\*
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

TableRTAUone::usage="\!\(\*
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

Rtau::usage="Rtau[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_][[i]]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\), \
when there is dependence on two or more parameters. The arguments ghtt, ghbb and ghtautau are the htt, hbb \
and htautau couplings. Here, h represents to SM-like Higgs boson while t, b and tau are the top and bottom quarks and the tau-lepton. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRtau::usage="TableRtau[ghtt_, ghbb_,ghtautau_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, ystep_]\[Rule] 
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
RBOTone::usage = "\!\(\*
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

TableRBOTone::usage="\!\(\*
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

Rb::usage="Rb[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]\[Rule] 
This command evaluates \!\(\*SubscriptBox[\(R\), \(b\)]\), \
when there is dependence on two or more parameters. The arguments ghtt and ghbb are the htt, hbb \
couplings. Here, h represents to SM-like Higgs boson while t and b are the top and bottom quarks. Labels x and y \
indicate the parameters to constrain, while xmin (ymin) and xmax (ymax) are the \
initial and final values defined by users. Argument xlabel (ylabel) is used \
for indicates the X axis label (Y axis label). The arguments xfor (yfor), xformin (yformin), xforstep (yforstep) represent an additional parameter to constrain, namely: initial value, final value and the steps from xformin (yformin) to xformax (yformax), respectively. Label [[i]] stands for confidence level, i=1 (2) indicates 1\[Sigma] (2\[Sigma]), Finally, PP is an option for plotting functions that specifies how many initial sample points to use."

TableRb::usage="TableRb[ghtt_, ghbb_, x_, xmin_, xmax_, xstep_, y_, ymin_, ymax_, ystep_]\[Rule] 
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

RXALL::usage="RXALL[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, PP_][[i]]\[Rule] 
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
RXintersection::usage="RXintersection[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]\[Rule] 
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
RXALL1sig::usage ="RXALL1sig"

RXALL2sig::usage ="RXALL2sig"

RZ1sigX::usage ="RZ1sigX"

RZ2sigX::usage ="RZ2sigX"

RZone::usage ="RZone"

(*TABLES FOR RVone*)
dataRZone1sig::usage ="dataRZone1sig"
dataRZone2sig::usage ="dataRZone2sig"

(*EXPORTING TABLES FOR RVone*)
TableRZone::usage ="TableRZone"

(*RZ to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]ZZ*)
RZ2sig::usage ="RZ2sig"
RZ2sigWXYZ::usage ="RZ2sigWXYZ"

(*RZ to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]ZZ*)
RZ1sig::usage ="RZ1sig"
RZ1sigWXYZ::usage ="RZ1sigWXYZ"
RZ::usage ="RZ"

(*TABLES FOR RZ*)
dataRZ1sig::usage ="dataRZ1sig"
dataRZ2sig::usage ="dataRZ2sig"

(*EXPORTING TABLES FOR RZ*)
TableRZ::usage ="TableRZ"

(* Individual process *)
(* R W *)
(*R W to 1\[Sigma] in the case in which there is dependence in one parameter*)
RW1sigX::usage ="RW1sigX"

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)
RW2sigX::usage ="RW2sigX"
RWone::usage ="RWone"

(*TABLES FOR RWone*)
dataRWone1sig::usage ="dataRWone1sig"
dataRWone2sig::usage ="dataRWone2sig"

(*EXPORTING TABLES FOR RVone*)
TableRWone::usage ="TableRWone"

(*RW to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]WW*)
RW2sig::usage ="RW2sig"
RW2sigWXYZ::usage ="RW2sigWXYZ"

(*RW to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]WW*)
RW1sig::usage ="RW1sig"
RW1sigWXYZ::usage ="RW1sigWXYZ"
RW::usage ="RW"

(*TABLES FOR RW*)
dataRW1sig::usage ="dataRW1sig"
dataRW2sig::usage ="dataRW2sig"

(*EXPORTING TABLES FOR RZ*)
TableRW::usage ="TableRW"

(* Individual process *)
(* R Gamma *)
(*R Gamma to 1\[Sigma] in the case in which there is dependence in one parameter*)
RGam1sigX::usage ="RGam1sigX"

(*R gamma to 2\[Sigma] in the case in which there is dependence in one parameter*)
RGam2sigX::usage ="RGam2sigX"


(*TABLES FOR RGAMone*)
dataRGAMone1sig::usage ="dataRGAMone1sig"
dataRGAMone2sig::usage ="dataRGAMone2sig"

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]\[Gamma]\[Gamma]*)
Rgam2sig::usage ="Rgam2sig"
RGam2sigWXYZ::usage ="RGam2sigWXYZ"

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)
(*\[Mu]\[Gamma]\[Gamma]*)
Rgam1sig::usage ="Rgam1sig"
RGam1sigWXYZ::usage ="RGam1sigWXYZ"

(*R gamma to 1\[Sigma] in the case in which there is dependence in more than two parameters*)
(* Individual process *)
(* R botton *)
(*************************************************************************************************************************************************************************************)
(*R bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)
Rb1sigX::usage ="Rb1sigX"

(*kappa bottom to 2\[Sigma] in the case in which there is dependence in one parameter*)
Rb2sigX::usage ="Rb2sigX"

(*TABLES FOR RBOTone*)
dataRBOTone1sig::usage ="dataRBOTone1sig"
dataRBOTone2sig::usage ="dataRBOTone2sig"

(* Individual process *)
(* R tau *)
(*R tau to 1\[Sigma] in the case in which there is dependence in one parameter*)
Rtau1sigX::usage ="Rtau1sigX"

(*R tau to 2\[Sigma] in the case in which there is dependence in one parameter*)
Rtau2sigX::usage ="Rtau2sigX"

(*TABLES FOR RTAUone*)
dataRTAUone1sig::usage ="dataRTAUone1sig"
dataRTAUone2sig::usage ="dataRTAUone2sig"

Intersection2sigRXX::usage ="Intersection2sigRXX"
Intersection1sigRXX::usage ="Intersection1sigRXX"
(*********************************************************************************************************************)
RXALL1sigINT::usage ="RXALL1sigINT"
RXALL1INT::usage ="RXALL1INT"
RXALL2sigINT::usage ="RXALL2sigINT"
RXALL2INT::usage ="RXALL2INT"
RXALLINT::usage ="RXALLINT"
(*********************************************************************************************************************)
(* ------------------------------------------------------------------------ *)

Begin["`Package`"]
End[]

Begin["`PlotsRXX`Private`"]

(*********************************************************************************************
*******************************All signal strenghts*************************************************************
*********************************************************************************************)

RXALL1sig[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig, 
 RtautauINF1sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sig, 
   RwwINF1sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sig, 
     RzzINF1sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sig, 
       RgammagammaINF1sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP1sig},
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


RXALL1[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RXALL1sig[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXALL2sig[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig, 
 RtautauINF2sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sig, 
   RwwINF2sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sig, 
     RzzINF2sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sig, 
       RgammagammaINF2sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP2sig},
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


RXALL2[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RXALL2sig[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXALL[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:={
RXALL1[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RXALL2[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*RXXALL[ghtt[ArcCos[Cab]+ArcTan[tb], 1.415,Cab,tb], ghbb[ArcCos[Cab]+ArcTan[tb], 1,Cab,tb],ghZZ[Sqrt[1-Cab^2]],ghWW[Sqrt[1-Cab^2]],
ghtautau[ArcCos[Cab]+ArcTan[tb], 1,Cab,tb],0.01,500,tb,Cab,0,10,0,1,Subscript[t, \[Beta]],Subscript[c, \[Alpha]\[Beta]]]*)

Individual process;
R Z

(*************************************************************************************************************************************************************************************)

(*R Z to 1\[Sigma] in the case in which there is dependence in one parameter*)

RZ1sigX[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{RZZ[ghtt,ghbb,ghZZ],RzzSUP1sig,RzzINF1sig},{x,xmin,xmax}
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

RZ2sigX[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:=Plot[{RZZ[ghtt,ghbb,ghZZ],RzzSUP2sig,RzzINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(Z\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(Z\)]\)"}, 
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Red],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Red]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Orange}
]

RZone[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xlabel_]:={
RZ1sigX[ghtt,ghbb,ghZZ,x,xmin,xmax,xlabel],
RZ2sigX[ghtt,ghbb,ghZZ,x,xmin,xmax,xlabel]
}

(*TABLES FOR RVone*)

dataRZone1sig[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RzzINF1sig<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP1sig, RZZ[ghtt,ghbb,ghZZ],0]}, {x, xmin,xmax,xstep}]

dataRZone2sig[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RzzINF2sig<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP2sig, RZZ[ghtt,ghbb,ghZZ],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RVone*)

TableRZone[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZone_1sigma.txt"}],Re[dataRZone1sig[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZone_2sigma.txt"}],Re[dataRZone2sig[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*RZ to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*RZZ*)
RZ2sig[ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RzzINF2sig <= Re[RZZ[ghtt, ghbb, ghZZ]] <= RzzSUP2sig},
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

RZ2sigWXYZ[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RZ2sig[ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*RZ to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]ZZ*)
RZ1sig[ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RzzINF1sig <= Re[RZZ[ghtt, ghbb, ghZZ]] <= RzzSUP1sig},
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

RZ1sigWXYZ[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RZ1sig[ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RZ[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RZ1sigWXYZ[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RZ2sigWXYZ[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RZ*)

dataRZ1sig[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RzzINF1sig<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP1sig, RZZ[ghtt,ghbb,ghZZ],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRZ2sig[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    RzzINF2sig<=RZZ[ghtt,ghbb,ghZZ]<=RzzSUP2sig, RZZ[ghtt,ghbb,ghZZ],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RZ*)

TableRZ[ghtt_,ghbb_,ghZZ_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZ_1sigma.txt"}],
Re[
dataRZ1sig[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRZ_2sigma.txt"}],
Re[
dataRZ2sig[ghtt,ghbb,ghZZ,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

Individual process;
R W

(*************************************************************************************************************************************************************************************)

(*R W to 1\[Sigma] in the case in which there is dependence in one parameter*)

RW1sigX[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{RWW[ghtt,ghbb,ghWW],RwwSUP1sig,RwwINF1sig},{x,xmin,xmax}
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

RW2sigX[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:=Plot[{RWW[ghtt,ghbb,ghWW],RwwSUP2sig,RwwINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(W\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(W\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple,Opacity[0.5]],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple,Opacity[0.5]]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Pink}
]

RWone[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xlabel_]:={
RW1sigX[ghtt,ghbb,ghWW,x,xmin,xmax,xlabel],
RW2sigX[ghtt,ghbb,ghWW,x,xmin,xmax,xlabel]
}

(*TABLES FOR RWone*)

dataRWone1sig[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RwwINF1sig<=RWW[ghtt,ghbb,ghWW]<=RwwSUP1sig, RWW[ghtt,ghbb,ghWW],0]}, {x, xmin,xmax,xstep}]

dataRWone2sig[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RwwINF2sig<=RWW[ghtt,ghbb,ghWW]<=RwwSUP2sig, RWW[ghtt,ghbb,ghWW],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RVone*)

TableRWone[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRWone_1sigma.txt"}],Re[dataRWone1sig[ghtt,ghbb,ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRWone_2sigma.txt"}],Re[dataRWone2sig[ghtt,ghbb,ghWW,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*RW to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]WW*)
RW2sig[ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RwwINF2sig <= Re[RWW[ghtt, ghbb, ghWW]] <= RwwSUP2sig},
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

RW2sigWXYZ[
ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RW2sig[ghtt, ghbb,ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*RW to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]WW*)
RW1sig[ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RwwINF1sig <= Re[RWW[ghtt, ghbb, ghWW]] <= RwwSUP1sig},
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

RW1sigWXYZ[
ghtt_, ghbb_,ghWW_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
RW1sig[ghtt, ghbb,ghWW,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RW[
ghtt_, ghbb_,ghZZ_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RW1sigWXYZ[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RW2sigWXYZ[
ghtt, ghbb,ghZZ,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RW*)

dataRW1sig[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RwwINF1sig<=RWW[ghtt,ghbb,ghWW]<=RwwSUP1sig, RWW[ghtt,ghbb,ghWW],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRW2sig[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=Table[{x,y,If[
    RwwINF2sig<=RWW[ghtt,ghbb,ghWW]<=RwwSUP2sig, RWW[ghtt,ghbb,ghWW],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RW*)

TableRW[ghtt_,ghbb_,ghWW_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRW_1sigma.txt"}],
Re[
dataRW1sig[ghtt,ghbb,ghWW,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRW_2sigma.txt"}],
Re[
dataRW2sig[ghtt,ghbb,ghWW,x,xmin,xmax,xstep,y,ymin,ymax,ystep]]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

Individual process;
R Gamma

(*R Gamma to 1\[Sigma] in the case in which there is dependence in one parameter*)

RGam1sigX[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{ Rgaga[ghtt, ghbb, ghWW, gCH, mCH],RgammagammaSUP1sig,RgammagammaINF1sig},{x,xmin,xmax}
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

RGam2sigX[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:=Plot[{ Rgaga[ghtt, ghbb, ghWW, gCH, mCH],RgammagammaSUP2sig,RgammagammaINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Gamma]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Cyan],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Cyan]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue}
]

RGAMone[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xlabel_]:={
RGam1sigX[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel],
RGam2sigX[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xlabel]
}

(*TABLES FOR RGAMone*)

dataRGAMone1sig[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RgammagammaINF1sig<=Rgaga[ghtt, ghbb, ghWW, gCH, mCH]<=RgammagammaSUP1sig, 
Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, {x, xmin,xmax,xstep}]

dataRGAMone2sig[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RgammagammaINF2sig<=Rgaga[ghtt, ghbb, ghWW, gCH, mCH]<=RgammagammaSUP2sig, 
Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR RGAMone*)

TableRGAMone[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGAMone_1sigma.txt"}],Re[dataRGAMone1sig[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGAMone_2sigma.txt"}],Re[dataRGAMone2sig[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]\[Gamma]\[Gamma]*)
Rgam2sig[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RgammagammaINF2sig<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP2sig},
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

RGam2sigWXYZ[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rgam2sig[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*R gamma to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]\[Gamma]\[Gamma]*)
Rgam1sig[ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RgammagammaINF1sig<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP1sig},
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

RGam1sigWXYZ[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rgam1sig[ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP
],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RGam[
ghtt_, ghbb_,ghWW_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
RGam1sigWXYZ[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
RGam2sigWXYZ[
ghtt, ghbb,ghWW,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR RGam*)

dataRGam1sig[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RgammagammaINF1sig<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP1sig,Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRGam2sig[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RgammagammaINF2sig<= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <=RgammagammaSUP2sig,Rgaga[ghtt, ghbb, ghWW, gCH, mCH],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR RGam*)

TableRGam[ghtt_,ghbb_,ghWW_,gCH_,mCH_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGam_1sigma.txt"}],
Re[
dataRGam1sig[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRGam_2sigma.txt"}],
Re[
dataRGam2sig[ghtt,ghbb,ghWW,gCH,mCH,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},"Table"
]
}

(*************************************************************************************************************************************************************************************)

Individual process;
R botton

(*************************************************************************************************************************************************************************************)

(*R bottom to 1\[Sigma] in the case in which there is dependence in one parameter*)

Rb1sigX[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rbotbot[ghtt,ghbb],RbbSUP1sig,RbbINF1sig},{x,xmin,xmax}
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

Rb2sigX[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rbotbot[ghtt,ghbb],RbbSUP2sig,RbbINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(b\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(b\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Purple],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Purple]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Blue,Opacity[0.1]}
]


RBOTone[ghtt_,ghbb_,x_,xmin_,xmax_,xlabel_]:={
Rb1sigX[ghtt,ghbb,x,xmin,xmax,xlabel],
Rb2sigX[ghtt,ghbb,x,xmin,xmax,xlabel]
}

(*TABLES FOR RBOTone*)

dataRBOTone1sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RbbINF1sig<=Rbotbot[ghtt,ghbb]<=RbbSUP1sig, 
Rbotbot[ghtt,ghbb],0]}, {x, xmin,xmax,xstep}]

dataRBOTone2sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RbbINF2sig<=Rbotbot[ghtt,ghbb]<=RbbSUP2sig,
 Rbotbot[ghtt,ghbb],0]}, {x, xmin,xmax,xstep}]


(*EXPORTING TABLES FOR RBOTone*)

TableRBOTone[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_1sigma.txt"}],Re[dataRBOTone1sig[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_2sigma.txt"}],Re[dataRBOTone2sig[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*************************************************************************************************************************************************************************************)

(*Rb to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*\[Mu]bb*)
Rb2sig[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig},
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

Rb2sigWXYZ[
ghtt_,ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rb2sig[ghtt,ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Rb to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rb*)
Rb1sig[ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig},
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

Rb1sigWXYZ[
ghtt_,ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rb1sig[ghtt,ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

Rb[
ghtt_, ghbb_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Rb1sigWXYZ[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Rb2sigWXYZ[
ghtt, ghbb,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Rb*)

dataRb1sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig, Rbotbot[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRb2sig[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig, Rbotbot[ghtt, ghbb],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Rb*)

TableRBOTone[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_1sigma.txt"}],
Re[dataRBOTone1sig[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRBOTone_2sigma.txt"}],Re[dataRBOTone2sig[ghtt,ghbb,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

TableRb[ghtt_,ghbb_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRb_1sigma.txt"}],
Re[
dataRb1sig[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRb_2sigma.txt"}],
Re[
dataRb2sig[ghtt,ghbb,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
}

Individual process;
R tau

(*R tau to 1\[Sigma] in the case in which there is dependence in one parameter*)

Rtau1sigX[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rtata[ghtt,ghbb,ghtautau],RtautauSUP1sig,RtautauINF1sig},{x,xmin,xmax}
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

Rtau2sigX[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:=Plot[{Rtata[ghtt,ghbb,ghtautau],RtautauSUP2sig,RtautauINF2sig},{x,xmin,xmax}
,PlotLegends->Placed[{"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)",
"U.L.[2\[Sigma]]","L.L.[2\[Sigma]]"},{1,0.5}],ImageSize->1000,Frame->True,
FrameLabel->{xlabel,"\!\(\*SubscriptBox[\(R\), \(\[Tau]\)]\)"},
FrameStyle->Thickness[0.003](*,AxesLabel->{Style["x",Large,Bold,Bold],
Style["y",Large,Bold,Bold]}*),LabelStyle->30,PlotStyle->{Directive[AbsoluteThickness[3.3],
Black],Directive[AbsoluteThickness[3.3],Dashing[{0.09,0.04}],Green],Directive[AbsoluteThickness[3.3],
Dashing[{0.03,0.03,0.003}],Green]},GridLinesStyle->Directive[Black,Dashed],GridLines->Automatic,
AspectRatio->0.6,Filling->{3->{2}},FillingStyle->{Yellow}
]

RTAUone[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xlabel_]:={
Rtau1sigX[ghtt,ghbb,ghtautau,x,xmin,xmax,xlabel],
Rtau2sigX[ghtt,ghbb,ghtautau,x,xmin,xmax,xlabel]
}


(*TABLES FOR RTAUone*)

dataRTAUone1sig[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RtautauINF1sig<=Rtata[ghtt,ghbb,ghtautau]<=RtautauSUP1sig, 
Rtata[ghtt,ghbb,ghtautau],0]}, {x, xmin,xmax,xstep}]

dataRTAUone2sig[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:=Table[{x,If[
    RtautauINF2sig<=Rtata[ghtt,ghbb,ghtautau]<=RtautauSUP2sig, 
Rtata[ghtt,ghbb,ghtautau],0]}, {x, xmin,xmax,xstep}]

(*EXPORTING TABLES FOR RTAUone*)

TableRTAUone[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRTAUone_1sigma.txt"}],Re[dataRTAUone1sig[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
],
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRTAUone_2sigma.txt"}],Re[dataRTAUone2sig[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep]]/. {{_,0} -> Sequence[]},
"Table"
]
}

(*Rtau to 2\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rtau*)
Rtau2sig[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RtautauINF2sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sig},
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

Rtau2sigWXYZ[
ghtt_,ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rtau2sig[ghtt,ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

(*Rtau to 1\[Sigma] in the case in which there is dependence in more than two parameters*)

(*Rtau*)
Rtau1sig[ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=
RegionPlot[{RtautauINF1sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sig},
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

Rtau1sigWXYZ[
ghtt_,ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Rtau1sig[ghtt,ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

Rtau[
ghtt_, ghbb_,ghtautau_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Rtau1sigWXYZ[
ghtt, ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP],
Rtau2sigWXYZ[
ghtt, ghbb,ghtautau,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*TABLES FOR Rtau*)

dataRtau1sig[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RtautauINF1sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sig, Rtata[ghtt, ghbb,ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

dataRtau2sig[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:=
Table[
{x,y,If[
    RtautauINF1sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sig, Rtata[ghtt, ghbb,ghtautau],0]}, 
{x, xmin,xmax,xstep}, {y, ymin,ymax,ystep}]

(*EXPORTING TABLES FOR Rtau*)

TableRtau[ghtt_,ghbb_,ghtautau_,x_,xmin_,xmax_,xstep_,y_,ymin_,ymax_,ystep_]:={
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRtau_1sigma.txt"}],
Re[
dataRtau1sig[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
"Table"
]
,
Export[
FileNameJoin[{$UserDocumentsDirectory,"TableRtau_2sigma.txt"}],
Re[
dataRtau1sig[ghtt,ghbb,ghtautau,x,xmin,xmax,xstep,y,ymin,ymax,ystep]
]/. {{_,_,0} -> Sequence[]},
 "Table"
]
}

(*********************************************************************************************************************)
(*********************************************INTERSECTION*********************************************************)
(*********************************************************************************************************************)

Intersection2sigRXX[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=RegionPlot[
{RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig&& 
    RtautauINF2sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP2sig&& 
   RwwINF2sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sig&& 
    RzzINF2sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sig&& 
  RgammagammaINF2sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP2sig},
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

Inter2sigma[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Intersection2sigRXX[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

Intersection1sigRXX[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,PP_]:=RegionPlot[
{RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig&& 
    RtautauINF1sig <= Rtata[ghtt, ghbb,ghtautau] <= RtautauSUP1sig&& 
   RwwINF1sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sig&& 
    RzzINF1sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sig&& 
  RgammagammaINF1sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= RgammagammaSUP1sig},
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

Inter1sigma[
ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
Manipulate[
Intersection1sigRXX[ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,PP],
 {xfor,xformin,xformax,xforstep},{yfor,yformin,yformax,yforstep}
];

RXintersection[ghtt_, ghbb_,ghZZ_,ghWW_,ghtautau_,gCH_,mCH_,x_,y_,xmin_,xmax_,ymin_,ymax_,xlabel_,ylabel_,xfor_,yfor_,xformin_,xformax_,xforstep_,yformin_,yformax_,yforstep_,PP_]:=
{
Inter1sigma[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
,
Inter2sigma[
ghtt, ghbb,ghZZ,ghWW,ghtautau,gCH,mCH,x,y,xmin,xmax,ymin,ymax,xlabel,ylabel,xfor,yfor,xformin,xformax,xforstep,yformin,yformax,yforstep,PP]
}

(*********************************************************************************************************************)
(*********************************************************************************************************************)
(*********************************************************************************************************************)
RXALL1sigINT[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, 
  y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, PP_] := RegionPlot[
  {
     RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig, 
       RtautauINF1sig <= Rtata[ghtt, ghbb, ghtautau] <= 
    RtautauSUP1sig, 
      RwwINF1sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sig, 
       RzzINF1sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sig, 
     RgammagammaINF1sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
    RgammagammaSUP1sig, 
   RbbINF1sig <= Rbotbot[ghtt, ghbb] <= RbbSUP1sig && 
        RtautauINF1sig <= Rtata[ghtt, ghbb, ghtautau] <= 
     RtautauSUP1sig && 
       RwwINF1sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP1sig && 
        RzzINF1sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP1sig && 
      RgammagammaINF1sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
     RgammagammaSUP1sig},
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

RXALL1INT[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, 
   xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
   xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, 
   PP_] := Manipulate[
   RXALL1sigINT[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y, 
    xmin, xmax, ymin, ymax, xlabel, ylabel, PP], {xfor, xformin, 
    xformax, xforstep}, {yfor, yformin, yformax, yforstep}];

RXALL2sigINT[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, 
  y_, xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, PP_] := RegionPlot[
  {
     RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig, 
       RtautauINF2sig <= Rtata[ghtt, ghbb, ghtautau] <= 
    RtautauSUP2sig, 
      RwwINF2sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sig, 
       RzzINF2sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sig, 
     RgammagammaINF2sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
    RgammagammaSUP2sig, 
   RbbINF2sig <= Rbotbot[ghtt, ghbb] <= RbbSUP2sig && 
        RtautauINF2sig <= Rtata[ghtt, ghbb, ghtautau] <= 
     RtautauSUP2sig && 
       RwwINF2sig <= RWW[ghtt, ghbb, ghWW] <= RwwSUP2sig && 
        RzzINF2sig <= RZZ[ghtt, ghbb, ghZZ] <= RzzSUP2sig && 
      RgammagammaINF2sig <= Rgaga[ghtt, ghbb, ghWW, gCH, mCH] <= 
     RgammagammaSUP2sig},
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


RXALL2INT[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, 
   xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
   xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, 
   PP_] := Manipulate[
   RXALL2sigINT[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y, 
    xmin, xmax, ymin, ymax, xlabel, ylabel, PP], {xfor, xformin, 
    xformax, xforstep}, {yfor, yformin, yformax, yforstep}];

RXALLINT[ghtt_, ghbb_, ghZZ_, ghWW_, ghtautau_, gCH_, mCH_, x_, y_, 
  xmin_, xmax_, ymin_, ymax_, xlabel_, ylabel_, xfor_, yfor_, 
  xformin_, xformax_, xforstep_, yformin_, yformax_, yforstep_, 
  PP_] := {RXALL1INT[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y,
    xmin, xmax, ymin, ymax, xlabel, ylabel, xfor, yfor, xformin, 
   xformax, xforstep, yformin, yformax, yforstep, PP], 
  RXALL2INT[ghtt, ghbb, ghZZ, ghWW, ghtautau, gCH, mCH, x, y, xmin, 
   xmax, ymin, ymax, xlabel, ylabel, xfor, yfor, xformin, xformax, 
   xforstep, yformin, yformax, yforstep, PP]}

(*********************************************************************************************************************)
(*********************************************************************************************************************)
(*********************************************************************************************************************)

End[]