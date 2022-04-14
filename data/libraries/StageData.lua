function stages()
   if stage == 1 then
     gr = create.gr.sprite(0,-100,'stages/ground')
     gr.scale(1.6, 1.6)
     gr.setScrollFactor(1, 1)
     gr.set.camera('CameraGame')
     pf1 = create.pf1.sprite(-200,100,'stages/platform1')
     pf1.scale(1.3,1.3)
     pf1.setScrollFactor(1,1)
     pf1.set.camera('CameraGame')
     pf2 = create.pf2.sprite(-400,300,'stages/platform1')
     pf2.scale(1.3,1.3)
     pf2.setScrollFactor(1,1)
     pf2.set.camera('CameraGame')
     sky = create.sky.sprite(0,0,'stages/sky')
     sky.scale(3.4,3.4)
     sky.setScrollFactor(0,0)
     sky.set.camera('CameraGame')
   end
   if stage == 2 then
     gr = create.gr.sprite(0,-100,'stages/ground')
     gr.scale(1.6, 1.6)
     gr.setScrollFactor(1, 1)
     gr.set.camera('CameraGame')
     sky = create.sky.sprite(0,0,'stages/sky')
     sky.scale(3.4,3.4)
     sky.setScrollFactor(0,0)
     sky.set.camera('CameraGame')
     saw = create.saw.animatedSprite(10,0,'stages/saw')
     saw.setScrollFactor(1,1)
     add.animation('saw','saw')
     saw.set.camera('CameraGame')
        if playerHit.saw then
          dead()
        end
   end
end
