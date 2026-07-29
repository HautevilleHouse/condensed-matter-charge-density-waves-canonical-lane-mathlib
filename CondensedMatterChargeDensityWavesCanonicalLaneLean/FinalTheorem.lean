import canonicalLaneMathlib.AdmissibleClass
import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWOrderParameter
import CondensedMatterChargeDensityWavesCanonicalLaneLean.FrohlichHamiltonian
import CondensedMatterChargeDensityWavesCanonicalLaneLean.PeierlsTransition
import CondensedMatterChargeDensityWavesCanonicalLaneLean.KohnAnomaly
import CondensedMatterChargeDensityWavesCanonicalLaneLean.CDWCollectiveModes

namespace HautevilleHouse
namespace CondensedMatterChargeDensityWavesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CDWOrderParameterClosed (A.object.cdwOrderParameter) ∧
  FrohlichHamiltonianClosed (A.object.frohlichHamiltonian) ∧
  PeierlsTransitionClosed (A.object.peierlsTransition) ∧
  KohnAnomalyClosed (A.object.kohnAnomaly) ∧
  CDWCollectiveModesClosed (A.object.cdwCollectiveModes)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : CDWOrderParameterClosed (A.object.cdwOrderParameter) :=
    cdw_order_parameter_closed_from_evidence (A.object.cdwOrderParameter)
      (A.object.cdwOrderParameterEvidence)
  have h2 : FrohlichHamiltonianClosed (A.object.frohlichHamiltonian) :=
    frohlich_hamiltonian_closed_from_evidence (A.object.frohlichHamiltonian)
      (A.object.frohlichHamiltonianEvidence)
  have h3 : PeierlsTransitionClosed (A.object.peierlsTransition) :=
    peierls_transition_closed_from_evidence (A.object.peierlsTransition)
      (A.object.peierlsTransitionEvidence)
  have h4 : KohnAnomalyClosed (A.object.kohnAnomaly) :=
    kohn_anomaly_closed_from_evidence (A.object.kohnAnomaly)
      (A.object.kohnAnomalyEvidence)
  have h5 : CDWCollectiveModesClosed (A.object.cdwCollectiveModes) :=
    cdw_collective_modes_closed_from_evidence (A.object.cdwCollectiveModes)
      (A.object.cdwCollectiveModesEvidence)
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCDWClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cdw_endgame (A : AdmissibleClass) : ConstrainedCDWClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CondensedMatterChargeDensityWavesCanonicalLaneLean
end HautevilleHouse