open EventAPI
open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make: offlineAudioContextOptions => offlineAudioContext = "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make2: (~numberOfChannels: int, ~length: int, ~sampleRate: float) => offlineAudioContext =
  "OfflineAudioContext"

/**
Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
*/
@send
external addEventListener: (offlineAudioContext, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
*/
@send
external addEventListenerWithOptions: (
  offlineAudioContext,
  eventType,
  eventListener<'event>,
  addEventListenerOptions,
) => unit = "addEventListener"

/**
Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
*/
@send
external addEventListenerWithUseCapture: (
  offlineAudioContext,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (offlineAudioContext, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  offlineAudioContext,
  eventType,
  eventListener<'event>,
  eventListenerOptions,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithUseCapture: (
  offlineAudioContext,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (offlineAudioContext, event) => bool = "dispatchEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createAnalyser)
*/
@send
external createAnalyser: offlineAudioContext => analyserNode = "createAnalyser"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBiquadFilter)
*/
@send
external createBiquadFilter: offlineAudioContext => biquadFilterNode = "createBiquadFilter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBuffer)
*/
@send
external createBuffer: (
  offlineAudioContext,
  ~numberOfChannels: int,
  ~length: int,
  ~sampleRate: float,
) => audioBuffer = "createBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBufferSource)
*/
@send
external createBufferSource: offlineAudioContext => audioBufferSourceNode = "createBufferSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelMerger)
*/
@send
external createChannelMerger: (offlineAudioContext, ~numberOfInputs: int=?) => channelMergerNode =
  "createChannelMerger"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelSplitter)
*/
@send
external createChannelSplitter: (
  offlineAudioContext,
  ~numberOfOutputs: int=?,
) => channelSplitterNode = "createChannelSplitter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConstantSource)
*/
@send
external createConstantSource: offlineAudioContext => constantSourceNode = "createConstantSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConvolver)
*/
@send
external createConvolver: offlineAudioContext => convolverNode = "createConvolver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDelay)
*/
@send
external createDelay: (offlineAudioContext, ~maxDelayTime: float=?) => delayNode = "createDelay"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDynamicsCompressor)
*/
@send
external createDynamicsCompressor: offlineAudioContext => dynamicsCompressorNode =
  "createDynamicsCompressor"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createGain)
*/
@send
external createGain: offlineAudioContext => gainNode = "createGain"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createIIRFilter)
*/
@send
external createIIRFilter: (
  offlineAudioContext,
  ~feedforward: array<float>,
  ~feedback: array<float>,
) => iirFilterNode = "createIIRFilter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createOscillator)
*/
@send
external createOscillator: offlineAudioContext => oscillatorNode = "createOscillator"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPanner)
*/
@send
external createPanner: offlineAudioContext => pannerNode = "createPanner"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPeriodicWave)
*/
@send
external createPeriodicWave: (
  offlineAudioContext,
  ~real: array<float>,
  ~imag: array<float>,
  ~constraints: periodicWaveConstraints=?,
) => periodicWave = "createPeriodicWave"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createStereoPanner)
*/
@send
external createStereoPanner: offlineAudioContext => stereoPannerNode = "createStereoPanner"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createWaveShaper)
*/
@send
external createWaveShaper: offlineAudioContext => waveShaperNode = "createWaveShaper"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/decodeAudioData)
*/
@send
external decodeAudioData: (
  offlineAudioContext,
  ~audioData: ArrayBuffer.t,
  ~successCallback: decodeSuccessCallback=?,
  ~errorCallback: decodeErrorCallback=?,
) => Promise.t<audioBuffer> = "decodeAudioData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/startRendering)
*/
@send
external startRendering: offlineAudioContext => Promise.t<audioBuffer> = "startRendering"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/resume)
*/
@send
external resume: offlineAudioContext => Promise.t<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/suspend)
*/
@send
external suspend: (offlineAudioContext, float) => Promise.t<unit> = "suspend"
