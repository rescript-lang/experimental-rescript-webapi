type mediaProvider = unknown

type canPlayTypeResult =
  | @as("maybe") Maybe
  | @as("probably") Probably

/**
Adds to HTMLElement the properties and methods needed to support basic media-related capabilities that are common to audio and video.
[See HTMLMediaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Returns an object representing the current error state of the audio or video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/error)
    */
  error: Null.t<MediaError.t>,
  /**
    The address or WebApiURL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/src)
    */
  mutable src: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/srcObject)
    */
  mutable srcObject: Null.t<mediaProvider>,
  /**
    Gets the address or WebApiURL of the current media resource that is selected by IHTMLMediaElement.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/currentSrc)
    */
  currentSrc: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<string>,
  /**
    Gets the current network activity for the element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/networkState)
    */
  networkState: int,
  /**
    Gets or sets a value indicating what data should be preloaded, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/preload)
    */
  mutable preload: string,
  /**
    Gets a collection of buffered time ranges.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/buffered)
    */
  buffered: TimeRanges.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/readyState)
    */
  readyState: int,
  /**
    Gets or sets the current playback position, in seconds.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/currentTime)
    */
  mutable currentTime: float,
  /**
    Returns the duration in seconds of the current media resource. A NaN value is returned if duration is not available, or Infinity if the media resource is streaming.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/duration)
    */
  duration: float,
  /**
    Gets a flag that specifies whether playback is paused.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/paused)
    */
  paused: bool,
  /**
    Gets or sets the default playback rate when the user is not using fast forward or reverse for a video or audio resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/defaultPlaybackRate)
    */
  mutable defaultPlaybackRate: float,
  /**
    Gets or sets the current rate of speed for the media resource to play. This speed is expressed as a multiple of the normal speed of the media resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/playbackRate)
    */
  mutable playbackRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/preservesPitch)
    */
  mutable preservesPitch: bool,
  /**
    Returns a TimeRanges object that represents the ranges of the current media resource that can be seeked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seekable)
    */
  seekable: TimeRanges.t,
  /**
    Gets information about whether the playback has ended or not.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ended)
    */
  ended: bool,
  /**
    Gets or sets a value that indicates whether to start playing the media automatically.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/autoplay)
    */
  mutable autoplay: bool,
  /**
    Gets or sets a flag to specify whether playback should restart after it completes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loop)
    */
  mutable loop: bool,
  /**
    Gets or sets a flag that indicates whether the client provides a set of controls for the media (in case the developer does not include controls for the player).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/controls)
    */
  mutable controls: bool,
  /**
    Gets or sets the volume level for audio portions of the media element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/volume)
    */
  mutable volume: float,
  /**
    Gets or sets a flag that indicates whether the audio (either audio or the audio track on video media) is muted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/muted)
    */
  mutable muted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/defaultMuted)
    */
  mutable defaultMuted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/textTracks)
    */
  textTracks: TextTrackList.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/sinkId)
    */
  sinkId: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/remote)
    */
  remote: RemotePlaybackTypes.remotePlayback,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/disableRemotePlayback)
    */
  mutable disableRemotePlayback: bool,
}

module Impl = (
  T: {
    type t
  },
) => {
  include HTMLElement.Impl({type t = T.t})

  external asHTMLMediaElement: T.t => t = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/addTextTrack)
*/
  @send
  external addTextTrack: (
    T.t,
    ~kind: WebVttTypes.textTrackKind,
    ~label: string=?,
    ~language: string=?,
  ) => WebVttTypes.textTrack = "addTextTrack"

  /**
Returns a string that specifies whether the client can play a given media resource type.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canPlayType)
*/
  @send
  external canPlayType: (T.t, string) => canPlayTypeResult = "canPlayType"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/fastSeek)
*/
  @send
  external fastSeek: (T.t, float) => unit = "fastSeek"

  /**
Resets the audio or video object and loads a new media resource.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/load)
*/
  @send
  external load: T.t => unit = "load"

  /**
Pauses the current playback and sets paused to TRUE.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/pause)
*/
  @send
  external pause: T.t => unit = "pause"

  /**
Loads and starts playback of a media resource.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/play)
*/
  @send
  external play: T.t => promise<unit> = "play"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setSinkId)
*/
  @send
  external setSinkId: (T.t, string) => promise<unit> = "setSinkId"
}

include Impl({type t = t})
