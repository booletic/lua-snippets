local a = {
    {1, 2, nil},
    {nil, 5, nil},
    {7, 8, nil}
}

local b = {
    {1, nil, 1},
    {1, 1, nil},
    {1, nil, 1}
}

function mult (a, b)
    local c = {}
    for i = 1, #a do
	local resultline = {}
	for k, va in pairs(a[i]) do
	    for j, vb in pairs(b[k]) do
		local res = (resultline[j] or 0) + va * vb
		resultline[j] = (res ~= 0) and res or nil
	    end
	end
	c[i] = resultline
    end
    return c
end

function add (a, b)
    local c = {}
    for i = 1, #a do
	local resultline = {}
	for k, va in pairs(a[i]) do
	    for j, vb in pairs(b[k]) do
		local res = (a[i][j] or 0) + (b[i][j] or 0)
		resultline[j] = (res ~= 0) and res or nil
	    end
	end
	c[i] = resultline
    end
    return c
end

local c = mult(a, b)
local d = add(a, b)

-- for k, v in pairs(c) do print(table.unpack(v)) end
for k, v in pairs(d) do print(table.unpack(v)) end
