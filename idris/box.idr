module Box
import newbool

data Box = mkBox newbool

b1: Box
b1 = mkBox true

b2: Box
b2 = mkBox false

unbox: Box -> newbool
unbox(mkBox b) = b
