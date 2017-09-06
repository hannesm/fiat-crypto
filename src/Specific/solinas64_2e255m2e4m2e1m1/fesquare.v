Require Import Crypto.Arithmetic.PrimeFieldTheorems.
Require Import Crypto.Specific.solinas64_2e255m2e4m2e1m1.Synthesis.

(* TODO : change this to field once field isomorphism happens *)
Definition square :
  { square : feBW_loose -> feBW_tight
  | forall a, phiBW_tight (square a) = F.mul (phiBW_loose a) (phiBW_loose a) }.
Proof.
  Set Ltac Profiling.
  Time synthesize_square ().
  Show Ltac Profile.
Time Defined.

Print Assumptions square.