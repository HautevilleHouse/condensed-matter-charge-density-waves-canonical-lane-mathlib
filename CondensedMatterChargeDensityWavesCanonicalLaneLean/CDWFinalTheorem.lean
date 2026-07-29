import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWBridgeLemmas
import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWGateLemmas

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

def ConstrainedCDWClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cdw_endgame (A : AdmissibleClass) :
    ConstrainedCDWClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
