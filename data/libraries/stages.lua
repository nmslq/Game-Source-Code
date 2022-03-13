function stages()
   if stage = 1 then
     gr = create.gr.sprite(0,-100,gr)
     gr.scale(1.6, 1.6)
     gr.scoll(1, 1)
     pf1 = create.pf1.sprite(-200,100,pf1)
     pf1.scale(1.3,1.3)
     pf.scoll(1,1)
     sky = create.sky.sprite(0,0,sky)
     sky.scale(3.4,3.4)
     sky.scoll(0,0)
   end
end
