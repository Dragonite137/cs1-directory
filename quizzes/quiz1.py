'''Plot the function $f(x) = x^2$ for integer values of x
ranging from 0 inclusive to 10 exclusive.'''

import pylab as pl

x = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]

fx = [0, -1, -1.72, -2, -3, -4, -3, -2, -1.72, -1, 0]

y = [-3, -2, 2,  3]

fy = [5, 5, 5, 5]

pl.plot(x, fx)

pl.plot(y, fy)
pl.show()
