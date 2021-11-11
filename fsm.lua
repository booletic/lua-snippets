function room1 ()
   print("You are in room1")
   local call = room1
   local move = io.read()
   if move == "south" then call = room3
   elseif move == "east" then call = room2
   else
      print("invalid move")
   end
   call()
end

function room2 ()
   print("You are in room2")
   local call = room2
   local move = io.read()
   if move == "south" then call = room4
   elseif move == "west" then call = room1
   else
      print("invalid move")
   end
   call()
end

function room3 ()
   print("You are in room3")
   local call = room3
   local move = io.read()
   if move == "north" then call = room1
   elseif move == "east" then call = room4
   else
      print("invalid move")
   end
   call()
end

function room4 ()
   print("Congratulations, you won!")
end

room1()
