 module list

--A polymorphic abstract data type

import nat
import option
import bool
import ite
import eq
import Serialize
--The data type

infixr 7 ::, ++
data list a = nil | (::) a (list a)

--The functions

|||return the length of any given list
len: list a -> nat
len nil = O
len (n::l) = S (len l)

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| give a list and a predicate on elements return the sublist of elements for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

||| reduce a "list of a's" to a "b" using a function f having identity "id"
foldr: (a -> b -> b) -> b -> list a -> b
foldr f id nil = id
foldr f id (h :: t) = f h (list.foldr f id t)

||| a function that returns true if the element is in the list, false otherwise
member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

subsetElements: (eq a) => list a -> list a -> bool
subsetElements nil (h2::t2) = true
subsetElements (h1::t1) nil = false
subsetElements (h1::t1) (h2::t2) = and (member h1 (h2::t2)) (subsetElements t1 (h2::t2))

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ "," ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString (h::t) = "[" ++ (toStringList (h::t)) ++  "]"
