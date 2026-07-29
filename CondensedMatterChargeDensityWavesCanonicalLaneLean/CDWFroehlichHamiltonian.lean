import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWAdmissibleClass

/-!
# Fröhlich Hamiltonian Package
-/

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure FroehlichHamiltonianPackage (A : AdmissibleClass) where
  electronPhononCoupling : Prop
  gapEquation : Prop
  meanFieldSolution : Prop
  collectiveModeDispersion : Prop

structure FroehlichHamiltonianEvidence {A : AdmissibleClass} (F : FroehlichHamiltonianPackage A) where
  electronPhononCouplingClosed : F.electronPhononCoupling
  gapEquationClosed : F.gapEquation
  meanFieldSolutionClosed : F.meanFieldSolution
  collectiveModeDispersionClosed : F.collectiveModeDispersion

def FroehlichHamiltonianClosed {A : AdmissibleClass} (F : FroehlichHamiltonianPackage A) : Prop :=
  F.electronPhononCoupling ∧ F.gapEquation ∧ F.meanFieldSolution ∧ F.collectiveModeDispersion

theorem froehlich_hamiltonian_closed_from_evidence
    {A : AdmissibleClass} (F : FroehlichHamiltonianPackage A) (E : FroehlichHamiltonianEvidence F) :
    FroehlichHamiltonianClosed F := by
  exact And.intro E.electronPhononCouplingClosed
    (And.intro E.gapEquationClosed (And.intro E.meanFieldSolutionClosed E.collectiveModeDispersionClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
