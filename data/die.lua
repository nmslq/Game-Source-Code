function firstDie()
   game = create.game.sprite(0, -150, game, 50, 30)
   over = create.game.sprite(0, -100, over, 50, 30)
   fd = create.fd.text(0, 0, you died!, 30, sans)
   fd1 = create.fd1.text(0, 0, dont give up, 30, sans, 0)
end

function Die()
   game = create.game.sprite(0, -150, game, 50, 30)
   over = create.game.sprite(0, -100, over, 50, 30)
   die = create.die.text(0, 0, ..., 30, sans)
end

function Press()
   pr.fd(next fd1)
   pr.die()
   fd.fie = room.game.1
end