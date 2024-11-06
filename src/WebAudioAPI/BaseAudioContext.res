open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createAnalyser)
*/
@send
external createAnalyser: baseAudioContext => analyserNode = "createAnalyser"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBiquadFilter)
*/
@send
external createBiquadFilter: baseAudioContext => biquadFilterNode = "createBiquadFilter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBuffer)
*/
@send
external createBuffer: (baseAudioContext, int, int, float) => audioBuffer = "createBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBufferSource)
*/
@send
external createBufferSource: baseAudioContext => audioBufferSourceNode = "createBufferSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelMerger)
*/
@send
external createChannelMerger: (baseAudioContext, int) => channelMergerNode = "createChannelMerger"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelSplitter)
*/
@send
external createChannelSplitter: (baseAudioContext, int) => channelSplitterNode =
  "createChannelSplitter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConstantSource)
*/
@send
external createConstantSource: baseAudioContext => constantSourceNode = "createConstantSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createConvolver)
*/
@send
external createConvolver: baseAudioContext => convolverNode = "createConvolver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDelay)
*/
@send
external createDelay: (baseAudioContext, float) => delayNode = "createDelay"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createDynamicsCompressor)
*/
@send
external createDynamicsCompressor: baseAudioContext => dynamicsCompressorNode =
  "createDynamicsCompressor"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createGain)
*/
@send
external createGain: baseAudioContext => gainNode = "createGain"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createIIRFilter)
*/
@send
external createIIRFilter: (baseAudioContext, array<float>, array<float>) => iirFilterNode =
  "createIIRFilter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createOscillator)
*/
@send
external createOscillator: baseAudioContext => oscillatorNode = "createOscillator"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPanner)
*/
@send
external createPanner: baseAudioContext => pannerNode = "createPanner"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createPeriodicWave)
*/
@send
external createPeriodicWave: (
  baseAudioContext,
  array<float>,
  array<float>,
  periodicWaveConstraints,
) => periodicWave = "createPeriodicWave"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createStereoPanner)
*/
@send
external createStereoPanner: baseAudioContext => stereoPannerNode = "createStereoPanner"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createWaveShaper)
*/
@send
external createWaveShaper: baseAudioContext => waveShaperNode = "createWaveShaper"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/decodeAudioData)
*/
@send
external decodeAudioData: (
  baseAudioContext,
  ArrayBuffer.t,
  decodeSuccessCallback,
  decodeErrorCallback,
) => Promise.t<audioBuffer> = "decodeAudioData"
