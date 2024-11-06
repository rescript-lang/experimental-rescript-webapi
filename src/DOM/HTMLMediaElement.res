@@warning("-44")
@@warning("-33")
open DOM
open WebVTT
open EncryptedMediaExtensions

module HTMLMediaElement = {
  /**
    Resets the audio or video object and loads a new media resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/load)
    */
  @send
  external load: htmlMediaElement => unit = "load"

  /**
    Returns a string that specifies whether the client can play a given media resource type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canPlayType)
    */
  @send
  external canPlayType: (htmlMediaElement, string) => canPlayTypeResult = "canPlayType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/fastSeek)
    */
  @send
  external fastSeek: (htmlMediaElement, float) => unit = "fastSeek"

  /**
    Loads and starts playback of a media resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/play)
    */
  @send
  external play: htmlMediaElement => Promise.t<unit> = "play"

  /**
    Pauses the current playback and sets paused to TRUE.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/pause)
    */
  @send
  external pause: htmlMediaElement => unit = "pause"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/addTextTrack)
    */
  @send
  external addTextTrack: (htmlMediaElement, textTrackKind, string, string) => textTrack =
    "addTextTrack"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setSinkId)
    */
  @send
  external setSinkId: (htmlMediaElement, string) => Promise.t<unit> = "setSinkId"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
    */
  @send
  external setMediaKeys: (htmlMediaElement, mediaKeys) => Promise.t<unit> = "setMediaKeys"
}
