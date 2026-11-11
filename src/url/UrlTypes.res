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
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(URL)
type url
