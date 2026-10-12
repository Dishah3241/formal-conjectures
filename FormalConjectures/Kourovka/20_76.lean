/-
Copyright 2026 The Formal Conjectures Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/
module

public import FormalConjecturesUtil

/-!
# Conjecture 20.76
by L. Pyber
*Reference:* [The Kourovka Notebook](https://arxiv.org/abs/1401.0300v40)
!-/

@[expose] public section
namespace Kourovka.«20.76»
/--
Let $G$ be a finite $p$-group and assume that all abelian normal subgroups of $G$
have order at most $p^k$. Is it true that every abelian subgroup of $G$ has order at most
$p^{2k}$?

The answer is no. [Muliarchyk, Proposition 6.1](https://kourovkanotebookorg.wordpress.com/wp-content/uploads/2026/09/kourovka_20_75-20_76_solution.pdf)
gives a group of order $2^{145}$ whose abelian normal subgroups have order at most $2^{42}$,
with an elementary abelian subgroup of order $2^{85} > 2^{84}$.
The negative answer is recorded in [The Kourovka Notebook](https://kourovkanotebookorg.wordpress.com/wp-content/uploads/2026/10/21tkt.pdf),
printed p. 167.
-/
@[category research solved, AMS 20]
theorem kourovka_20_76 : answer(False) ↔
    ∀ᵉ (p : ℕ) (hp : p.Prime) (G : Type) (_ : Group G) (hg : IsPGroup p G) (_ : Finite G) (k : ℕ)
    (h : ∀ H: Subgroup G, H.Normal ∧ IsMulCommutative H → Nat.card H ≤ p ^ k),
    (∀ H : Subgroup G, IsMulCommutative H → Nat.card H ≤ p ^ (2 * k)) := by
  sorry

end Kourovka.«20.76»
