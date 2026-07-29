import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure KohnAnomalyPackage where
  phononSoftening : Prop
  waveVectorDependence : Prop
  electronicSusceptibility : Prop
  nestingDivergence : Prop

structure KohnAnomalyEvidence (K : KohnAnomalyPackage) where
  phononSofteningClosed : K.phononSoftening
  waveVectorDependenceClosed : K.waveVectorDependence
  electronicSusceptibilityClosed : K.electronicSusceptibility
  nestingDivergenceClosed : K.nestingDivergence

def KohnAnomalyClosed (K : KohnAnomalyPackage) : Prop := 
  K.phononSoftening ∧ K.waveVectorDependence ∧ K.electronicSusceptibility ∧ K.nestingDivergence

theorem kohn_anomaly_closed_from_evidence (K : KohnAnomalyPackage) 
    (E : KohnAnomalyEvidence K) : KohnAnomalyClosed K := by
  exact And.intro E.phononSofteningClosed
    (And.intro E.waveVectorDependenceClosed
      (And.intro E.electronicSusceptibilityClosed E.nestingDivergenceClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse