include WebApi.Event.EventTarget.Impl({type t = Types.speechSynthesisUtterance})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
*/
@new
external make: (~text: string=?) => Types.speechSynthesisUtterance = "SpeechSynthesisUtterance"
