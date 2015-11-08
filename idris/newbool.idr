module newbool

data newbool = true | false

id: newbool -> newbool
id b = b

constTrue: newbool -> newbool
constTrue _ = true


