import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure PeierlsTransitionPackage where
  nestingVector : Type u
  gapOpening : Prop
  electronicEnergyGain : Prop
  latticeEnergyCost : Prop
  criticalTemperature : Prop

structure PeierlsTransitionEvidence (P : PeierlsTransitionPackage) where
  gapOpeningClosed : P.gapOpening
  electronicEnergyGainClosed : P.electronicEnergyGain
  latticeEnergyCostClosed : P.latticeEnergyCost
  criticalTemperatureClosed : P.criticalTemperature

def PeierlsTransitionClosed (P : PeierlsTransitionPackage) : Prop := 
  P.gapOpening ∧ P.electronicEnergyGain ∧ P.latticeEnergyCost ∧ P.criticalTemperature

theorem peierls_transition_closed_from_evidence (P : PeierlsTransitionPackage) 
    (E : PeierlsTransitionEvidence P) : PeierlsTransitionClosed P := by
  exact And.intro E.gapOpeningClosed
    (And.intro E.electronicEnergyGainClosed
      (And.intro E.latticeEnergyCostClosed E.criticalTemperatureClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse