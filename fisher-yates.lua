function shuffle (...)
   local arg = table.pack(...)
   print(arg)
   for i = 1, arg.n - 2 do
      j = math.random(arg.n)
      arg[i], arg[j] = arg[j], arg[i]
   end
   return table.unpack(arg)
end

print(shuffle(1, 2, 3, 4, 5, 6, 7, 8, 9))
