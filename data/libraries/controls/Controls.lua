function Controls()
   if android then
     reload.controls()
     add.controls('controls')
     controls = create.animatedButton(0, 0, 'controls')
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
     shaders.create.camera('CameraControls')
     controls.set.camera('CameraControls')
     testAndroidControls()
     flxAndroidControls()
     flxAndroidControlsInput('check')
      if getInputAndroidControls == 'up' then
        controlsAndroidInput('up') = true
      elseif getInputAndroidControls == 'down' then
        controlsAndroidInput('down') = true
      elseif getInputAndroidControls == 'left' then
        controlsAndroidInput('left') = true
      elseif getInputAndroidControls == 'right' then
        controlsAndroidInput('right') = true
      elseif getInputAndroidControls == 'A' then
        controlsAndroidInput('A') = true
      elseif getInputAndroidControls == 'B' then
        controlsAndroidInput('B') = true
      elseif getInputAndroidControls == 'C' then
        controlsAndroidInput('C') = true
      elseif getInputAndroidControls == 'S' then
        controlsAndroidInput('S') = true
      end
   end
   if windows then
     testKeyboardControls()
      if getInputKeyboardControls == 'up' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('up') = true
      elseif getInputKeyboardControls == 'down' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('down') = true
      elseif getInputKeyboardControls == 'left' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('left') = true
      elseif getInputKeyboardControls == 'right' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('right') = true
      elseif getInputKeyboardControls == 'A' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('A') = true
      elseif getInputKeyboardControls == 'B' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('B') = true
      elseif getInputKeyboardControls == 'C' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('C') = true
      elseif getInputKeyboardControls == 'right' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('S') = true
      end
   end
end
