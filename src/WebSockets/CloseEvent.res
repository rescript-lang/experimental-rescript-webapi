include WebApi.Event.Event.Impl({type t = Types.closeEvent})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.closeEventInit=?) => Types.closeEvent =
  "CloseEvent"
