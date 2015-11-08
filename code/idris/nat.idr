module nat

import eq
import bool
import pair
import Serialize

-- Here's our data type definition.

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)


|||given two natural numbers, return their sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

|||Given two natural numbers, return their product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m

|||factorial function
--This is defined recursively by the multiplication of (S n) and n
--factorial, yielding (S n) factorial
fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

|||a function that defines the nth fibonacci number
fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

|||Given a pair of natural numbers, return their difference
subt: nat -> nat -> nat
subt O m = O
subt n O = n
subt (S n) (S m) = subt n m

|||the exponential function
exp: nat ->  nat -> nat
exp O n = O
exp n O = (S O)
exp m (S n) = mult (exp m n) m

|||Given a pair of natural numbers, (a,b), return true 
|||if a <= b otherwise return false
lep: nat ->  nat -> bool
lep O m = true
lep (S n) O = false
lep (S n) (S m) = lep n m

|||Given a pair of natural numbers, (a,b), return true
|||if a is equal to b, otherwise false
eqp: nat ->  nat -> bool
eqp O O = true
eqp (S O) O = false
eqp O (S O) = false
eqp (S n) (S m) = eqp n m

|||Given a pair of natural numbers, (a,b), return true
|||if a > b, otherwise false
gtp: nat -> nat -> bool
gtp n m = not (lep n m) 

|||Given a pair of natural numbers, (a, b), return true if a is greater than or equal to b, otherwise return false
gep: nat -> nat -> bool
gep O O = true
gep (S O) O = true
gep O (S O) = false
gep (S n) (S m) = gep n m

|||Given a pair of natural numbers, (a, b), return true if a is less than b
ltp: nat -> nat -> bool
ltp n m = not (gep n m)

||| Equal
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S n) = false
eql_nat (S n) (S m) = eql_nat n m

||| Not equal
neq: nat -> nat -> bool
neq n m = not (eql_nat n m)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
