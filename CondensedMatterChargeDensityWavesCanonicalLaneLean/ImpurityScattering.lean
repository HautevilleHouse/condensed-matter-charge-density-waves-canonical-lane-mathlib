import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure ImpurityScatteringPackage where
  weakLocalization : Prop
  phaseCoherenceLength : Prop
  magnetoresistance : Prop
  quantumCorrection : Prop

structure ImpurityScatteringEvidence (P : ImpurityScatteringPackage) where
  weakLocalizationClosed : P.weakLocalization
  phaseCoherenceLengthClosed : P.phaseCoherenceLength
  magnetoresistanceClosed : P.magnetoresistance
  quantumCorrectionClosed : P.quantumCorrection

def ImpurityScatteringClosed (P : ImpurityScatteringPackage) : Prop :=
  P.weakLocalization ∧ P.phaseCoherenceLength ∧
  P.magnetoresistance ∧ P.quantumCorrection

theorem impurity_scattering_closed_from_evidence (P : ImpurityScatteringPackage)
    (E : ImpurityScatteringEvidence P) : ImpurityScatteringClosed P := by
  exact And.intro E.weakLocalizationClosed
    (And.intro E.phaseCoherenceLengthClosed
      (And.intro E.magnetoresistanceClosed E.quantumCorrectionClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse