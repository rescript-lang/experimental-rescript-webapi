@@warning("-30")

/**
[See URLSearchParams on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@editor.completeFrom(URLSearchParams)
type urlSearchParams = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/size)
    */
  size: int,
}

/**
The WebApiURL interface represents an object providing static methods used for creating object URLs.
[See WebApiURL on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL)
*/
@editor.completeFrom(WebApiURL)
type url = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/href)
    */
  mutable href: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/origin)
    */
  origin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/protocol)
    */
  mutable protocol: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/username)
    */
  mutable username: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/password)
    */
  mutable password: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/host)
    */
  mutable host: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/hostname)
    */
  mutable hostname: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/port)
    */
  mutable port: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/pathname)
    */
  mutable pathname: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/search)
    */
  mutable search: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/searchParams)
    */
  searchParams: urlSearchParams,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiURL/hash)
    */
  mutable hash: string,
}
