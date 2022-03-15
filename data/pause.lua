function pause()
   pause.list(Resume,Reset level,Exit to menu)
   pause = create.pause.text(0,0[next.y-20],pause.list,sans)
end

function onPress()
   case Resume
     close()
   case Reset level
     reset()
   case Exit to menu
     exit()
   end
end

function addControls()
   if Android then
     Add.controls(up, down, A)
   end
end
