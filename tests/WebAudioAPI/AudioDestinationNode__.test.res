let ctx = WebApiWebAudio.AudioContext.make()

let destinationNode = ctx.destination->WebApiWebAudio.AudioDestinationNode.asAudioNode
let context = WebApiWebAudio.AudioContext.asBaseAudioContext(ctx)

let osc = WebApiWebAudio.OscillatorNode.make(
  ~context,
  ~options={
    type_: WebApiWebAudio.Types.Sine,
    frequency: 440.0,
  },
)
let gain = WebApiWebAudio.GainNode.make(
  ~context,
  ~options={
    gain: 0.3,
  },
)
let _ = gain->WebApiWebAudio.GainNode.connect(~destinationNode)
let _ =
  osc
  ->WebApiWebAudio.OscillatorNode.asAudioScheduledSourceNode
  ->WebApiWebAudio.AudioScheduledSourceNode.connect(
    ~destinationNode=gain->WebApiWebAudio.GainNode.asAudioNode,
  )

osc->WebApiWebAudio.OscillatorNode.start
