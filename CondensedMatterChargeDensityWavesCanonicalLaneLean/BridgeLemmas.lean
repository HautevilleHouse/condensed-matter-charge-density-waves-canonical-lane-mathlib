import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CondensedMatterChargeDensityWavesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.gapEquation

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse