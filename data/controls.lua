function onLoad()
   if android then
     reload.controls()
     Add.controls(controls)
     if up create.sprite(x, y, up)
     if down create.sprite(x, y, down)
     if left create.sprite(x, y, left)
     if right create.sprite(x, y, right)
     if A create.sprite(x, y, A)
     if B create.sprite(x, y, B)
   end
   if destop then
     reload.controls()
     if up next.up
     if down next.down
     if left next.left
     if right next.right
     if A Press
     if B Esc Exit
   end
end