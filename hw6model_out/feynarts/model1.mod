(*
	LanHEP output produced at Sun Jul  4 02:07:59 2021
	from the file '/home/tug/Desktop/phys hw 6/lanhep400/mdl/hw6model_in/408-comp-hw6-tugay-gul.lhep.mdl'
	Model named 'hw6'
*)


IndexRange[ Index[Colour] ] = NoUnfold[Range[3]]
IndexRange[ Index[Gluon] ] = NoUnfold[Range[8]]

VSESign := -1

		(* Model particles  *)

M$ClassesDescription = {

  V[1] ==  { (* bosonB *)
	SelfConjugate -> True,
	Indices -> {},
	Mass -> mb,
	PropagatorLabel -> "B",
	PropagatorType -> Sine,
	PropagatorArrow -> None },

  F[1] ==  { (* fermion1 *)
	SelfConjugate -> False,
	Indices -> {},
	Mass -> m1,
	PropagatorLabel -> "p1",
	PropagatorType -> Straight,
	PropagatorArrow -> Forward },

  F[2] ==  { (* fermion2 *)
	SelfConjugate -> False,
	Indices -> {},
	Mass -> m2,
	PropagatorLabel -> "p2",
	PropagatorType -> Straight,
	PropagatorArrow -> Forward },

  F[3] ==  { (* fermion3 *)
	SelfConjugate -> False,
	Indices -> {},
	Mass -> m3,
	PropagatorLabel -> "p3",
	PropagatorType -> Straight,
	PropagatorArrow -> Forward },

  S[1] ==  { (* higgs *)
	SelfConjugate -> True,
	Indices -> {},
	Mass -> mh,
	PropagatorLabel -> "h",
	PropagatorType -> ScalarDash,
	PropagatorArrow -> None }}

prt["B"] = V[1]
prt["aP1"] = -F[1]
prt["p1"] = F[1]
prt["aP2"] = -F[2]
prt["p2"] = F[2]
prt["aP3"] = -F[3]
prt["p3"] = F[3]
prt["h"] = S[1]



GaugeXi[_] = 1


M$CouplingMatrices = {

  (*------    h  B  B  ------*)
   C[ S[1], V[1], V[1] ] == I g mb *
{ 
 { 1 } 
},
  (*------    aP1  p1  h  ------*)
   C[ -F[1], F[1], S[1] ] == - I g m1 / mb *
{ 
 { 1 },
 { 1 } 
},
  (*------    aP2  p2  h  ------*)
   C[ -F[2], F[2], S[1] ] == - I g m2 / mb *
{ 
 { 1 },
 { 1 } 
},
  (*------    aP3  p3  h  ------*)
   C[ -F[3], F[3], S[1] ] == - I g m1 / mb *
{ 
 { 1 },
 { 1 } 
},
  (*------    aP1  p1  B  ------*)
   C[ -F[1], F[1], V[1] ] == - I g *
{ 
 { 1 },
 { 1 } 
},
  (*------    aP2  p2  B  ------*)
   C[ -F[2], F[2], V[1] ] == - I g *
{ 
 { 1 },
 { 1 } 
},
  (*------    aP3  p3  B  ------*)
   C[ -F[3], F[3], V[1] ] == - I g *
{ 
 { 1 },
 { 1 } 
} 
}

M$LastModelRules = {}

Scan[ (RealQ[#] = True)&,
  { g, mb, m1, m2, m3, mh  } ]




