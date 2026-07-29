import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWPeierlsInstability

/-!
# Collective Modes Package (Amplitude and Phase)
-/

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

structure CollectiveModesPackage {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    {P : PeierlsInstabilityPackage F} where
  amplitudeMode : Prop
  phaseMode : Prop
  slidingConductivity : Prop
  pinningPotential : Prop

structure CollectiveModesEvidence {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    {P : PeierlsInstabilityPackage F} (C : CollectiveModesPackage P) where
  amplitudeModeClosed : C.amplitudeMode
  phaseModeClosed : C.phaseMode
  slidingConductivityClosed : C.slidingConductivity
  pinningPotentialClosed : C.pinningPotential

def CollectiveModesClosed {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    {P : PeierlsInstabilityPackage F} (C : CollectiveModesPackage P) : Prop :=
  C.amplitudeMode ∧ C.phaseMode ∧ C.slidingConductivity ∧ C.pinningPotential

theorem collective_modes_closed_from_evidence
    {A : AdmissibleClass} {F : FroehlichHamiltonianPackage A}
    {P : PeierlsInstabilityPackage F} (C : CollectiveModesPackage P) (E : CollectiveModesEvidence C) :
    CollectiveModesClosed C := by
  exact And.intro E.amplitudeModeClosed
    (And.intro E.phaseModeClosed (And.intro E.slidingConductivityClosed E.pinningPotentialClosed))

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse
