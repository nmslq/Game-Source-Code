function stages()
   if stage == 1 then
     --ground
     gr = create.sprite(0,-100,'stages/ground')
     gr.setObjectScale(1.6, 1.6)
     gr.setScrollFactor(1, 1)
     gr.set.camera('CameraGame')
     --pf
     pf1 = create.sprite(-200,100,'stages/platform1')
     pf1.setObjectScale(1.3,1.3)
     pf1.setScrollFactor(1,1)
     pf1.set.camera('CameraGame')
     pf2 = create.sprite(-400,300,'stages/platform1')
     pf2.setObjectScale(1.3,1.3)
     pf2.setScrollFactor(1,1)
     pf2.set.camera('CameraGame')
     --sky
     sky = create.sprite(0,0,'stages/sky')
     sky.setObjectScale(3.4,3.4)
     sky.setScrollFactor(0,0)
     sky.set.camera('CameraGame')
   end
   if stage == 2 then
     --ground
     gr = create.sprite(0,-100,'stages/ground')
     gr.setObjectScale(1.6, 1.6)
     gr.setScrollFactor(1, 1)
     gr.set.camera('CameraGame')
     --sky
     sky = create.sprite(0,0,'stages/sky')
     sky.setObjectScale(3.4,3.4)
     sky.setScrollFactor(0,0)
     sky.set.camera('CameraGame')
     --pf
     pf1 = create.sprite(-200,100,'stages/platform1')
     pf1.setObjectScale(1.3,1.3)
     pf1.setScrollFactor(1,1)
     pf1.set.camera('CameraGame')
     pf2 = create.sprite(-400,300,'stages/platform1')
     pf2.setObjectScale(1.3,1.3)
     pf2.setScrollFactor(1,1)
     pf2.set.camera('CameraGame')
   end
end
