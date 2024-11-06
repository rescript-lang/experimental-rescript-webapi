open Prelude
open Event
open Clipboard
open CredentialManagement
open Geolocation
open MediaCapabilities
open MediaCaptureAndStreams
open MediaSession
open Permissions
open ScreenWakeLock
open ServiceWorker
open EncryptedMediaExtensions
open Gamepad
open File
open WebMIDI
open History
open VisualViewport
open WebSpeech
open ViewTransitions
open FileAndDirectoryEntries
open WebVTT
open RemotePlayback
open Canvas
open PictureInPicture
open Storage
open WebLocks
open CSSFontLoading
open IndexedDB
open WebCrypto
open Performance
open WebStorage
open DOM

module HTMLInputElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement)
    */
  @new
  external make: unit => htmlInputElement = "HTMLInputElement"
  /**
    Increments a range input control's value by the value given by the Step attribute. If the optional parameter is used, will increment the input control's value by that value.
@param n Value to increment the value by.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/stepUp)
    */
  @send
  external stepUp: (htmlInputElement, int) => unit = "stepUp"

  /**
    Decrements a range input control's value by the value given by the Step attribute. If the optional parameter is used, it will decrement the input control's step value multiplied by the parameter's value.
@param n Value to decrement the value by.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/stepDown)
    */
  @send
  external stepDown: (htmlInputElement, int) => unit = "stepDown"

  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/checkValidity)
    */
  @send
  external checkValidity: htmlInputElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/reportValidity)
    */
  @send
  external reportValidity: htmlInputElement => bool = "reportValidity"

  /**
    Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlInputElement, string) => unit = "setCustomValidity"

  /**
    Makes the selection equal to the current object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/select)
    */
  @send
  external select: htmlInputElement => unit = "select"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setRangeText)
    */
  @send
  external setRangeText: (htmlInputElement, string) => unit = "setRangeText"

  /**
    Sets the start and end positions of a selection in a text field.
@param start The offset into the text field for the start of the selection.
@param end The offset into the text field for the end of the selection.
@param direction The direction in which the selection is performed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setSelectionRange)
    */
  @send
  external setSelectionRange: (htmlInputElement, int, int, string) => unit = "setSelectionRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/showPicker)
    */
  @send
  external showPicker: htmlInputElement => unit = "showPicker"
}
