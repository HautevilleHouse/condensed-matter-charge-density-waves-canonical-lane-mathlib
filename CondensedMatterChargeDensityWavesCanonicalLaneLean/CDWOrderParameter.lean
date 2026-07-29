import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure CDWOrderParameter where
  modulationWaveVector : Type u
  condensateAmplitude : Type v
  peierlsDistortion : Prop
  periodicLatticeDistortion : Prop
  nestingCondition : Prop

structure CDWOrderParameterEvidence (Q : CDWOrderParameter) where
  peierlsDistortionClosed : Q.peierlsDistortion
  periodicLatticeDistortionClosed : Q.periodicLatticeDistortion
  nestingConditionClosed : Q.nestingCondition

def CDWOrderParameterClosed (Q : CDWOrderParameter) : Prop := 
  Q.peierlsDistortion ∧ Q.periodicLatticeDistortion ∧ Q.nestingCondition

theorem cdw_order_parameter_closed_from_evidence (Q : CDWOrderParameter) 
    (E : CDWOrderParameterEvidence Q) : CDWOrderParameterClosed Q := by
  exact And.intro E.peierlsDistortionClosed 
    (And.intro E.periodicLatticeDistortionClosed E.nestingConditionClosed)

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse