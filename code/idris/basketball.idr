module basketball

import relation
import bool

|||A record type that is equivalent to:
|||(data basketball = mkBasketball String Nat Nat)
|||A basketball has a name points and assists

record basketball where
    constructor mkBasketball
    name : String
    points : Nat
    rebounds : Nat
    conference: bool

-- An example value of type basketball
b: basketball
b = mkBasketball "Kawhi" 16 3 true

b2: basketball
b2 = mkBasketball "Lebron" 25 7 false

b3: basketball
b3 = mkBasketball "John" 18 11 false

b4: basketball
b4 = mkBasketball "Chris" 20 9 true

b5: basketball
b5 = mkBasketball "Kevin" 29 5 true

n: String
n = name b

n2: String
n2 = name b2

n3: String
n3 = name b3

p: Nat
p = points b

p2: Nat
p2 = points b2

p3: Nat
p3 = points b3

r: Nat
r = rebounds b

r2: Nat
r2 = rebounds b2

r3: Nat
r3 = rebounds b3
