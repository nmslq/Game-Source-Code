function inRoom()
   nameRoom(controls setting)
end

function onCreate()
   bg = create.bg.sprite(0,0,menu)
   bg.scale(2.3,2.3)
end

function setting()
   controls.up.text(keyboard.change)
   controls.left.text(keyboard.change)
   controls.right.text(keyboard.change)
   controls.down.text(keyboard.change)
   controls.A.text(keyboard.change)
   controls.B.text(keyboard.change)
   controls.C.text(keyboard.change)
   controls.S.text(keyboard.change)
end
