function flxAndroidControls()
   controls.buttonInputGetTest()
   if windows then
     getMouseX = getIn(getControlsScaleX)
     getControlsScaleX.getTest(mouseX)
     mouseX.UpdateX()
     mouseX.getTestControlsScaleX.scaleX()
        for mouseX in controlsInputX then
          buttonInput()
          inputAndroid = true
          reUpdate.mouseX()
          reUpdate.controlsInputX.base()
        end
     getMouseY = getIn(getControlsScaleY)
     getControlsScaleX.getTest(mouseY)
     mouseY.UpdateY()
     mouseY.getTestControlsScaleY.scaleY()
        for mouseY in controlsInputY then
          buttonInput()
          inputAndroid = true
          reUpdate.mouseY()
          reUpdate.controlsInputY.base()
        end
     getMouseXY for in controlsMaxInputXY then
       buttonInput()
       flx.buttonInput()
       flx.input = true
     else
       flx.buttonInput(false)
       flx.input = false
     end
   if android then
     getAndroidTouchX = getIn(getControlsScaleX)
     getControlsScaleX.getTest(androidTouchX)
     androidTouchX.UpdateX()
     androidTouchX.getTestControlsScaleX.scaleX()
        for androidTouchX in controlsInputX then
          buttonInput()
          inputAndroid = true
          flxActionInput()
          reUpdate.mouseX()
          reUpdate.controlsInputX.base()
        end
     getAndroidTouchY = getIn(getControlsScaleY)
     getControlsScaleX.getTest(androidTouchY)
     androidTouchY.UpdateY()
     androidTouchY.getTestControlsScaleY.scaleY()
        for androidTouchY in controlsInputY then
          buttonInput()
          inputAndroid = true
          reUpdate.mouseY()
          flxActionInput()
          reUpdate.controlsInputY.base()
        end
     getAndroidTouchXY for in controlsMaxInputXY then
       buttonInput()
       flx.buttonInput()
       flxAndroidCheck()
       FlxG.controlsInputCheck()
       flx.input = true
     else
       flx.buttonInput(false)
       FlxG.controlsInputCheck()
       flx.input = false
      end
   end
end
