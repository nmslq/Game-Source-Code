controls.load()
shaders.cam()
Flx.room()
Flx.sprite()
Flx.text()
Flx.shaders()
Flx.cam()
Flx.path()
Flx.die()
Flx.sys.files()
Flx.function()

function inRoom()
   nameRoom(die)
end

function onUpdate()
   controls.Update()
end

function firstDie()
   game = create.game.sprite(0, -150, game, 50, 30)
   game.alpha = 0
   game.alpha = game.alpha + 1
   over = create.game.sprite(0, -100, over, 50, 30)
   over.alpha = 0
   over.alpha = over.alpha + 1
   fd = create.fd.text(0, 0, you died!, 30, sans)
   fd1 = create.fd1.text(0, 0, dont give up, 30, sans, 0)
end

function Die()
   game = create.game.sprite(0, -150, game, 50, 30)
   game.alpha = 0
   game.alpha = game.alpha + 1
   over = create.game.sprite(0, -100, over, 50, 30)
   over.alpha = 0
   over.alpha = over.alpha + 1
   die = create.die.text(0, 0, ..., 30, sans)
end

function addControls()
   if Android then
     Add.controls(A)
   end
end

function onPress()
   setRoom(menu)
end
