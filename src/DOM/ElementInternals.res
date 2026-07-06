// /**
// [See ElementInternals on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals)
// TODO: mark as private once mutating fields of private records is allowed
// */
// type elementInternals = {
//   /**
//     Returns the ShadowRoot for internals's target element, if the target element is a shadow host, or null otherwise.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/shadowRoot)
//     */
//   shadowRoot: Null.t<shadowRoot>,
//   /**
//     Returns the form owner of internals's target element.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/form)
//     */
//   form: Null.t<HTMLFormElement.t>,
//   /**
//     Returns true if internals's target element will be validated when the form is submitted; false otherwise.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/willValidate)
//     */
//   willValidate: bool,
//   /**
//     Returns the ValidityState object for internals's target element.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validity)
//     */
//   validity: validityState,
//   /**
//     Returns the error message that would be shown to the user if internals's target element was to be checked for validity.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validationMessage)
//     */
//   validationMessage: string,
//   /**
//     Returns a NodeList of all the label elements that internals's target element is associated with.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/labels)
//     */
//   labels: nodeList<unknown>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/states)
//     */
//   states: customStateSet,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAtomic)
//     */
//   mutable ariaAtomic: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAutoComplete)
//     */
//   mutable ariaAutoComplete: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleLabel)
//     */
//   mutable ariaBrailleLabel: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleRoleDescription)
//     */
//   mutable ariaBrailleRoleDescription: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBusy)
//     */
//   mutable ariaBusy: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaChecked)
//     */
//   mutable ariaChecked: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColCount)
//     */
//   mutable ariaColCount: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndex)
//     */
//   mutable ariaColIndex: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndexText)
//     */
//   mutable ariaColIndexText: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColSpan)
//     */
//   mutable ariaColSpan: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaCurrent)
//     */
//   mutable ariaCurrent: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDescription)
//     */
//   mutable ariaDescription: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDisabled)
//     */
//   mutable ariaDisabled: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaExpanded)
//     */
//   mutable ariaExpanded: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHasPopup)
//     */
//   mutable ariaHasPopup: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHidden)
//     */
//   mutable ariaHidden: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaKeyShortcuts)
//     */
//   mutable ariaKeyShortcuts: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLabel)
//     */
//   mutable ariaLabel: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLevel)
//     */
//   mutable ariaLevel: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLive)
//     */
//   mutable ariaLive: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaModal)
//     */
//   mutable ariaModal: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiLine)
//     */
//   mutable ariaMultiLine: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiSelectable)
//     */
//   mutable ariaMultiSelectable: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaOrientation)
//     */
//   mutable ariaOrientation: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPlaceholder)
//     */
//   mutable ariaPlaceholder: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPosInSet)
//     */
//   mutable ariaPosInSet: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPressed)
//     */
//   mutable ariaPressed: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaReadOnly)
//     */
//   mutable ariaReadOnly: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRequired)
//     */
//   mutable ariaRequired: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRoleDescription)
//     */
//   mutable ariaRoleDescription: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowCount)
//     */
//   mutable ariaRowCount: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndex)
//     */
//   mutable ariaRowIndex: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndexText)
//     */
//   mutable ariaRowIndexText: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowSpan)
//     */
//   mutable ariaRowSpan: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSelected)
//     */
//   mutable ariaSelected: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSetSize)
//     */
//   mutable ariaSetSize: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSort)
//     */
//   mutable ariaSort: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMax)
//     */
//   mutable ariaValueMax: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMin)
//     */
//   mutable ariaValueMin: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueNow)
//     */
//   mutable ariaValueNow: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueText)
//     */
//   mutable ariaValueText: Null.t<string>,
// }



// /**
// Sets both the state and submission value of internals's target element to value.

// If value is null, the element won't participate in form submission.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setFormValue)
// */
// @send
// external setFormValue: (DomTypes.elementInternals, ~value: unknown, ~state: unknown=?) => unit =
//   "setFormValue"

// /**
// Marks internals's target element as suffering from the constraints indicated by the flags argument, and sets the element's validation message to message. If anchor is specified, the user agent might use it to indicate problems with the constraints of internals's target element when the form owner is validated interactively or reportValidity() is called.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setValidity)
// */
// @send
// external setValidity: (
//   elementInternals,
//   ~flags: DomTypes.validityStateFlags=?,
//   ~message: string=?,
//   ~anchor: DomTypes.htmlElement=?,
// ) => unit = "setValidity"

// /**
// Returns true if internals's target element has no validity problems; false otherwise. Fires an invalid event at the element in the latter case.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/checkValidity)
// */
// @send
// external checkValidity: DomTypes.elementInternals => bool = "checkValidity"

// /**
// Returns true if internals's target element has no validity problems; otherwise, returns false, fires an invalid event at the element, and (if the event isn't canceled) reports the problem to the user.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/reportValidity)
// */
// @send
// external reportValidity: DomTypes.elementInternals => bool = "reportValidity"
