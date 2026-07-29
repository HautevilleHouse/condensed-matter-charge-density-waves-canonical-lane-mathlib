import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CondensedMatterChargeDensityWavesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse