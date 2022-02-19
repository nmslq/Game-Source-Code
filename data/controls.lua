function onLoad()
   if android then
     reload.controls()
     Add.controls(controls)
     if up create.spirits(x, y, up)
     if down create.spirits(x, y, down)
     if A create.spirits(x, y, A)
     if B create.spirits(x, y, B)
   end
   if destop then
     reload.controls()
     if up next.up
     if down next.down
     if A Press
     if B Esc
   end
end