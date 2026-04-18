let ctx: AudioContext.t = AudioContext.make()

let destinationNode: AudioNode.t = ctx.destination->AudioDestinationNode.asAudioNode
let context: AudioContext.baseAudioContext = AudioContext.asBaseAudioContext(ctx)

let oscillatorOptions: OscillatorNode.oscillatorOptions = {
  type_: Sine,
  frequency: 440.0,
}
let osc: OscillatorNode.t = OscillatorNode.make(~context, ~options=oscillatorOptions)

let gainOptions: GainNode.gainOptions = {
  gain: 0.3,
}
let gain: GainNode.t = GainNode.make(~context, ~options=gainOptions)

let _ = gain->GainNode.connect(~destinationNode)
let _scheduledSource: AudioScheduledSourceNode.t = osc->OscillatorNode.asAudioScheduledSourceNode
let _ =
  _scheduledSource->AudioScheduledSourceNode.connect(~destinationNode=gain->GainNode.asAudioNode)

osc->OscillatorNode.start
