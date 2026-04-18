module Impl = (
  T: {
    type t
  },
) => {
  include WebApiEvent.EventTarget.Impl({type t = T.t})

  external asBaseAudioContext: T.t => Types.baseAudioContext = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createAnalyser)
*/
  @send
  external createAnalyser: T.t => Types.analyserNode = "createAnalyser"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBiquadFilter)
*/
  @send
  external createBiquadFilter: T.t => Types.biquadFilterNode = "createBiquadFilter"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBuffer)
*/
  @send
  external createBuffer: (
    T.t,
    ~numberOfChannels: int,
    ~length: int,
    ~sampleRate: float,
  ) => Types.audioBuffer = "createBuffer"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBufferSource)
*/
  @send
  external createBufferSource: T.t => Types.audioBufferSourceNode = "createBufferSource"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelMerger)
*/
  @send
  external createChannelMerger: (T.t, ~numberOfInputs: int=?) => Types.channelMergerNode =
    "createChannelMerger"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelSplitter)
*/
  @send
  external createChannelSplitter: (T.t, ~numberOfOutputs: int=?) => Types.channelSplitterNode =
    "createChannelSplitter"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConstantSource)
*/
  @send
  external createConstantSource: T.t => Types.constantSourceNode = "createConstantSource"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConvolver)
*/
  @send
  external createConvolver: T.t => Types.convolverNode = "createConvolver"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDelay)
*/
  @send
  external createDelay: (T.t, ~maxDelayTime: float=?) => Types.delayNode = "createDelay"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDynamicsCompressor)
*/
  @send
  external createDynamicsCompressor: T.t => Types.dynamicsCompressorNode =
    "createDynamicsCompressor"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createGain)
*/
  @send
  external createGain: T.t => Types.gainNode = "createGain"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createIIRFilter)
*/
  @send
  external createIIRFilter: (
    T.t,
    ~feedforward: array<float>,
    ~feedback: array<float>,
  ) => Types.iirFilterNode = "createIIRFilter"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createOscillator)
*/
  @send
  external createOscillator: T.t => Types.oscillatorNode = "createOscillator"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPanner)
*/
  @send
  external createPanner: T.t => Types.pannerNode = "createPanner"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPeriodicWave)
*/
  @send
  external createPeriodicWave: (
    T.t,
    ~real: array<float>,
    ~imag: array<float>,
    ~constraints: Types.periodicWaveConstraints=?,
  ) => Types.periodicWave = "createPeriodicWave"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createStereoPanner)
*/
  @send
  external createStereoPanner: T.t => Types.stereoPannerNode = "createStereoPanner"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createWaveShaper)
*/
  @send
  external createWaveShaper: T.t => Types.waveShaperNode = "createWaveShaper"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/decodeAudioData)
*/
  @send
  external decodeAudioData: (
    T.t,
    ~audioData: ArrayBuffer.t,
    ~successCallback: Types.decodeSuccessCallback=?,
    ~errorCallback: Types.decodeErrorCallback=?,
  ) => promise<Types.audioBuffer> = "decodeAudioData"
}
