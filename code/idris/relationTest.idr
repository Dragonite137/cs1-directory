import relation
import Person 
import list
import bool
import nat
import pair

years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

number: Nat
number = query2 people gender countOne plus 0

names'': String
names'' = query2 people gender name (++) ""

aveAge: pair Nat Nat
aveAge = mkPair (query2 people gender age plus 0) (query2 people gender countOne plus 0)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age
