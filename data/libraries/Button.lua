function createButton()
   button = createAnimatedSprite(buttonSprite,x,y);
   button.addFrame(1,2);
   if windows then
      getButton.input();
      mouseInputGet();
      button.playFrame = 1;
   else
      button.playFrame = 0;
   end
   if android then
      getButton.input();
      touchInputGet();
      button.playFrame = 1;
   else
      button.playFrame = 0;
   end
end

function buttonInput()
   controls.buttonInputGetTest();
   if windows then
     getMouseX = getIn(getControlsScaleX);
     getControlsScaleX.getTest('mouseX');
     mouseX.UpdateX();
     mouseX.getTestControlsScaleX.scaleX();
        for (mouseX in controlsInputX) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseX();
          reUpdate.controlsInputX.base();
        end
     getMouseY = getIn(getControlsScaleY);
     getControlsScaleX.getTest('mouseY');
     mouseY.UpdateY();
     mouseY.getTestControlsScaleY.scaleY();
        for (mouseY in controlsInputY) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseY();
          reUpdate.controlsInputY.base();
        end
     for (getMouseXY in controlsMaxInputXY) then
       buttonInput();
       buttonInput.mouse();
       controls.input = true;
     else
       buttonInput = false;
       controls.input = false;
     end
   if android then
     getAndroidTouchX = getIn(getControlsScaleX);
     getControlsScaleX.getTest('androidTouchX');
     androidTouchX.UpdateX();
     androidTouchX.getTestControlsScaleX.scaleX();
        for (androidTouchX in controlsInputX) then
          buttonInput();
          inputAndroid = true;
          actionInput();
          reUpdate.mouseX();
          reUpdate.controlsInputX.base();
        end
     getAndroidTouchY = getIn(getControlsScaleY);
     getControlsScaleX.getTest('androidTouchY');
     androidTouchY.UpdateY();
     androidTouchY.getTestControlsScaleY.scaleY();
        for (androidTouchY in controlsInputY) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseY();
          actionInput();
          reUpdate.controlsInputY.base();
        end
    for (getAndroidTouchXY in controlsMaxInputXY) then
       buttonInput();
       buttonInput.touch();
       androidVpadCheck();
       controlsInputCheck();
       actionAddDoButton();
       controls.input = true;
     else
       buttonInput = false;
       controlsInputCheck();
       controls.input = false;
      end
   end
end
