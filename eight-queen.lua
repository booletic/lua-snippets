N = 8	       --board size
found = false  -- a flag to quit on first solution
calls = 0      -- the number of times isplaceok was called
solution = 0   -- a counter for number of solutions found

-- check whether position (n, c) is free from attacks
function isplaceok (a, n, c)
   calls = calls + 1
   for i = 1, n - 1 do	-- for each queen already placed
      if (a[i] == c) or			-- same column?
	      (a[i] - i == c - n) or	-- same diagonal?
	      (a[i] + i == c + n) then	-- same diagonal?
	      return false		-- place can be attacked
      end
   end
   return true		-- no attacks; place is OK
end

-- print a boad
function printsolution (a)
   solution = solution + 1
   for i = 1, N do	-- for each row
      for j = 1, N do	-- and for each column
	 -- write "X" or "-" plus a space
	 io.write(a[i] == j and "X" or "-", " ")
	 end
      io.write("\n")
   end
   io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
   if n > N then	-- all queens have been placed?
      printsolution(a)
   elseif not found then--try to place n-th queen
      for c = 1, N do
	 if isplaceok(a, n, c) then
	    a[n] = c	-- place n-th queen at column 'c'
	    addqueen(a, n + 1)
	 end
      end
   end
end

-- add to board 'a' all queens from 'n' to 'N'
-- isplace(table, queen, column)
function addqueen2 (a, n)
   if n > N then
      for cc = 1, N do     -- cc column check
	 if not isplaceok(a, cc, a[cc]) then
	    return
	 end
      end
      printsolution(a)
   else
      for ca = 1, N do
	 a[n] = ca         -- ca column add
	 addqueen2(a, n + 1)
      end
   end
end

-- run the program
addqueen({}, 1)
-- 15_720 calls
-- 92 solutions

-- addqueen2({}, 1)
-- 50_880_536 calls
-- 92 solutions

print(calls)
print(solution)
