import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure FrohlichHamiltonianPackage where
  electronPhononCoupling : Prop
  phononDispersion : Prop
  electronDispersion : Prop
  gapEquation : Prop

structure FrohlichHamiltonianEvidence (H : FrohlichHamiltonianPackage) where
  electronPhononCouplingClosed : H.electronPhononCoupling
  phononDispersionClosed : H.phononDispersion
  electronDispersionClosed : H.electronDispersion
  gapEquationClosed : H.gapEquation

def FrohlichHamiltonianClosed (H : FrohlichHamiltonianPackage) : Prop := 
  H.electronPhononCoupling ∧ H.phononDispersion ∧ H.electronDispersion ∧ H.gapEquation

theorem frohlich_hamiltonian_closed_from_evidence (H : FrohlichHamiltonianPackage) 
    (E : FrohlichHamiltonianEvidence H) : FrohlichHamiltonianClosed H := by
  exact And.intro E.electronPhononCouplingClosed
    (And.intro E.phononDispersionClosed
      (And.intro E.electronDispersionClosed E.gapEquationClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse