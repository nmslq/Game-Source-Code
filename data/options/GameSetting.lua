function inRoom()
   nameRoom(game setting)
end

function setting()
   setting.list(Difficulties,Window Size,Low End)
   difficulties.list(easy,normal,hard,hell)
   window size.default = 2080 * 1070
   low end.list(false,true)
   low end.default(false)
   if difficulty = easy then
     fight.difficulty(easy)
   end
   if difficulty = normal then
     fight.difficulty(normal)
   end
   if difficulty = hard then
     fight.difficulty(hard)
   end
   if difficulty = hell then
     fight.difficulty(hell)
   end
   if window.size = math.setting then
     window.size.tools(math.setting)
   end
   if low.end = true then
     fight.low(true)
   end
end
