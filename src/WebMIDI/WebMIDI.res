type t = Types.midiAccess = {...Types.midiAccess}

include WebApi.Event.EventTarget.Impl({type t = t})

type midiOptions = Types.midiOptions = {...Types.midiOptions}

module Types = WebMidiTypes
