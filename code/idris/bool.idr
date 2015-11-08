-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool

import Serialize

data bool = true | false

--A different way of thinking about the binary bool functions 
id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or true _ = true
or _ true = true
or _ _ = false

xor: bool -> bool -> bool
xor true true = false
xor false false = true
xor _ _ = true

nand: bool -> bool -> bool
nand a b = not (and a b)

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
