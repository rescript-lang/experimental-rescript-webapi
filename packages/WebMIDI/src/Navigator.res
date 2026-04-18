/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@send
external requestMIDIAccess: (
  Prelude.Types.navigator,
  ~options: Types.midiOptions=?,
) => promise<Types.midiAccess> = "requestMIDIAccess"
