@@warning("-30")

open Prelude
open ChannelMessaging
open Event
open DOM

type audioContextState =
  | @as("closed") Closed
  | @as("running") Running
  | @as("suspended") Suspended

type biquadFilterType =
  | @as("allpass") Allpass
  | @as("bandpass") Bandpass
  | @as("highpass") Highpass
  | @as("highshelf") Highshelf
  | @as("lowpass") Lowpass
  | @as("lowshelf") Lowshelf
  | @as("notch") Notch
  | @as("peaking") Peaking

type channelCountMode =
  | @as("clamped-max") ClampedMax
  | @as("explicit") Explicit
  | @as("max") Max

type channelInterpretation =
  | @as("discrete") Discrete
  | @as("speakers") Speakers

type oscillatorType =
  | @as("custom") Custom
  | @as("sawtooth") Sawtooth
  | @as("sine") Sine
  | @as("square") Square
  | @as("triangle") Triangle

type panningModelType =
  | HRTF
  | @as("equalpower") Equalpower

type distanceModelType =
  | @as("exponential") Exponential
  | @as("inverse") Inverse
  | @as("linear") Linear

type overSampleType =
  | @as("2x") V2x
  | @as("4x") V4x
  | @as("none") None

type mediaStreamTrackState =
  | @as("ended") Ended
  | @as("live") Live

/**
A short audio asset residing in memory, created from an audio file using the AudioContext.decodeAudioData() method, or from raw data using AudioContext.createBuffer(). Once put into an AudioBuffer, the audio can then be played by being passed into an AudioBufferSourceNode.
[See AudioBuffer on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
*/
type audioBuffer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/sampleRate)
    */
  sampleRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/duration)
    */
  duration: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/numberOfChannels)
    */
  numberOfChannels: any,
}

/**
The Web Audio API events that occur when a ScriptProcessorNode input buffer is ready to be processed.
[See AudioProcessingEvent on MDN](https://developer.mozilla.org/docs/Web/API/AudioProcessingEvent)
*/
type audioProcessingEvent = {
  ...event,
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

/**
The Web Audio API OfflineAudioCompletionEvent interface represents events that occur when the processing of an OfflineAudioContext is terminated. The complete event implements this interface.
[See OfflineAudioCompletionEvent on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
*/
type offlineAudioCompletionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent/renderedBuffer)
    */
  renderedBuffer: audioBuffer,
}

/**
A generic interface for representing an audio processing module. Examples include:
[See AudioNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode)
*/
type rec audioNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
}

/**
AudioDestinationNode has no output (as it is the output, no more AudioNode can be linked after it in the audio graph) and one input. The number of channels in the input must be between 0 and the maxChannelCount value or an exception is raised.
[See AudioDestinationNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioDestinationNode)
*/
and audioDestinationNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioDestinationNode/maxChannelCount)
    */
  maxChannelCount: any,
}

/**
[See BaseAudioContext on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext)
*/
and baseAudioContext = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/destination)
    */
  destination: audioDestinationNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/sampleRate)
    */
  sampleRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/currentTime)
    */
  currentTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/listener)
    */
  listener: audioListener,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/state)
    */
  state: audioContextState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/audioWorklet)
    */
  audioWorklet: audioWorklet,
}

/**
A simple low-order filter, and is created using the AudioContext.createBiquadFilter() method. It is an AudioNode that can represent different kinds of filters, tone control devices, and graphic equalizers.
[See BiquadFilterNode on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
*/
and biquadFilterNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/type)
    */
  @as("type")
  mutable type_: biquadFilterType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/frequency)
    */
  frequency: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/detune)
    */
  detune: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/Q)
    */
  @as("Q")
  q: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/gain)
    */
  gain: audioParam,
}

/**
The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
[See AudioListener on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener)
*/
and audioListener = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionX)
    */
  positionX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionY)
    */
  positionY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionZ)
    */
  positionZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardX)
    */
  forwardX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardY)
    */
  forwardY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardZ)
    */
  forwardZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upX)
    */
  upX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upY)
    */
  upY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upZ)
    */
  upZ: audioParam,
}

/**
[See AudioWorklet on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorklet)
*/
and audioWorklet = {}

/**
The Web Audio API's AudioParam interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
[See AudioParam on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam)
*/
and audioParam = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/value)
    */
  mutable value: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/defaultValue)
    */
  defaultValue: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/minValue)
    */
  minValue: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/maxValue)
    */
  maxValue: float,
}

/**
[See AudioScheduledSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode)
*/
and audioScheduledSourceNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode
}

/**
An AudioScheduledSourceNode which represents an audio source consisting of in-memory audio data, stored in an AudioBuffer. It's especially useful for playing back audio which has particularly stringent timing accuracy requirements, such as for sounds that must match a specific rhythm and can be kept in memory rather than being played from disk or the network.
[See AudioBufferSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
*/
and audioBufferSourceNode = {
  // Base properties from AudioScheduledSourceNode
  // End base properties from AudioScheduledSourceNode

  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/buffer)
    */
  mutable buffer: Null.t<audioBuffer>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/playbackRate)
    */
  playbackRate: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/detune)
    */
  detune: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loop)
    */
  mutable loop: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loopStart)
    */
  mutable loopStart: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loopEnd)
    */
  mutable loopEnd: float,
}

/**
The ChannelMergerNode interface, often used in conjunction with its opposite, ChannelSplitterNode, reunites different mono inputs into a single output. Each input is used to fill a channel of the output. This is useful for accessing each channels separately, e.g. for performing channel mixing where gain must be separately controlled on each channel.
[See ChannelMergerNode on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
*/
and channelMergerNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode
}

/**
The ChannelSplitterNode interface, often used in conjunction with its opposite, ChannelMergerNode, separates the different channels of an audio source into a set of mono outputs. This is useful for accessing each channel separately, e.g. for performing channel mixing where gain must be separately controlled on each channel.
[See ChannelSplitterNode on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
*/
and channelSplitterNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode
}

/**
[See ConstantSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
*/
and constantSourceNode = {
  // Base properties from AudioScheduledSourceNode
  // End base properties from AudioScheduledSourceNode

  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode/offset)
    */
  offset: audioParam,
}

/**
An AudioNode that performs a Linear Convolution on a given AudioBuffer, often used to achieve a reverb effect. A ConvolverNode always has exactly one input and one output.
[See ConvolverNode on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
*/
and convolverNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode/buffer)
    */
  mutable buffer: Null.t<audioBuffer>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode/normalize)
    */
  mutable normalize: bool,
}

/**
A delay-line; an AudioNode audio-processing module that causes a delay between the arrival of an input data and its propagation to the output.
[See DelayNode on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode)
*/
and delayNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode/delayTime)
    */
  delayTime: audioParam,
}

/**
Inherits properties from its parent, AudioNode.
[See DynamicsCompressorNode on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
*/
and dynamicsCompressorNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/threshold)
    */
  threshold: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/knee)
    */
  knee: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/ratio)
    */
  ratio: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/reduction)
    */
  reduction: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/attack)
    */
  attack: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/release)
    */
  release: audioParam,
}

/**
A change in volume. It is an AudioNode audio-processing module that causes a given gain to be applied to the input data before its propagation to the output. A GainNode always has exactly one input and one output, both with the same number of channels.
[See GainNode on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
and gainNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode/gain)
    */
  gain: audioParam,
}

/**
The IIRFilterNode interface of the Web Audio API is a AudioNode processor which implements a general infinite impulse response (IIR)  filter; this type of filter can be used to implement tone control devices and graphic equalizers as well. It lets the parameters of the filter response be specified, so that it can be tuned as needed.
[See IIRFilterNode on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
*/
and iirFilterNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode
}

/**
The OscillatorNode interface represents a periodic waveform, such as a sine wave. It is an AudioScheduledSourceNode audio-processing module that causes a specified frequency of a given wave to be created—in effect, a constant tone.
[See OscillatorNode on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
*/
and oscillatorNode = {
  // Base properties from AudioScheduledSourceNode
  // End base properties from AudioScheduledSourceNode

  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/type)
    */
  @as("type")
  mutable type_: oscillatorType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/frequency)
    */
  frequency: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/detune)
    */
  detune: audioParam,
}

/**
A PannerNode always has exactly one input and one output: the input can be mono or stereo but the output is always stereo (2 channels); you can't have panning effects without at least two audio channels!
[See PannerNode on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
*/
and pannerNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/panningModel)
    */
  mutable panningModel: panningModelType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionX)
    */
  positionX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionY)
    */
  positionY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionZ)
    */
  positionZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationX)
    */
  orientationX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationY)
    */
  orientationY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationZ)
    */
  orientationZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/distanceModel)
    */
  mutable distanceModel: distanceModelType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/refDistance)
    */
  mutable refDistance: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/maxDistance)
    */
  mutable maxDistance: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/rolloffFactor)
    */
  mutable rolloffFactor: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneInnerAngle)
    */
  mutable coneInnerAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneOuterAngle)
    */
  mutable coneOuterAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneOuterGain)
    */
  mutable coneOuterGain: float,
}

/**
A node able to provide real-time frequency and time-domain analysis information. It is an AudioNode that passes the audio stream unchanged from the input to the output, but allows you to take the generated data, process it, and create audio visualizations.
[See AnalyserNode on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode)
*/
type analyserNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/fftSize)
    */
  mutable fftSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/frequencyBinCount)
    */
  frequencyBinCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/minDecibels)
    */
  mutable minDecibels: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/maxDecibels)
    */
  mutable maxDecibels: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/smoothingTimeConstant)
    */
  mutable smoothingTimeConstant: float,
}

/**
PeriodicWave has no inputs or outputs; it is used to define custom oscillators when calling OscillatorNode.setPeriodicWave(). The PeriodicWave itself is created/returned by AudioContext.createPeriodicWave().
[See PeriodicWave on MDN](https://developer.mozilla.org/docs/Web/API/PeriodicWave)
*/
type periodicWave = {}

/**
The pan property takes a unitless value between -1 (full left pan) and 1 (full right pan). This interface was introduced as a much simpler way to apply a simple panning effect than having to use a full PannerNode.
[See StereoPannerNode on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
*/
type stereoPannerNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode/pan)
    */
  pan: audioParam,
}

/**
A WaveShaperNode always has exactly one input and one output.
[See WaveShaperNode on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
*/
type waveShaperNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode/curve)
    */
  mutable curve: Null.t<array<float>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode/oversample)
    */
  mutable oversample: overSampleType,
}

/**
An audio-processing graph built from audio modules linked together, each represented by an AudioNode.
[See AudioContext on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext)
*/
type audioContext = {
  ...baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/baseLatency)
    */
  baseLatency: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/outputLatency)
    */
  outputLatency: float,
}

/**
A MediaElementSourceNode has no inputs and exactly one output, and is created using the AudioContext.createMediaElementSource method. The amount of channels in the output equals the number of channels of the audio referenced by the HTMLMediaElement used in the creation of the node, or is 1 if the HTMLMediaElement has no audio.
[See MediaElementAudioSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
*/
type mediaElementAudioSourceNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode/mediaElement)
    */
  mediaElement: htmlMediaElement,
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
A type of AudioNode which operates as an audio source whose media is received from a MediaStream obtained using the WebRTC or Media Capture and Streams APIs.
[See MediaStreamAudioSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
*/
type mediaStreamAudioSourceNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode/mediaStream)
    */
  mediaStream: mediaStream,
}

/**
[See MediaStreamAudioDestinationNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
*/
type mediaStreamAudioDestinationNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode/stream)
    */
  stream: mediaStream,
}

/**
[See AudioParamMap on MDN](https://developer.mozilla.org/docs/Web/API/AudioParamMap)
*/
type audioParamMap = {}

/**
[See AudioWorkletNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
*/
type audioWorkletNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/parameters)
    */
  parameters: audioParamMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/port)
    */
  port: messagePort,
}

/**
An AudioContext interface representing an audio-processing graph built from linked together AudioNodes. In contrast with a standard AudioContext, an OfflineAudioContext doesn't render the audio to the device hardware; instead, it generates it, as fast as it can, and outputs the result to an AudioBuffer.
[See OfflineAudioContext on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
type offlineAudioContext = {
  ...baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/length)
    */
  length: any,
}

type periodicWaveConstraints = {mutable disableNormalization: bool}

type audioTimestamp = {
  mutable contextTime: float,
  mutable performanceTime: float,
}

type uLongRange = {
  mutable max: any,
  mutable min: any,
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
  mutable width: any,
  mutable height: any,
  mutable aspectRatio: float,
  mutable frameRate: float,
  mutable facingMode: string,
  mutable sampleRate: any,
  mutable sampleSize: any,
  mutable echoCancellation: bool,
  mutable autoGainControl: bool,
  mutable noiseSuppression: bool,
  mutable channelCount: any,
  mutable deviceId: string,
  mutable groupId: string,
  mutable backgroundBlur: bool,
  mutable displaySurface: string,
}

type decodeSuccessCallback = (audioBuffer, unit)

type decodeErrorCallback = (domException, unit)

module AudioBuffer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/getChannelData)
    */
  @send
  external getChannelData: (audioBuffer, any) => array<float> = "getChannelData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyFromChannel)
    */
  @send
  external copyFromChannel: (audioBuffer, array<float>, any, any) => unit = "copyFromChannel"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyToChannel)
    */
  @send
  external copyToChannel: (audioBuffer, array<float>, any, any) => unit = "copyToChannel"
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

module AudioNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
    */
  @send
  external connect: (audioNode, audioNode, any, any) => audioNode = "connect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
    */
  @send
  external disconnect: audioNode => unit = "disconnect"
}

module BaseAudioContext = {
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
  external createBuffer: (baseAudioContext, any, any, float) => audioBuffer = "createBuffer"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createBufferSource)
    */
  @send
  external createBufferSource: baseAudioContext => audioBufferSourceNode = "createBufferSource"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelMerger)
    */
  @send
  external createChannelMerger: (baseAudioContext, any) => channelMergerNode = "createChannelMerger"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/createChannelSplitter)
    */
  @send
  external createChannelSplitter: (baseAudioContext, any) => channelSplitterNode =
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
}

module BiquadFilterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/getFrequencyResponse)
    */
  @send
  external getFrequencyResponse: (
    biquadFilterNode,
    array<float>,
    array<float>,
    array<float>,
  ) => unit = "getFrequencyResponse"
}

module AudioListener = {}

module AudioParam = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueAtTime)
    */
  @send
  external setValueAtTime: (audioParam, float, float) => audioParam = "setValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/linearRampToValueAtTime)
    */
  @send
  external linearRampToValueAtTime: (audioParam, float, float) => audioParam =
    "linearRampToValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/exponentialRampToValueAtTime)
    */
  @send
  external exponentialRampToValueAtTime: (audioParam, float, float) => audioParam =
    "exponentialRampToValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setTargetAtTime)
    */
  @send
  external setTargetAtTime: (audioParam, float, float, float) => audioParam = "setTargetAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueCurveAtTime)
    */
  @send
  external setValueCurveAtTime: (audioParam, array<float>, float, float) => audioParam =
    "setValueCurveAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelScheduledValues)
    */
  @send
  external cancelScheduledValues: (audioParam, float) => audioParam = "cancelScheduledValues"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelAndHoldAtTime)
    */
  @send
  external cancelAndHoldAtTime: (audioParam, float) => audioParam = "cancelAndHoldAtTime"
}

module AudioScheduledSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/start)
    */
  @send
  external start: (audioScheduledSourceNode, float) => unit = "start"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/stop)
    */
  @send
  external stop: (audioScheduledSourceNode, float) => unit = "stop"
}

module AudioBufferSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/start)
    */
  @send
  external start: (audioBufferSourceNode, float, float, float) => unit = "start"
}

module IIRFilterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode/getFrequencyResponse)
    */
  @send
  external getFrequencyResponse: (iirFilterNode, array<float>, array<float>, array<float>) => unit =
    "getFrequencyResponse"
}

module OscillatorNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/setPeriodicWave)
    */
  @send
  external setPeriodicWave: (oscillatorNode, periodicWave) => unit = "setPeriodicWave"
}

module PannerNode = {}

module AnalyserNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatFrequencyData)
    */
  @send
  external getFloatFrequencyData: (analyserNode, array<float>) => unit = "getFloatFrequencyData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteFrequencyData)
    */
  @send
  external getByteFrequencyData: (analyserNode, array<int>) => unit = "getByteFrequencyData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatTimeDomainData)
    */
  @send
  external getFloatTimeDomainData: (analyserNode, array<float>) => unit = "getFloatTimeDomainData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteTimeDomainData)
    */
  @send
  external getByteTimeDomainData: (analyserNode, array<int>) => unit = "getByteTimeDomainData"
}

module AudioContext = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/getOutputTimestamp)
    */
  @send
  external getOutputTimestamp: audioContext => audioTimestamp = "getOutputTimestamp"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/resume)
    */
  @send
  external resume: audioContext => Promise.t<unit> = "resume"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/suspend)
    */
  @send
  external suspend: audioContext => Promise.t<unit> = "suspend"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/close)
    */
  @send
  external close: audioContext => Promise.t<unit> = "close"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaElementSource)
    */
  @send
  external createMediaElementSource: (
    audioContext,
    htmlMediaElement,
  ) => mediaElementAudioSourceNode = "createMediaElementSource"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamSource)
    */
  @send
  external createMediaStreamSource: (audioContext, mediaStream) => mediaStreamAudioSourceNode =
    "createMediaStreamSource"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamDestination)
    */
  @send
  external createMediaStreamDestination: audioContext => mediaStreamAudioDestinationNode =
    "createMediaStreamDestination"
}

module MediaStream = {
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

module OfflineAudioContext = {
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
}
