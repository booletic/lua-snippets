a = {1, 2, 3, 4}
x = 5

function poly (a, x)
   sum = 0

   for i = #a, 1, -1 do
      sum = sum + (a[#a - i + 1] * x^(i - 1))
   end

   return sum
end

print(poly(a, x))

-- curried version of function poly
function poly2 (a)
   sum = 0

   return function (x)
      for i = #a, 1, -1 do
	 sum = sum + (a[#a - i + 1] * x^(i - 1))
      end

      return sum
   end
end

f = poly2(a)
print(f(x))
