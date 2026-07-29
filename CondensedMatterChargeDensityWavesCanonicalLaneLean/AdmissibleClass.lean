import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure CDWAdmittedObject where
  system : Type u
  chargeDensityWave : system → Prop
  periodicPotential : Prop
  gapEquation : Prop
  conclusion : gapEquation

structure AdmissibleClass where
  object : CDWAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.gapEquation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse