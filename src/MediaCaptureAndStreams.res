@@warning("-30")

open Event

type mediaDeviceKind =
  | @as("audioinput") Audioinput
  | @as("audiooutput") Audiooutput
  | @as("videoinput") Videoinput

type mediaStreamTrackState =
  | @as("ended") Ended
  | @as("live") Live

/**
Provides access to connected media input devices like cameras and microphones, as well as screen sharing. In essence, it lets you obtain access to any hardware source of media data.
[See MediaDevices on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices)
*/
type mediaDevices = {
  ...eventTarget,
}

/**
The MediaDevicesInfo interface contains information that describes a single media input or output device.
[See MediaDeviceInfo on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo)
*/
type mediaDeviceInfo = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/deviceId)
    */
  deviceId: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/kind)
    */
  kind: mediaDeviceKind,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/label)
    */
  label: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/groupId)
    */
  groupId: string,
}

/**
A stream of media content. A stream consists of several tracks such as video or audio tracks. Each track is specified as an instance of MediaStreamTrack.
[See MediaStream on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
type mediaStream = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/id)
    */
  id: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/active)
    */
  active: bool,
}

/**
A single media track within a stream; typically, these are audio or video tracks, but other track types may exist as well.
[See MediaStreamTrack on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack)
*/
type mediaStreamTrack = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/kind)
    */
  kind: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/id)
    */
  id: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/label)
    */
  label: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/enabled)
    */
  mutable enabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/muted)
    */
  muted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/readyState)
    */
  readyState: mediaStreamTrackState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/contentHint)
    */
  mutable contentHint: string,
}

type mediaTrackSupportedConstraints = {
  mutable width: bool,
  mutable height: bool,
  mutable aspectRatio: bool,
  mutable frameRate: bool,
  mutable facingMode: bool,
  mutable sampleRate: bool,
  mutable sampleSize: bool,
  mutable echoCancellation: bool,
  mutable autoGainControl: bool,
  mutable noiseSuppression: bool,
  mutable channelCount: bool,
  mutable deviceId: bool,
  mutable groupId: bool,
  mutable backgroundBlur: bool,
  mutable displaySurface: bool,
}

type mediaStreamConstraints = {
  mutable video: unknown,
  mutable audio: unknown,
  mutable preferCurrentTab: bool,
  mutable peerIdentity: string,
}

type displayMediaStreamOptions = {
  mutable video: unknown,
  mutable audio: unknown,
}

type uLongRange = {
  mutable max: int,
  mutable min: int,
}

type doubleRange = {
  mutable max: float,
  mutable min: float,
}

type mediaTrackCapabilities = {
  mutable width: uLongRange,
  mutable height: uLongRange,
  mutable aspectRatio: doubleRange,
  mutable frameRate: doubleRange,
  mutable facingMode: array<string>,
  mutable sampleRate: uLongRange,
  mutable sampleSize: uLongRange,
  mutable echoCancellation: array<bool>,
  mutable autoGainControl: array<bool>,
  mutable noiseSuppression: array<bool>,
  mutable channelCount: uLongRange,
  mutable deviceId: string,
  mutable groupId: string,
  mutable backgroundBlur: array<bool>,
  mutable displaySurface: string,
}

type mediaTrackConstraintSet = {
  mutable width: int,
  mutable height: int,
  mutable aspectRatio: float,
  mutable frameRate: float,
  mutable facingMode: string,
  mutable sampleRate: int,
  mutable sampleSize: int,
  mutable echoCancellation: bool,
  mutable autoGainControl: bool,
  mutable noiseSuppression: bool,
  mutable channelCount: int,
  mutable deviceId: string,
  mutable groupId: string,
  mutable backgroundBlur: bool,
  mutable displaySurface: string,
}

type mediaTrackConstraints = {
  ...mediaTrackConstraintSet,
  mutable advanced: array<mediaTrackConstraintSet>,
}

type mediaTrackSettings = {
  mutable width: int,
  mutable height: int,
  mutable aspectRatio: float,
  mutable frameRate: float,
  mutable facingMode: string,
  mutable sampleRate: int,
  mutable sampleSize: int,
  mutable echoCancellation: bool,
  mutable autoGainControl: bool,
  mutable noiseSuppression: bool,
  mutable channelCount: int,
  mutable deviceId: string,
  mutable groupId: string,
  mutable backgroundBlur: bool,
  mutable displaySurface: string,
}

module MediaDevices = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/enumerateDevices)
    */
  @send
  external enumerateDevices: mediaDevices => Promise.t<array<mediaDeviceInfo>> = "enumerateDevices"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getSupportedConstraints)
    */
  @send
  external getSupportedConstraints: mediaDevices => mediaTrackSupportedConstraints =
    "getSupportedConstraints"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getUserMedia)
    */
  @send
  external getUserMedia: (mediaDevices, mediaStreamConstraints) => Promise.t<mediaStream> =
    "getUserMedia"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getDisplayMedia)
    */
  @send
  external getDisplayMedia: (mediaDevices, displayMediaStreamOptions) => Promise.t<mediaStream> =
    "getDisplayMedia"
}

module MediaDeviceInfo = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/toJSON)
    */
  @send
  external toJSON: mediaDeviceInfo => Dict.t<string> = "toJSON"
}

module MediaStream = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
    */
  @new
  external make: unit => mediaStream = "MediaStream"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getAudioTracks)
    */
  @send
  external getAudioTracks: mediaStream => array<mediaStreamTrack> = "getAudioTracks"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getVideoTracks)
    */
  @send
  external getVideoTracks: mediaStream => array<mediaStreamTrack> = "getVideoTracks"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTracks)
    */
  @send
  external getTracks: mediaStream => array<mediaStreamTrack> = "getTracks"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTrackById)
    */
  @send
  external getTrackById: (mediaStream, string) => mediaStreamTrack = "getTrackById"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/addTrack)
    */
  @send
  external addTrack: (mediaStream, mediaStreamTrack) => unit = "addTrack"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/removeTrack)
    */
  @send
  external removeTrack: (mediaStream, mediaStreamTrack) => unit = "removeTrack"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/clone)
    */
  @send
  external clone: mediaStream => mediaStream = "clone"
}

module MediaStreamTrack = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/clone)
    */
  @send
  external clone: mediaStreamTrack => mediaStreamTrack = "clone"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/stop)
    */
  @send
  external stop: mediaStreamTrack => unit = "stop"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getCapabilities)
    */
  @send
  external getCapabilities: mediaStreamTrack => mediaTrackCapabilities = "getCapabilities"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getConstraints)
    */
  @send
  external getConstraints: mediaStreamTrack => mediaTrackConstraints = "getConstraints"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getSettings)
    */
  @send
  external getSettings: mediaStreamTrack => mediaTrackSettings = "getSettings"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/applyConstraints)
    */
  @send
  external applyConstraints: (mediaStreamTrack, mediaTrackConstraints) => Promise.t<unit> =
    "applyConstraints"
}
