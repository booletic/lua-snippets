function insertutf8(s1, i, s2)
   return string.sub(s1, 0, utf8.offset(s1, -1)) .. s2 .. string.sub(s1, utf8.offset(s1, i))
end

print(insertutf8("ação", 5, "!"))
