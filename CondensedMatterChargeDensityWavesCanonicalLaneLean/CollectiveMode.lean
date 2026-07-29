import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure CollectiveModePackage where
  amplitudonMode : Prop
  phasonMode : Prop
  ramanScattering : Prop
  neutronScattering : Prop

structure CollectiveModeEvidence (P : CollectiveModePackage) where
  amplitudonModeClosed : P.amplitudonMode
  phasonModeClosed : P.phasonMode
  ramanScatteringClosed : P.ramanScattering
  neutronScatteringClosed : P.neutronScattering

def CollectiveModeClosed (P : CollectiveModePackage) : Prop :=
  P.amplitudonMode ∧ P.phasonMode ∧
  P.ramanScattering ∧ P.neutronScattering

theorem collective_mode_closed_from_evidence (P : CollectiveModePackage)
    (E : CollectiveModeEvidence P) : CollectiveModeClosed P := by
  exact And.intro E.amplitudonModeClosed
    (And.intro E.phasonModeClosed
      (And.intro E.ramanScatteringClosed E.neutronScatteringClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse