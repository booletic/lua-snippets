local M = {}

function M.listNew ()
    return {first = 0, last = -1}
end

function M.pushFirst (list, value)
    local first = list.first - 1
    list.first = first
    list[first] = value
end

function M.pushLast (list, value)
    local last = list.last + 1
    list.last = last
    list[last] = value
end

function M.popFirst (list)
    local first = list.first
    if first > list.last then error("list is empty") end
    local value = list[first]
    list[first] = nil
    list.first = first + 1
    return value
end

function M.popLast (list)
    local last = list.last
    if list.first > last then error("list is empty") end
    local value = list[last]
    list[last] = nil
    list.last = last - 1
    return value
end

return M