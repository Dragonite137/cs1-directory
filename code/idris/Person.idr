module Person

import bool
import list
import nat

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height : Nat
    gender: bool
    
-- An example value of type Person
p: Person
p = MkPerson "Mary" 23 60 true

p2: Person
p2 = MkPerson "Ben" 18 70 false

p3: Person
p3 = MkPerson "Peter" 16 72 false
-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

t2: Nat
t2 = age p2

t3: Nat
t3 = age p3
-- Here we get the name of person p.
n: String
n = name p

n2: String
n2 = name p2

n3: String
n3 = name p3
-- expect "Tommy"

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p

setGender: Person -> bool -> Person
setGender p g = record { gender = g } p

people: list Person
people = p::p2::p3::nil
