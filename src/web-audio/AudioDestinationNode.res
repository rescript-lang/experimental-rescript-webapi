include AudioNode.Impl({type t = WebAudioTypes.audioDestinationNode})

external asEventTarget: WebAudioTypes.audioDestinationNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.audioDestinationNode => WebAudioTypes.audioNode = "%identity"
