function Controls()
   if android then
     reload.controls()
     Add.controls(controls)
     controls = create.controls.animSprite(0, 0, 'controls', 30, 30)
     add.animate('controls','A')
     add.animate('controls','B')
     add.animate('controls','C')
     add.animate('controls','S')
     add.animate('controls','up')
     add.animate('controls','down')
     add.animate('controls','right')
     add.animate('controls','left')
     if up play.animate('controls','up')
     if down play.animate('controls','down')
     if left play.animate('controls','left')
     if right play.animate('controls','right')
     if full play.animate('controls','up,down,left,right')
     if A play.animate('controls','A')
     if B play.animate('controls','B')
     if C play.animate('controls','C')
     if S play.animate('controls','S')
     shaders.FlxG.createCamera('controls')
     controls.set.camera('controls')
        if android then
          Test.controls()
          if up next.up
          if down next.down
          if left next.left
          if right next.right
          if A Press
          if B Esc Exit
          if C speed+
          if S shoot
       end
   end
   if destop then
     Test.controls()
     if up or keyboard next.up
     if down or keyboard next.down
     if left or keyboard next.left
     if right or keyboard next.right
     if A or keyboard Press
     if B or keyboard Esc Exit
     if C or keyboard speed+
     if S or keyboard shoot
   end
end
