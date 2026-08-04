/**
The location (WebApiURL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  /**
    Returns the Location object's URL.

Can be set, to navigate to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/href)
    */
  mutable href: string,
  /**
    Returns the Location object's WebApiURL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/origin)
    */
  origin: string,
  /**
    Returns the Location object's WebApiURL's scheme.

Can be set, to navigate to the same WebApiURL with a changed scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/protocol)
    */
  mutable protocol: string,
  /**
    Returns the Location object's WebApiURL's host and port (if different from the default port for the scheme).

Can be set, to navigate to the same WebApiURL with a changed host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/host)
    */
  mutable host: string,
  /**
    Returns the Location object's WebApiURL's host.

Can be set, to navigate to the same WebApiURL with a changed host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hostname)
    */
  mutable hostname: string,
  /**
    Returns the Location object's WebApiURL's port.

Can be set, to navigate to the same WebApiURL with a changed port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/port)
    */
  mutable port: string,
  /**
    Returns the Location object's WebApiURL's path.

Can be set, to navigate to the same WebApiURL with a changed path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/pathname)
    */
  mutable pathname: string,
  /**
    Returns the Location object's WebApiURL's query (includes leading "?" if non-empty).

Can be set, to navigate to the same WebApiURL with a changed query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/search)
    */
  mutable search: string,
  /**
    Returns the Location object's WebApiURL's fragment (includes leading "#" if non-empty).

Can be set, to navigate to the same WebApiURL with a changed fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hash)
    */
  mutable hash: string,
  /**
    Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/ancestorOrigins)
    */
  ancestorOrigins: DOM.domStringList,
}

/**
Navigates to the given URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/assign)
*/
@send
external assign: (t, string) => unit = "assign"

/**
Removes the current page from the session history and navigates to the given URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/replace)
*/
@send
external replace: (t, string) => unit = "replace"

/**
Reloads the current page.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/reload)
*/
@send
external reload: t => unit = "reload"

/**
The `location` object from `window`.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
**/
@scope("window")
external fromWindow: t = "location"

/**
The `location` object from `document`.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
**/
@scope("document")
external fromDocument: t = "location"
