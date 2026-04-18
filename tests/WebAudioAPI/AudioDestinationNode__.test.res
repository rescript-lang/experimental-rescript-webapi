let ctx = WebAudio.AudioContext.make()

let destinationNode = ctx.destination->WebAudio.AudioDestinationNode.asAudioNode
let context = WebAudio.AudioContext.asBaseAudioContext(ctx)

let osc = WebAudio.OscillatorNode.make(
  ~context,
  ~options={
    type_: WebAudio.Types.Sine,
    frequency: 440.0,
  },
)
let gain = WebAudio.GainNode.make(
  ~context,
  ~options={
    gain: 0.3,
  },
)
let _ = gain->WebAudio.GainNode.connect(~destinationNode)
let _ =
  osc
  ->WebAudio.OscillatorNode.asAudioScheduledSourceNode
  ->WebAudio.AudioScheduledSourceNode.connect(~destinationNode=gain->WebAudio.GainNode.asAudioNode)

osc->WebAudio.OscillatorNode.start
