@@warning("-30")

/**
[See URLSearchParams on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@editor.completeFrom(URLSearchParams)
type urlSearchParams = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/size)
    */
  size: int,
}

/**
The WebApiURL interface represents an object providing static methods used for creating object URLs.
[See WebApiURL on MDN](https://developer.mozilla.org/docs/Web/API/URL)
*/
@editor.completeFrom(URL)
type url = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/href)
    */
  @set
  mutable href: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/origin)
    */
  origin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/protocol)
    */
  @set
  mutable protocol: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/username)
    */
  @set
  mutable username: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/password)
    */
  @set
  mutable password: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/host)
    */
  @set
  mutable host: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hostname)
    */
  @set
  mutable hostname: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/port)
    */
  @set
  mutable port: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/pathname)
    */
  @set
  mutable pathname: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/search)
    */
  @set
  mutable search: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/searchParams)
    */
  searchParams: urlSearchParams,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hash)
    */
  @set
  mutable hash: string,
}
