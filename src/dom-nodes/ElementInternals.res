type t = DOMTree.elementInternals = private {
  ...DOMTree.elementInternals,
}

@set external setAriaAtomic: (t, Null.t<string>) => unit = "ariaAtomic"
@set external setAriaAutoComplete: (t, Null.t<string>) => unit = "ariaAutoComplete"
@set external setAriaBrailleLabel: (t, Null.t<string>) => unit = "ariaBrailleLabel"
@set
external setAriaBrailleRoleDescription: (t, Null.t<string>) => unit = "ariaBrailleRoleDescription"
@set external setAriaBusy: (t, Null.t<string>) => unit = "ariaBusy"
@set external setAriaChecked: (t, Null.t<string>) => unit = "ariaChecked"
@set external setAriaColCount: (t, Null.t<string>) => unit = "ariaColCount"
@set external setAriaColIndex: (t, Null.t<string>) => unit = "ariaColIndex"
@set external setAriaColIndexText: (t, Null.t<string>) => unit = "ariaColIndexText"
@set external setAriaColSpan: (t, Null.t<string>) => unit = "ariaColSpan"
@set external setAriaCurrent: (t, Null.t<string>) => unit = "ariaCurrent"
@set external setAriaDescription: (t, Null.t<string>) => unit = "ariaDescription"
@set external setAriaDisabled: (t, Null.t<string>) => unit = "ariaDisabled"
@set external setAriaExpanded: (t, Null.t<string>) => unit = "ariaExpanded"
@set external setAriaHasPopup: (t, Null.t<string>) => unit = "ariaHasPopup"
@set external setAriaHidden: (t, Null.t<string>) => unit = "ariaHidden"
@set external setAriaKeyShortcuts: (t, Null.t<string>) => unit = "ariaKeyShortcuts"
@set external setAriaLabel: (t, Null.t<string>) => unit = "ariaLabel"
@set external setAriaLevel: (t, Null.t<string>) => unit = "ariaLevel"
@set external setAriaLive: (t, Null.t<string>) => unit = "ariaLive"
@set external setAriaModal: (t, Null.t<string>) => unit = "ariaModal"
@set external setAriaMultiLine: (t, Null.t<string>) => unit = "ariaMultiLine"
@set external setAriaMultiSelectable: (t, Null.t<string>) => unit = "ariaMultiSelectable"
@set external setAriaOrientation: (t, Null.t<string>) => unit = "ariaOrientation"
@set external setAriaPlaceholder: (t, Null.t<string>) => unit = "ariaPlaceholder"
@set external setAriaPosInSet: (t, Null.t<string>) => unit = "ariaPosInSet"
@set external setAriaPressed: (t, Null.t<string>) => unit = "ariaPressed"
@set external setAriaReadOnly: (t, Null.t<string>) => unit = "ariaReadOnly"
@set external setAriaRequired: (t, Null.t<string>) => unit = "ariaRequired"
@set external setAriaRoleDescription: (t, Null.t<string>) => unit = "ariaRoleDescription"
@set external setAriaRowCount: (t, Null.t<string>) => unit = "ariaRowCount"
@set external setAriaRowIndex: (t, Null.t<string>) => unit = "ariaRowIndex"
@set external setAriaRowIndexText: (t, Null.t<string>) => unit = "ariaRowIndexText"
@set external setAriaRowSpan: (t, Null.t<string>) => unit = "ariaRowSpan"
@set external setAriaSelected: (t, Null.t<string>) => unit = "ariaSelected"
@set external setAriaSetSize: (t, Null.t<string>) => unit = "ariaSetSize"
@set external setAriaSort: (t, Null.t<string>) => unit = "ariaSort"
@set external setAriaValueMax: (t, Null.t<string>) => unit = "ariaValueMax"
@set external setAriaValueMin: (t, Null.t<string>) => unit = "ariaValueMin"
@set external setAriaValueNow: (t, Null.t<string>) => unit = "ariaValueNow"
@set external setAriaValueText: (t, Null.t<string>) => unit = "ariaValueText"

/**
Sets both the state and submission value of internals's target element to value.

If value is null, the element won't participate in form submission.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setFormValue)
*/
@throws(JsExn) @send
external setFormValue: (DOMTree.elementInternals, ~value: unknown, ~state: unknown=?) => unit =
  "setFormValue"

/**
Marks internals's target element as suffering from the constraints indicated by the flags argument, and sets the element's validation message to message. If anchor is specified, the user agent might use it to indicate problems with the constraints of internals's target element when the form owner is validated interactively or reportValidity() is called.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setValidity)
*/
@throws(JsExn) @send
external setValidity: (
  DOMTree.elementInternals,
  ~flags: DOM.validityStateFlags=?,
  ~message: string=?,
  ~anchor: DOMTree.htmlElement=?,
) => unit = "setValidity"

/**
Returns true if internals's target element has no validity problems; false otherwise. Fires an invalid event at the element in the latter case.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/checkValidity)
*/
@throws(JsExn) @send
external checkValidity: DOMTree.elementInternals => bool = "checkValidity"

/**
Returns true if internals's target element has no validity problems; otherwise, returns false, fires an invalid event at the element, and (if the event isn't canceled) reports the problem to the user.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/reportValidity)
*/
@throws(JsExn) @send
external reportValidity: DOMTree.elementInternals => bool = "reportValidity"
