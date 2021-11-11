function sortMyFile(input, output)
   local infile = io.open(input, "r")
   lines = {}

   for line in infile:lines() do
      lines[#lines + 1] = line
   end

   test = io.open(output, "r")

   if test then
      test:close()
      print("Do you want to overwrite existing file? yes or no")
      local userInput = io.stdin:read()

      if userInput ~= "yes" then
	 goto endd
      end
   end

   outfile = io.open(output, "w")
   table.sort(lines)

   for _, l in ipairs(lines) do
      outfile:write(l, "\n")
   end

   outfile:close()
   ::endd::
   infile:close()
end
