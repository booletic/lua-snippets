local queue = require 'queue'

local q = queue.listNew()

queue.pushFirst(q, 1)
queue.pushFirst(q, 2)
queue.pushFirst(q, 3)
assert(queue.popFirst(q) == 3)
assert(queue.popFirst(q) == 2)
assert(queue.popFirst(q) == 1)