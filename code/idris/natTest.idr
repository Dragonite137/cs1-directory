module natTest

import nat
import bool
import Serialize

--expecting O
addTest1: nat
addTest1 = add O O

--expecting (S (S O))
addTest2: nat
addTest2 = add O (S (S O))

--expecting (S O)
addTest3: nat
addTest3 = add (S O) O

--expecting (S (S (S (S (S O)))))
addTest4: nat
addTest4 = add (S (S O)) (S (S (S O)))

--expecting O
multtest1: nat
multtest1 = mult O (S (S O))

--expecting (S (S (S (S (S (S (S (S (S (S (S (S O))))))))))))
multtest2: nat
multtest2 = mult (S (S (S O))) (S (S (S (S O))))

--expecting (S O)
facttest1: nat
facttest1 = fact O

--expecting (S (S (S (S (S (S O))))))
facttest2: nat
facttest2 = fact (S (S (S O)))

--expecting O
fibtest1: nat
fibtest1 = fib O

--expecting (S O)
fibtest2: nat
fibtest2 = fib (S O)

--expecting (S (S (S (S (S (S (S (S O)))))
fibtest3: nat
fibtest3 = fib (S (S (S (S (S (S O))))))

--expecting O
exptest1: nat
exptest1 = exp O (S O)

--expecting (S O)
exptest2: nat
exptest2 = exp (S (S O)) O

--expecting (S (S (S (S (S (S (S (S O))))))))
exptest3: nat
exptest3 = exp (S (S O)) (S (S (S O)))

--expecting O
subtest1: nat
subtest1 = subt O (S O)

--expecting (S (S O))
subtest2: nat
subtest2 = subt (S (S O)) O

--expecting (S (S (S O)))
subtest3: nat
subtest3 = subt (S (S (S (S (S O))))) (S (S O))

--expecting true
letest1: bool
letest1 = lep O O

--expecting true
letest2: bool
letest2 = lep O (S (S O))

--expecting false
letest3: bool
letest3 = lep (S (S O)) O

--expecting true
eqtest1: bool
eqtest1 = eqp (S (S O)) (S (S O))

--expecting false
eqtest2: bool
eqtest2 = eqp (S (S O)) (S O)

--expecting false
eqtest3: bool
eqtest3 = eqp (S O) (S (S O))

--expecting true
gttest1: bool
gttest1 = gtp (S (S O)) (S O)

--expecting false
gttest2: bool
gttest2 = gtp (S (S O)) (S (S O))

--expecting false
gttest3: bool
gttest3 = gtp O (S O)

--expecting true
getest1: bool
getest1 = gep (S (S O)) (S O)

--expecting true
getest2: bool
getest2 = gep (S (S O)) (S (S O))

--expecting false
getest3: bool
getest3 = gep O (S O)

--expecting false
lttest1: bool
lttest1 = ltp (S O) O

--expecting false
lttest2: bool
lttest2 = ltp (S O) (S O)

--expecting true
lttest3: bool
lttest3 = ltp (S O) (S (S O))

s: String
s = toString (S (S (S O))) 
