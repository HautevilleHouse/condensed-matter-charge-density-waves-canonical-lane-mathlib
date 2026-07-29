import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWFroehlichHamiltonian

/-!
# Peierls Instability Package
-/

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure PeierlsInstabilityPackage {A : AdmissibleClass} (F : FroehlichHamiltonianPackage A) where
  electronicSusceptibility : Prop
  nestingCondition : Prop
  gapOpening : Prop
  energyLowering : Prop

structure PeierlsInstabilityEvidence {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    (P : PeierlsInstabilityPackage F) where
  electronicSusceptibilityClosed : P.electronicSusceptibility
  nestingConditionClosed : P.nestingCondition
  gapOpeningClosed : P.gapOpening
  energyLoweringClosed : P.energyLowering

def PeierlsInstabilityClosed {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    (P : PeierlsInstabilityPackage F) : Prop :=
  P.electronicSusceptibility ∧ P.nestingCondition ∧ P.gapOpening ∧ P.energyLowering

theorem peierls_instability_closed_from_evidence
    {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    (P : PeierlsInstabilityPackage F) (E : PeierlsInstabilityEvidence P) :
    PeierlsInstabilityClosed P := by
  exact And.intro E.electronicSusceptibilityClosed
    (And.intro E.nestingConditionClosed (And.intro E.gapOpeningClosed E.energyLoweringClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
