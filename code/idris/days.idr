--nextDay gives you the next day of the week 
--nextWeekday gives you the next weekday, ie friday as an input
--would give you monday as an output
module days

--Data type
data days = monday | tuesday | wednesday| thursday | friday | saturday | sunday

--Functions: Input type: days Output type: days
nextDay: days -> days
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday
nextDay _ = monday


nextWeekday: days -> days
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday _ = monday

