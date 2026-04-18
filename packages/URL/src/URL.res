/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL)
*/
@new
external make: (~url: string, ~base: string=?) => Types.url = "WebApiURL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/parse_static)
*/
@scope("WebApiURL")
external parse: (~url: string, ~base: string=?) => Types.url = "parse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/canParse_static)
*/
@scope("WebApiURL")
external canParse: (~url: string, ~base: string=?) => bool = "canParse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/toJSON)
*/
@send
external toJSON: Types.url => string = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/createObjectURL_static)
*/
@scope("WebApiURL")
external createObjectURL: unknown => string = "createObjectURL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/revokeObjectURL_static)
*/
@scope("WebApiURL")
external revokeObjectURL: string => unit = "revokeObjectURL"
