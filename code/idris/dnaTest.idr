module dnaTest

import dna
import list
import pair

--expecting T
cbTest1: base
cbTest1 = complement_base A

--expecting A
cbTest2: base
cbTest2 = complement_base T

--expecting C
cbTest3: base
cbTest3 = complement_base G

--expecting G
cbTest4: base
cbTest4 = complement_base C

--expecting nil
csTest1: list base
csTest1 = complement_strand nil

--expecting (T::A::G::C::nil)
csTest2: list base
csTest2 = complement_strand (A::T::C::G::nil)

--expecting nil
s1Test1: list base
s1Test1 = strand1 nil

--expecting (A::C::nil)
s1Test2: list base
s1Test2 = strand1 ((mkPair A T)::(mkPair C G)::nil)

--expecting nil
s2Test1: list base
s2Test1 = strand2 nil

--expecting (T::G::nil)
s2Test2: list base
s2Test2 = strand2 ((mkPair A T)::(mkPair C G)::nil)
