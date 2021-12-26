local Set = require 'metatables'

local s1 = Set.new({20, 30, 50})
local s2 = Set.new({60, 10})
local s3 = s1 + s2
assert(Set.tostring(s3) == '{50, 60, 10, 30, 20}')
assert(Set.tostring((s1 + s2) * s2) == '{60, 10}')
assert(Set.tostring(s1 - s2) == '{20, 50, 30}')
assert(#s1 == 3)