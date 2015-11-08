module boolTest

import bool
import Serialize

--expecting true
andtest1: bool
andtest1 = and true true

--expecting false
andtest2: bool
andtest2 = and false true

--expecting false
ortest1: bool
ortest1 = or false false

--expecting true
ortest2: bool
ortest2 = or false true

--expecting false
nandtest1: bool
nandtest1 = nand true true

--expecting true
nandtest2: bool
nandtest2 = nand false true

--expecting true
xortest1: bool
xortest1 = xor true false

--expecting true
xortest2: bool
xortest2 = xor false true

--expecting false
xortest3: bool
xortest3 = xor true true

sB: String
sB = toString true
