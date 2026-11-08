@editor.completeFrom(URL)
type t = UrlTypes.url

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/href)
*/
@get
external getHref: t => string = "href"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/href)
*/
@throws(JsExn) @set
external setHref: (t, string) => unit = "href"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/origin)
*/
@get
external getOrigin: t => string = "origin"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/protocol)
*/
@get
external getProtocol: t => string = "protocol"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/protocol)
*/
@set
external setProtocol: (t, string) => unit = "protocol"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/username)
*/
@get
external getUsername: t => string = "username"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/username)
*/
@set
external setUsername: (t, string) => unit = "username"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/password)
*/
@get
external getPassword: t => string = "password"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/password)
*/
@set
external setPassword: (t, string) => unit = "password"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/host)
*/
@get
external getHost: t => string = "host"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/host)
*/
@set
external setHost: (t, string) => unit = "host"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hostname)
*/
@get
external getHostname: t => string = "hostname"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hostname)
*/
@set
external setHostname: (t, string) => unit = "hostname"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/port)
*/
@get
external getPort: t => string = "port"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/port)
*/
@set
external setPort: (t, string) => unit = "port"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/pathname)
*/
@get
external getPathname: t => string = "pathname"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/pathname)
*/
@set
external setPathname: (t, string) => unit = "pathname"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/search)
*/
@get
external getSearch: t => string = "search"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/search)
*/
@set
external setSearch: (t, string) => unit = "search"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/searchParams)
*/
@get
external getSearchParams: t => UrlTypes.urlSearchParams = "searchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hash)
*/
@get
external getHash: t => string = "hash"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hash)
*/
@set
external setHash: (t, string) => unit = "hash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL)
*/
@throws(JsExn) @new
external make: (~url: string, ~base: string=?) => t = "URL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/parse_static)
*/
@scope("URL")
external parse: (~url: string, ~base: string=?) => Null.t<t> = "parse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/canParse_static)
*/
@scope("URL")
external canParse: (~url: string, ~base: string=?) => bool = "canParse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/toJSON)
*/
@send
external toJSON: t => string = "toJSON"

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
