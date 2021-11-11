b = {1, nil, 2, 3}
c = {1, 2, 3, 4}
d = {1, 2, 3, nil, 5}

function seqp(b)
   local check
   for i = 1, #b do
      check = (math.type(b[i]) ~= nil)
      if not check then goto hello end
   end
   ::hello::
   return check
end

print(seqp(b))
print(seqp(c))
print(seqp(d))
