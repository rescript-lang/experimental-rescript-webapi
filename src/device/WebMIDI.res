type t = WebMidiTypes.midiAccess = private {...WebMidiTypes.midiAccess}

include EventTarget.Impl({type t = t})

type midiOptions = WebMidiTypes.midiOptions = {...WebMidiTypes.midiOptions}

module Types = WebMidiTypes
