type t = WebMidiTypes.midiAccess = {...WebMidiTypes.midiAccess}

include Event.EventTarget.Impl({type t = t})

type midiOptions = WebMidiTypes.midiOptions = {...WebMidiTypes.midiOptions}

module Types = WebMidiTypes
