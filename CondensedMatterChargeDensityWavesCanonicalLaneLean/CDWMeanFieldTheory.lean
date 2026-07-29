import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure CDWMeanFieldPackage where
  electronPhononCoupling : Prop
  nestedFermiSurface : Prop
  gapEquation : Prop
  transitionTemperature : Prop

structure CDWMeanFieldEvidence (P : CDWMeanFieldPackage) where
  electronPhononCouplingClosed : P.electronPhononCoupling
  nestedFermiSurfaceClosed : P.nestedFermiSurface
  gapEquationClosed : P.gapEquation
  transitionTemperatureClosed : P.transitionTemperature

def CDWMeanFieldClosed (P : CDWMeanFieldPackage) : Prop :=
  P.electronPhononCoupling ∧ P.nestedFermiSurface ∧
  P.gapEquation ∧ P.transitionTemperature

theorem cdw_mean_field_closed_from_evidence (P : CDWMeanFieldPackage)
    (E : CDWMeanFieldEvidence P) : CDWMeanFieldClosed P := by
  exact And.intro E.electronPhononCouplingClosed
    (And.intro E.nestedFermiSurfaceClosed
      (And.intro E.gapEquationClosed E.transitionTemperatureClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse