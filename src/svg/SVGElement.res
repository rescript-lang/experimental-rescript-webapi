/**
Used for attributes of type SVGPreserveAspectRatio which can be animated.
[See SVGAnimatedPreserveAspectRatio on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedPreserveAspectRatio)
*/
type svgAnimatedPreserveAspectRatio = private {}

type svgAnimatedString = private {
  mutable baseVal: string,
  animVal: string,
}

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedString/baseVal)
*/
@set
external setAnimatedStringBaseVal: (svgAnimatedString, string) => unit = "baseVal"

/**
Correspond to the <length> basic data type.
[See SVGLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGLength)
*/
@editor.completeFrom(SVGLength)
type svgLength = private {}

/**
Used for attributes of basic type <length> which can be animated.
[See SVGAnimatedLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength)
*/
type svgAnimatedLength = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/baseVal)
    */
  baseVal: svgLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/animVal)
    */
  animVal: svgLength,
}

/**
All of the SVG WebApiDOM interfaces that correspond directly to elements in the SVG language derive from the SVGElement interface.
[See SVGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGElement)
*/
type t = private {
  ...DOMTree.element,
  className: svgAnimatedString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dataset)
    */
  dataset: DOMStringMap.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/nonce)
    */
  mutable nonce?: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autofocus)
    */
  mutable autofocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/tabIndex)
    */
  mutable tabIndex: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/style)
    */
  style: CSSStyleDeclaration.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attributeStyleMap)
    */
  attributeStyleMap: StylePropertyMap.t,
}

module Impl = (
  T: {
    type t
  },
) => {
  include Element.Impl({type t = T.t})

  external asSVGElement: T.t => t = "%identity"

  /**
  Writes the native string-valued nonce property. Pass an empty string to clear it.
  */
  @set
  external setNonce: (T.t, string) => unit = "nonce"
  @set
  external setAutofocus: (T.t, bool) => unit = "autofocus"
  @set
  external setTabIndex: (T.t, int) => unit = "tabIndex"
}

include Impl({type t = t})

/**
SVG elements whose primary purpose is to directly render graphics into a group.
[See SVGGraphicsElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement)
*/
@editor.completeFrom(SVGGraphicsElement)
type svgGraphicsElement = private {
  ...t,
}

/**
Corresponds to the <image> element.
[See SVGImageElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement)
*/
type svgImageElement = private {
  ...svgGraphicsElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/x)
    */
  x: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/y)
    */
  y: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/width)
    */
  width: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/height)
    */
  height: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/preserveAspectRatio)
    */
  preserveAspectRatio: svgAnimatedPreserveAspectRatio,
}

type svgBoundingBoxOptions = {
  mutable fill?: bool,
  mutable stroke?: bool,
  mutable markers?: bool,
  mutable clipped?: bool,
}
