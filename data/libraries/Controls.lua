function Controls()
   if android then
     reload.controls()
     Add.controls(controls)
     controls = create.controls.animatedSprite(0, 0, 'controls', 30, 30)
     add.animation.loop('controls','A')
     add.animation.loop('controls','B')
     add.animate.loop('controls','C')
     add.animation.loop('controls','S')
     add.animation.loop('controls','up')
     add.animation.loop('controls','down')
     add.animation.loop('controls','right')
     add.animation.loop('controls','left')
     if lua.help {addAndroidControls('up')} then
       play.animation.loop('controls','up')
     elseif lua.help {addAndroidControls('down')} then
       play.animation.loop('controls','down')
     elseif lua.help {addAndroidControls('left')} then
       play.animation.loop('controls','left')
     elseif lua.help {addAndroidControls('right')} then
       play.animation.loop('controls','right')
     elseif lua.help {addAndroidControls('full')} then
       play.animation.loop('controls','up,down,left,right')
     elseif lua.help {addAndroidControls('A')} then
       play.animation.loop('controls','A')
     elseif lua.help {addAndroidControls('B')} then
       play.animation.loop('controls','B')
     elseif lua.help {addAndroidControls('C')} then
       play.animation.loop('controls','C')
     elseif lua.help {addAndroidControls('S')} then
       play.animation.loop('controls','S')
     end
     shaders.createCamera('CameraControls')
     controls.set.camera('CameraControls')
        if android then
          Test.controls()
          if up next.up()
          if down next.down()
          if left next.left()
          if right next.right()
          if A Press()
          if B Esc Exit()
          if C speed+()
          if S shoot()
       end
   end
   if destop then
     Test.controls()
     if up or keyboard next.up()
     if down or keyboard next.down()
     if left or keyboard next.left()
     if right or keyboard next.right()
     if A or keyboard Press()
     if B or keyboard Esc Exit()
     if C or keyboard speed+()
     if S or keyboard shoot()
   end
end
