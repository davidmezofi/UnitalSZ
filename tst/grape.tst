gap> LoadPackage("unitals", false);
true
gap> u := HermitianAbstractUnital(3);
HermitianAbstractUnital(3)
gap> StructureDescription(AutomorphismGroup(u));
"PSU(3,3) : C2"
gap> First([1..AU_NrKrcadinacUnitals], x -> Isomorphism(u, KrcadinacAbstractUnital(x)) <> fail);
1002
