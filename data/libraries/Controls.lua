function Controls()
   if android then
     reload.controls()
     Add.controls(controls)
     con = create.con.sprite(0, 0, controls, 30, 30)
     if up set.sprite(con, x, y, up)
     if down set.sprite(con, x, y, down)
     if left set.sprite(con, x, y, left)
     if right set.sprite(con, x, y, right)
     if full set.sprite(con, x, y, up, down, left, right)
     if A set.sprite(con, x, y, A)
     if B set.sprite(con, x, y, B)
     if C set.sprite(con, x, y, C)
     if S set.sprite(con, x, y, S)
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

function addPadCam()
   androidControls.set.cam('hud')
end
