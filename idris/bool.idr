module bool 
data bool = true | false

id: bool -> bool
id true = true
id false = false

not: bool -> bool
not true = false
not false = true

any: bool -> bool
any true = true
any false = true

yna: bool -> bool
yna true = false
yna false = false
