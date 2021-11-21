s = "a whole new world"

s2 = string.gsub(s, "%s", ";") 


function nsplit (s)
   local t = {}

   for w in string.gmatch(s, "%a+") do
      t[#t + 1] = w
   end

   return t
end

-- lua-users.org
function split (str, sep)
   local t = {}
   local f = string.format("([^%s]+)", sep)

   str:gsub(f, function (x) t[#t + 1] = x end)

   return t
end
