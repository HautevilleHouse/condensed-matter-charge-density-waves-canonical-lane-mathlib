import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure PhasonDynamicsPackage where
  slidingMode : Prop
  pinningPotential : Prop
  nonlinearConductivity : Prop
  depinningThreshold : Prop

structure PhasonDynamicsEvidence (P : PhasonDynamicsPackage) where
  slidingModeClosed : P.slidingMode
  pinningPotentialClosed : P.pinningPotential
  nonlinearConductivityClosed : P.nonlinearConductivity
  depinningThresholdClosed : P.depinningThreshold

def PhasonDynamicsClosed (P : PhasonDynamicsPackage) : Prop :=
  P.slidingMode ∧ P.pinningPotential ∧
  P.nonlinearConductivity ∧ P.depinningThreshold

theorem phason_dynamics_closed_from_evidence (P : PhasonDynamicsPackage)
    (E : PhasonDynamicsEvidence P) : PhasonDynamicsClosed P := by
  exact And.intro E.slidingModeClosed
    (And.intro E.pinningPotentialClosed
      (And.intro E.nonlinearConductivityClosed E.depinningThresholdClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse