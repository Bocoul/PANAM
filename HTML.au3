#include-once
#include <IE.au3>
#include <String.au3>
#include "CONTROLS.au3"
Const $ATTRIBUTE_DEFAULT= "Innertext",  $DELAI_DEFAULT= 100,  $TIMEOUT_DEFAULT= 5000
Func IEGetFrameByName($oIE, $Name)
 If Not IsObj($oIE) Then
  __IEConsoleWriteError("Error", "IEGetFrameByName", "$_IESTATUS_InvalidDataType")
  Return SetError($_IESTATUS_InvalidDataType, 1, 0)
 EndIf
 If Not __IEIsObjType($oIE, "browserdom") Then
  __IEConsoleWriteError("Error", "IEGetFrameByName", "$_IESTATUS_InvalidObjectType")
  Return SetError($_IESTATUS_InvalidObjectType, 1, 0)
 EndIf
 With $oIE.Document
  Local $oFrames = .Frames
  Local $iNumFrames = .Frames.Length
 EndWith

 Local $oFrame = 0
 For $i = 0 To($iNumFrames - 1)
  $oFrame = $oFrames.item($i)
  If $oFrame.Name = $Name Then Return $oFrame
 Next
 Return 0
EndFunc   ;==>IEGetFrameByName













































































































































































































































































































































