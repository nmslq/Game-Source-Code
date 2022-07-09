function controls()
   if android then
     reload.controls();
     controls = create.animatedButton(0, 0, 'controls');
     add.animation.loop('controls','A','A');
     add.animation.loop('controls','B','B');
     add.animation.loop('controls','C','C');
     add.animation.loop('controls','S','S');
     add.animation.loop('controls','up','up');
     add.animation.loop('controls','down','down');
     add.animation.loop('controls','right','right');
     add.animation.loop('controls','left','left');
     if luaHelper.callBack {'addAndroidControls', function(controls)} then
        if luaHelper.callBack {addAndroidControls('up')} then
          controlsButton.addFrameAnim('controls','up');
          vpad = createButton.addFrame('up');
          play.animation.loop('controls','up');
        elseif luaHelper.callBack {addAndroidControls('down')} then
          controlsButton.addFrameAnim('controls','down');
          vpad = createButton.addFrame('down');
          play.animation.loop('controls','down');
        elseif luaHelper.callBack {addAndroidControls('left')} then
          controlsButton.addFrameAnim('controls','left');
          vpad = createButton.addFrame('left');
          play.animation.loop('controls','left');
        elseif luaHelper.callBack {addAndroidControls('right')} then
          controlsButton.addFrameAnim('controls','right');
          vpad = createButton.addFrame('right');
          play.animation.loop('controls','right');
        elseif luaHelper.callBack {addAndroidControls('full')} then
          controlsButton.addFrameAnim('controls','up');
          controlsButton.addFrameAnim('controls','down');
          controlsButton.addFrameAnim('controls','left');
          controlsButton.addFrameAnim('controls','right');
          vpad = createButton.addFrame('up');
          vpad1 = createButton.addFrame('down');
          vpad2 = createButton.addFrame('left');
          vpad3 = createButton.addFrame('right');
          play.animation.loop('controls','up');
          play.animation.loop('controls','down');
          play.animation.loop('controls','left');
          play.animation.loop('controls','right');
     end
     if luaHelper.callBack {'addAndroidControls', function(action)} then
        if luaHelper.callBack {addAndroidControls('A')} then
          controlsButton.addFrameAnim('controls','A');
          vpad = createButton.addFrame('A');
          play.animation.loop('controls','A');
        elseif luaHelper.callBack {addAndroidControls('B')} then
          controlsButton.addFrameAnim('controls','B');
          vpad = createButton.addFrame('B');
          play.animation.loop('controls','B');
        elseif luaHelper.callBack {addAndroidControls('C')} then
          controlsButton.addFrameAnim('controls','C');
          vpad = createButton.addFrame('C');
          play.animation.loop('controls','C');
        elseif luaHelper.callBack {addAndroidControls('S')} then
          controlsButton.addFrameAnim('controls','S');
          vpad = createButton.addFrame('S');
          play.animation.loop('controls','S');
      end
     create.newCamera('CameraControls');
     setObjectCamera('controls','CameraControls');
     testAndroidControls();
     checkControlsInput();
      if getInputAndroidControls == 'up' then
        controlsAndroidInput('up') = true;
      elseif getInputAndroidControls == 'down' then
        controlsAndroidInput('down') = true;
      elseif getInputAndroidControls == 'left' then
        controlsAndroidInput('left') = true;
      elseif getInputAndroidControls == 'right' then
        controlsAndroidInput('right') = true;
      elseif getInputAndroidControls == 'A' then
        controlsAndroidInput('A') = true;
      elseif getInputAndroidControls == 'B' then
        controlsAndroidInput('B') = true;
      elseif getInputAndroidControls == 'C' then
        controlsAndroidInput('C') = true;
      elseif getInputAndroidControls == 'S' then
        controlsAndroidInput('S') = true;
      end
   end
   if windows then
     testKeyboardControls();
      if getInputKeyboardControls == 'up' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('up') = true;
      elseif getInputKeyboardControls == 'down' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('down') = true;
      elseif getInputKeyboardControls == 'left' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('left') = true;
      elseif getInputKeyboardControls == 'right' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('right') = true;
      elseif getInputKeyboardControls == 'A' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('A') = true;
      elseif getInputKeyboardControls == 'B' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('B') = true;
      elseif getInputKeyboardControls == 'C' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('C') = true;
      elseif getInputKeyboardControls == 'right' or getInputKeyboardControls == 'getControlsSettingKey' then
        controlsKeyboardInput('S') = true;
      end
   end
end
