function setting()
   setting.list(FPS Show,Player XY)
   fps.show.list(false,true)
   fps.show = true
   player.xy.list(false,true)
   player.xy = true
   fps.text(sys.fps)
   player.text(game.playerGetXY)
end
