import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure AdmissibleClass where
  object : CDWAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CDWWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
