/**
Provides special properties (beyond the HTMLElement object interface it also has available to it by inheritance) to manipulate <datalist> elements and their content.
[See HTMLDataListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataListElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    Returns an HTMLCollection of the option elements of the datalist element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataListElement/options)
    */
  options: HTMLCollection.t<HTMLOptionElement.t>,
}

include HTMLElement.Impl({type t = t})
