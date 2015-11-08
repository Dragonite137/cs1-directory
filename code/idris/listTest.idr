module listTest

import nat
import list
import bool

lengthTest1: Nat
lengthTest1 = len ((S O) :: nil)

lengthTest2: Nat
lengthTest2 = len ((S O) :: (S (S O)) :: nil)

appTest1: list Nat
appTest1 = (nil) ++ (1 :: nil)

appTest2: list Nat
appTest2 = (1 :: nil) ++ (2 :: nil)

mapTest1: list bool
mapTest1 = map evenb (O :: (S O) :: (S O):: (S (S O)) :: (S (S (S (S O)))) :: nil) 

mapTest2: list nat
mapTest2 = map fact ((S O):: (S (S O)) :: (S (S (S O))) :: nil) 

filterTest1: list nat
filterTest1 = filter evenb (O :: (S O):: (S (S O)) :: (S (S (S (S O)))) :: nil)

filterTest2: list nat
filterTest2 = filter oddb ((S O):: (S (S O)) :: (S (S (S O))) :: nil) 


