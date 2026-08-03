/**
Provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of map elements.
[See HTMLMapElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement/name)
    */
  mutable name: string,
  /**
    Retrieves a collection of the area objects defined for the given map object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement/areas)
    */
  areas: HTMLCollection.t<DOMTree.element>,
}

include HTMLElement.Impl({type t = t})
