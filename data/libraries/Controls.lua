function Controls()
   if android then
     reload.controls()
     add.controls('controls')
     controls = create.animatedButton(0, 0, 'controls')
     add.animation.loop('controls','A','A')
     add.animation.loop('controls','B','B')
     add.animate.loop('controls','C','C')
     add.animation.loop('controls','S','S')
     add.animation.loop('controls','up','up')
     add.animation.loop('controls','down','down')
     add.animation.loop('controls','right','right')
     add.animation.loop('controls','left','left')
      if lua.help {addAndroidControls('up')} then
        controlsButton.addFrameAnim('controls','up')
        vpad = flxButton.addFrame('up')
        play.animation.loop('controls','up')
      elseif lua.help {addAndroidControls('down')} then
        controlsButton.addFrameAnim('controls','down')
        vpad = flxButton.addFrame('down')
        play.animation.loop('controls','down')
      elseif lua.help {addAndroidControls('left')} then
        controlsButton.addFrameAnim('controls','left')
        vpad = flxButton.addFrame('left')
        play.animation.loop('controls','left')
      elseif lua.help {addAndroidControls('right')} then
        controlsButton.addFrameAnim('controls','right')
        vpad = flxButton.addFrame('right')
        play.animation.loop('controls','right')
      elseif lua.help {addAndroidControls('full')} then
        controlsButton.addFrameAnim('controls','up')
        controlsButton.addFrameAnim('controls','down')
        controlsButton.addFrameAnim('controls','left')
        controlsButton.addFrameAnim('controls','right')
        vpad = flxButton.addFrame('up')
        vpad = flxButton.addFrame('down')
        vpad = flxButton.addFrame('left')
        vpad = flxButton.addFrame('right')
        play.animation.loop('controls','up')
        play.animation.loop('controls','down')
        play.animation.loop('controls','left')
        play.animation.loop('controls','right')
      elseif lua.help {addAndroidControls('A')} then
        controlsButton.addFrameAnim('controls','A')
        vpad = flxButton.addFrame('A')
        play.animation.loop('controls','A')
      elseif lua.help {addAndroidControls('B')} then
        controlsButton.addFrameAnim('controls','B')
        vpad = flxButton.addFrame('B')
        play.animation.loop('controls','B')
      elseif lua.help {addAndroidControls('C')} then
        controlsButton.addFrameAnim('controls','C')
        vpad = flxButton.addFrame('C')
        play.animation.loop('controls','C')
      elseif lua.help {addAndroidControls('S')} then
        controlsButton.addFrameAnim('controls','S')
        vpad = flxButton.addFrame('S')
        play.animation.loop('controls','S')
      end
     shaders.createNewCamera('CameraControls')
     shaders.setObjectCamera('CameraControls')
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
