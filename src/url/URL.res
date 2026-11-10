@editor.completeFrom(URL)
type t = UrlTypes.url = private {...UrlTypes.url}

@set external setHref: (t, string) => unit = "href"
@set external setProtocol: (t, string) => unit = "protocol"
@set external setUsername: (t, string) => unit = "username"
@set external setPassword: (t, string) => unit = "password"
@set external setHost: (t, string) => unit = "host"
@set external setHostname: (t, string) => unit = "hostname"
@set external setPort: (t, string) => unit = "port"
@set external setPathname: (t, string) => unit = "pathname"
@set external setSearch: (t, string) => unit = "search"
@set external setHash: (t, string) => unit = "hash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL)
*/
@throws(JsExn) @new
external make: (~url: string, ~base: string=?) => UrlTypes.url = "URL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/parse_static)
*/
@scope("URL")
external parse: (~url: string, ~base: string=?) => Null.t<UrlTypes.url> = "parse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/canParse_static)
*/
@scope("URL")
external canParse: (~url: string, ~base: string=?) => bool = "canParse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/toJSON)
*/
@send
external toJSON: UrlTypes.url => string = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/createObjectURL_static)
*/
@scope("URL")
external createObjectURL: unknown => string = "createObjectURL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/revokeObjectURL_static)
*/
@scope("URL")
external revokeObjectURL: string => unit = "revokeObjectURL"

module URLSearchParams = URLSearchParams
module Types = UrlTypes
