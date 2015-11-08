module set

import ite
import list
import bool
import eq
import nat
import Serialize

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

||| return { given value } union given set
set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) (mkSet l) (mkSet (v::l))

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet s1) (mkSet s2) = and (subsetElements s1 s2) (subsetElements s2 s1) 

instance (eq a) => eq (set a) where
  eql (mkSet s1) (mkSet s2) = eql_set (mkSet s1) (mkSet s2)

instance (Serialize a) => Serialize (set a) where
  toString (mkSet l) = "{" ++ (toStringList l) ++ "}"

{-set_cardinality: set a -> nat

set_member: a -> set a -> bool

set_remove: a -> set a -> set a

set_union: set a -> set a -> set a

set_intersection: set a-> set a -> set a

set_difference: set a -> set a -> set a

set_forall: (a -> bool) -> (set a) -> bool

set_exists: (a -> bool) -> (set a) -> bool

set_witness: (a -> bool) -> (set a) -> option a

set_product: (set a) -> (set b) -> set (pair a b)

set_powerset: (set a) -> set (set a)-}

