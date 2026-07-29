import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWAdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CDWWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
