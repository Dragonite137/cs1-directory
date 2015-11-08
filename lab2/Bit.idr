module Bit

-- Data type
data Bit = one | zero


-- Functions
change: Bit -> Bit
change one = zero
change zero = one

iden: Bit -> Bit
iden one = one
iden zero = zero


