module realWorld

import integers

data schrodinger = alive | dead | both

f1: schrodinger -> numbers
f1 alive = one
f1 dead = zero
f1 both = neither

