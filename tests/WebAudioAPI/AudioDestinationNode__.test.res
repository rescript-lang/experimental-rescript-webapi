let ctx = WebApi.WebAudio.AudioContext.make()

let destinationNode = ctx.destination->WebApi.WebAudio.AudioDestinationNode.asAudioNode
let context = WebApi.WebAudio.AudioContext.asBaseAudioContext(ctx)

let osc = WebApi.WebAudio.OscillatorNode.make(
  ~context,
  ~options={
    type_: WebApi.WebAudio.Types.Sine,
    frequency: 440.0,
  },
)
let gain = WebApi.WebAudio.GainNode.make(
  ~context,
  ~options={
    gain: 0.3,
  },
)
let _ = gain->WebApi.WebAudio.GainNode.connect(~destinationNode)
let _ =
  osc
  ->WebApi.WebAudio.OscillatorNode.asAudioScheduledSourceNode
  ->WebApi.WebAudio.AudioScheduledSourceNode.connect(
    ~destinationNode=gain->WebApi.WebAudio.GainNode.asAudioNode,
  )

osc->WebApi.WebAudio.OscillatorNode.start
