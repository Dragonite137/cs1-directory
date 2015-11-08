module dna

import list
import pair
import bool
import nat
import ite

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b)::t) = a::(strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b)::t) = b::(strand2 t)

compPair: base -> pair base base
compPair a = mkPair a (complement_base a)

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = map compPair (h::t)

baseBool: base -> base -> bool
baseBool A A = true
baseBool T T = true
baseBool C C = true
baseBool G G = true
baseBool _ _ = false

baseNat: list base -> base -> list nat
baseNat nil a = nil
baseNat (h::t) a = (ite (baseBool h a) ((S O)::(baseNat t a)) (O::(baseNat t a)))

countBase: list base -> base -> nat
countBase nil a = O
countBase (h::t) a = (list.foldr add O (baseNat (h::t) a))
