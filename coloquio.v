Inductive bool : Type :=
  | true : bool
  | false : bool.

Inductive nat : Type :=
  | O : nat
  | S : nat -> nat.

Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
  | O => m
  | S n' => S (plus n' m)
end.

Compute plus (S O) (S (S (O))).

Theorem plus_n_0 : forall (n : nat), plus n O = n.
Proof.
  intros n.
  induction n.
  simpl. reflexivity.
  simpl.
  rewrite IHn.
  reflexivity.
Qed.

Theorem plus_n_Sm : forall n m: nat, S (plus n m) = plus n (S m).
Proof.
  intros n m.
  induction n.
  - simpl. reflexivity.
  - simpl. rewrite IHn.
    reflexivity.
Qed.

Theorem plus_comm : forall (n m : nat), plus n m = plus m n.
Proof.
  intros n m.
  induction n.
  - simpl. rewrite plus_n_0. reflexivity.
  - simpl. rewrite IHn. rewrite plus_n_Sm.
    reflexivity.
Qed.

Theorem proof : forall (A B C : Type), (B -> C) -> (A -> B) -> A -> C.
Proof.
  intros A B C f g x.
  apply g in x.
  apply f in x.
  apply x.
Qed.

Theorem proof_with_lambda : forall (A B C : Type), (B -> C) -> (A -> B) -> A -> C.
Proof.
  apply (fun A B C f g x => f (g x)).
Qed.
