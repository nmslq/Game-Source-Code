function onLoad()
   if android then
     reload.controls()
     Add.controls(controls)
     if up create.spirits(x, y, up)
     if down create.spirits(x, y, down)
     if left create.spirits(x, y, left)
     if right create.spirits(x, y, right)
     if A create.spirits(x, y, A)
     if B create.spirits(x, y, B)
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