type t = WebMidiTypes.midiAccess = private {...WebMidiTypes.midiAccess}

include EventTarget.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"

type midiOptions = WebMidiTypes.midiOptions = {...WebMidiTypes.midiOptions}

module Types = WebMidiTypes
