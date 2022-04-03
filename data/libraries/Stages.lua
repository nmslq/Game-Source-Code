function stages()
   if stage == 1 then
     gr = create.gr.sprite(0,-100,stages/ground)
     gr.scale(1.6, 1.6)
     gr.scoll(1, 1)
     gr.set.camera('game')
     pf1 = create.pf1.sprite(-200,100,stages/platform1)
     pf1.scale(1.3,1.3)
     pf1.scoll(1,1)
     pf1.set.camera('game')
     sky = create.sky.sprite(0,0,stages/sky)
     sky.scale(3.4,3.4)
     sky.scoll(0,0)
     sky.set.camera('game')
   end
end
