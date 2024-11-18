open Prelude
open DOMAPI

let isInstanceOfHTMLAnchorElement = (_: 't): bool => %raw(`param instanceof HTMLAnchorElement`)
let isInstanceOfHTMLAreaElement = (_: 't): bool => %raw(`param instanceof HTMLAreaElement`)
let isInstanceOfHTMLAudioElement = (_: 't): bool => %raw(`param instanceof HTMLAudioElement`)
let isInstanceOfHTMLBaseElement = (_: 't): bool => %raw(`param instanceof HTMLBaseElement`)
let isInstanceOfHTMLBodyElement = (_: 't): bool => %raw(`param instanceof HTMLBodyElement`)
let isInstanceOfHTMLBRElement = (_: 't): bool => %raw(`param instanceof HTMLBRElement`)
let isInstanceOfHTMLButtonElement = (_: 't): bool => %raw(`param instanceof HTMLButtonElement`)
let isInstanceOfHTMLCanvasElement = (_: 't): bool => %raw(`param instanceof HTMLCanvasElement`)
let isInstanceOfHTMLDataElement = (_: 't): bool => %raw(`param instanceof HTMLDataElement`)
let isInstanceOfHTMLDataListElement = (_: 't): bool => %raw(`param instanceof HTMLDataListElement`)
let isInstanceOfHTMLDetailsElement = (_: 't): bool => %raw(`param instanceof HTMLDetailsElement`)
let isInstanceOfHTMLDialogElement = (_: 't): bool => %raw(`param instanceof HTMLDialogElement`)
let isInstanceOfHTMLDivElement = (_: 't): bool => %raw(`param instanceof HTMLDivElement`)
let isInstanceOfHTMLDListElement = (_: 't): bool => %raw(`param instanceof HTMLDListElement`)
let isInstanceOfHTMLEmbedElement = (_: 't): bool => %raw(`param instanceof HTMLEmbedElement`)
let isInstanceOfHTMLFieldSetElement = (_: 't): bool => %raw(`param instanceof HTMLFieldSetElement`)
let isInstanceOfHTMLFormElement = (_: 't): bool => %raw(`param instanceof HTMLFormElement`)
let isInstanceOfHTMLHRElement = (_: 't): bool => %raw(`param instanceof HTMLHRElement`)
let isInstanceOfHTMLHeadElement = (_: 't): bool => %raw(`param instanceof HTMLHeadElement`)
let isInstanceOfHTMLHeadingElement = (_: 't): bool => %raw(`param instanceof HTMLHeadingElement`)
let isInstanceOfHTMLHtmlElement = (_: 't): bool => %raw(`param instanceof HTMLHtmlElement`)
let isInstanceOfHTMLIFrameElement = (_: 't): bool => %raw(`param instanceof HTMLIFrameElement`)
let isInstanceOfHTMLImageElement = (_: 't): bool => %raw(`param instanceof HTMLImageElement`)
let isInstanceOfHTMLInputElement = (_: 't): bool => %raw(`param instanceof HTMLInputElement`)
let isInstanceOfHTMLLabelElement = (_: 't): bool => %raw(`param instanceof HTMLLabelElement`)
let isInstanceOfHTMLLegendElement = (_: 't): bool => %raw(`param instanceof HTMLLegendElement`)
let isInstanceOfHTMLLIElement = (_: 't): bool => %raw(`param instanceof HTMLLIElement`)
let isInstanceOfHTMLLinkElement = (_: 't): bool => %raw(`param instanceof HTMLLinkElement`)
let isInstanceOfHTMLMapElement = (_: 't): bool => %raw(`param instanceof HTMLMapElement`)
let isInstanceOfHTMLMediaElement = (_: 't): bool => %raw(`param instanceof HTMLMediaElement`)
let isInstanceOfHTMLMenuElement = (_: 't): bool => %raw(`param instanceof HTMLMenuElement`)
let isInstanceOfHTMLMetaElement = (_: 't): bool => %raw(`param instanceof HTMLMetaElement`)
let isInstanceOfHTMLMeterElement = (_: 't): bool => %raw(`param instanceof HTMLMeterElement`)
let isInstanceOfHTMLModElement = (_: 't): bool => %raw(`param instanceof HTMLModElement`)
let isInstanceOfHTMLObjectElement = (_: 't): bool => %raw(`param instanceof HTMLObjectElement`)
let isInstanceOfHTMLOListElement = (_: 't): bool => %raw(`param instanceof HTMLOListElement`)
let isInstanceOfHTMLOptGroupElement = (_: 't): bool => %raw(`param instanceof HTMLOptGroupElement`)
let isInstanceOfHTMLOptionElement = (_: 't): bool => %raw(`param instanceof HTMLOptionElement`)
let isInstanceOfHTMLOutputElement = (_: 't): bool => %raw(`param instanceof HTMLOutputElement`)
let isInstanceOfHTMLParagraphElement = (_: 't): bool =>
  %raw(`param instanceof HTMLParagraphElement`)
let isInstanceOfHTMLPictureElement = (_: 't): bool => %raw(`param instanceof HTMLPictureElement`)
let isInstanceOfHTMLPreElement = (_: 't): bool => %raw(`param instanceof HTMLPreElement`)
let isInstanceOfHTMLProgressElement = (_: 't): bool => %raw(`param instanceof HTMLProgressElement`)
let isInstanceOfHTMLQuoteElement = (_: 't): bool => %raw(`param instanceof HTMLQuoteElement`)
let isInstanceOfHTMLScriptElement = (_: 't): bool => %raw(`param instanceof HTMLScriptElement`)
let isInstanceOfHTMLSelectElement = (_: 't): bool => %raw(`param instanceof HTMLSelectElement`)
let isInstanceOfHTMLSlotElement = (_: 't): bool => %raw(`param instanceof HTMLSlotElement`)
let isInstanceOfHTMLSourceElement = (_: 't): bool => %raw(`param instanceof HTMLSourceElement`)
let isInstanceOfHTMLSpanElement = (_: 't): bool => %raw(`param instanceof HTMLSpanElement`)
let isInstanceOfHTMLStyleElement = (_: 't): bool => %raw(`param instanceof HTMLStyleElement`)
let isInstanceOfHTMLTableCaptionElement = (_: 't): bool =>
  %raw(`param instanceof HTMLTableCaptionElement`)
let isInstanceOfHTMLTableCellElement = (_: 't): bool =>
  %raw(`param instanceof HTMLTableCellElement`)
let isInstanceOfHTMLTableColElement = (_: 't): bool => %raw(`param instanceof HTMLTableColElement`)
let isInstanceOfHTMLTableElement = (_: 't): bool => %raw(`param instanceof HTMLTableElement`)
let isInstanceOfHTMLTableRowElement = (_: 't): bool => %raw(`param instanceof HTMLTableRowElement`)
let isInstanceOfHTMLTableSectionElement = (_: 't): bool =>
  %raw(`param instanceof HTMLTableSectionElement`)
let isInstanceOfHTMLTemplateElement = (_: 't): bool => %raw(`param instanceof HTMLTemplateElement`)
let isInstanceOfHTMLTextAreaElement = (_: 't): bool => %raw(`param instanceof HTMLTextAreaElement`)
let isInstanceOfHTMLTimeElement = (_: 't): bool => %raw(`param instanceof HTMLTimeElement`)
let isInstanceOfHTMLTitleElement = (_: 't): bool => %raw(`param instanceof HTMLTitleElement`)
let isInstanceOfHTMLTrackElement = (_: 't): bool => %raw(`param instanceof HTMLTrackElement`)
let isInstanceOfHTMLUListElement = (_: 't): bool => %raw(`param instanceof HTMLUListElement`)
let isInstanceOfHTMLUnknownElement = (_: 't): bool => %raw(`param instanceof HTMLUnknownElement`)
let isInstanceOfHTMLVideoElement = (_: 't): bool => %raw(`param instanceof HTMLVideoElement`)

module Impl = (
  T: {
    type t
  },
) => {
  /**
`querySelector(T.t, string)`

Returns the first element that is a descendant of node that matches selectors.
If nothing matches, the result is `null`. Use `querySelector_` helpers to get a typed result.

```res
t->querySelector("#myCanvas")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
  */
  @send
  external querySelector: (T.t, string) => null<element> = "querySelector"

  let safeQuerySelector = (predicate: T.t => bool, t: T.t, selector: string): option<'return> => {
    let e = querySelector(t, selector)
    switch e {
    | Null.Null => None
    | Null.Value(e) => predicate(t) ? Some(unsafeConversation(e)) : None
    }
  }

  let querySelector_htmlAnchorElement = (t: T.t, selector: string): option<htmlAnchorElement> => {
    safeQuerySelector(isInstanceOfHTMLAnchorElement, t, selector)
  }
  let querySelector_htmlAreaElement = (t: T.t, selector: string): option<htmlAreaElement> => {
    safeQuerySelector(isInstanceOfHTMLAreaElement, t, selector)
  }
  let querySelector_htmlAudioElement = (t: T.t, selector: string): option<htmlAudioElement> => {
    safeQuerySelector(isInstanceOfHTMLAudioElement, t, selector)
  }
  let querySelector_htmlBaseElement = (t: T.t, selector: string): option<htmlBaseElement> => {
    safeQuerySelector(isInstanceOfHTMLBaseElement, t, selector)
  }
  let querySelector_htmlBodyElement = (t: T.t, selector: string): option<htmlBodyElement> => {
    safeQuerySelector(isInstanceOfHTMLBodyElement, t, selector)
  }
  let querySelector_htmlBRElement = (t: T.t, selector: string): option<htmlbrElement> => {
    safeQuerySelector(isInstanceOfHTMLBRElement, t, selector)
  }
  let querySelector_htmlButtonElement = (t: T.t, selector: string): option<htmlButtonElement> => {
    safeQuerySelector(isInstanceOfHTMLButtonElement, t, selector)
  }
  let querySelector_htmlCanvasElement = (t: T.t, selector: string): option<htmlCanvasElement> => {
    safeQuerySelector(isInstanceOfHTMLCanvasElement, t, selector)
  }
  let querySelector_htmlDataElement = (t: T.t, selector: string): option<htmlDataElement> => {
    safeQuerySelector(isInstanceOfHTMLDataElement, t, selector)
  }
  let querySelector_htmlDataListElement = (t: T.t, selector: string): option<
    htmlDataListElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLDataListElement, t, selector)
  }
  let querySelector_htmlDetailsElement = (t: T.t, selector: string): option<htmlDetailsElement> => {
    safeQuerySelector(isInstanceOfHTMLDetailsElement, t, selector)
  }
  let querySelector_htmlDialogElement = (t: T.t, selector: string): option<htmlDialogElement> => {
    safeQuerySelector(isInstanceOfHTMLDialogElement, t, selector)
  }
  let querySelector_htmlDivElement = (t: T.t, selector: string): option<htmlDivElement> => {
    safeQuerySelector(isInstanceOfHTMLDivElement, t, selector)
  }
  let querySelector_htmlDListElement = (t: T.t, selector: string): option<htmldListElement> => {
    safeQuerySelector(isInstanceOfHTMLDListElement, t, selector)
  }
  let querySelector_htmlEmbedElement = (t: T.t, selector: string): option<htmlEmbedElement> => {
    safeQuerySelector(isInstanceOfHTMLEmbedElement, t, selector)
  }
  let querySelector_htmlFieldSetElement = (t: T.t, selector: string): option<
    htmlFieldSetElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLFieldSetElement, t, selector)
  }
  let querySelector_htmlFormElement = (t: T.t, selector: string): option<htmlFormElement> => {
    safeQuerySelector(isInstanceOfHTMLFormElement, t, selector)
  }
  let querySelector_htmlHRElement = (t: T.t, selector: string): option<htmlhrElement> => {
    safeQuerySelector(isInstanceOfHTMLHRElement, t, selector)
  }
  let querySelector_htmlHeadElement = (t: T.t, selector: string): option<htmlHeadElement> => {
    safeQuerySelector(isInstanceOfHTMLHeadElement, t, selector)
  }
  let querySelector_htmlHeadingElement = (t: T.t, selector: string): option<htmlHeadingElement> => {
    safeQuerySelector(isInstanceOfHTMLHeadingElement, t, selector)
  }
  let querySelector_htmlHtmlElement = (t: T.t, selector: string): option<htmlHtmlElement> => {
    safeQuerySelector(isInstanceOfHTMLHtmlElement, t, selector)
  }
  let querySelector_htmlIFrameElement = (t: T.t, selector: string): option<htmliFrameElement> => {
    safeQuerySelector(isInstanceOfHTMLIFrameElement, t, selector)
  }
  let querySelector_htmlImageElement = (t: T.t, selector: string): option<htmlImageElement> => {
    safeQuerySelector(isInstanceOfHTMLImageElement, t, selector)
  }
  let querySelector_htmlInputElement = (t: T.t, selector: string): option<htmlInputElement> => {
    safeQuerySelector(isInstanceOfHTMLInputElement, t, selector)
  }
  let querySelector_htmlLabelElement = (t: T.t, selector: string): option<htmlLabelElement> => {
    safeQuerySelector(isInstanceOfHTMLLabelElement, t, selector)
  }
  let querySelector_htmlLegendElement = (t: T.t, selector: string): option<htmlLegendElement> => {
    safeQuerySelector(isInstanceOfHTMLLegendElement, t, selector)
  }
  let querySelector_htmlLIElement = (t: T.t, selector: string): option<htmlliElement> => {
    safeQuerySelector(isInstanceOfHTMLLIElement, t, selector)
  }
  let querySelector_htmlLinkElement = (t: T.t, selector: string): option<htmlLinkElement> => {
    safeQuerySelector(isInstanceOfHTMLLinkElement, t, selector)
  }
  let querySelector_htmlMapElement = (t: T.t, selector: string): option<htmlMapElement> => {
    safeQuerySelector(isInstanceOfHTMLMapElement, t, selector)
  }
  let querySelector_htmlMediaElement = (t: T.t, selector: string): option<htmlMediaElement> => {
    safeQuerySelector(isInstanceOfHTMLMediaElement, t, selector)
  }
  let querySelector_htmlMenuElement = (t: T.t, selector: string): option<htmlMenuElement> => {
    safeQuerySelector(isInstanceOfHTMLMenuElement, t, selector)
  }
  let querySelector_htmlMetaElement = (t: T.t, selector: string): option<htmlMetaElement> => {
    safeQuerySelector(isInstanceOfHTMLMetaElement, t, selector)
  }
  let querySelector_htmlMeterElement = (t: T.t, selector: string): option<htmlMeterElement> => {
    safeQuerySelector(isInstanceOfHTMLMeterElement, t, selector)
  }
  let querySelector_htmlModElement = (t: T.t, selector: string): option<htmlModElement> => {
    safeQuerySelector(isInstanceOfHTMLModElement, t, selector)
  }
  let querySelector_htmlObjectElement = (t: T.t, selector: string): option<htmlObjectElement> => {
    safeQuerySelector(isInstanceOfHTMLObjectElement, t, selector)
  }
  let querySelector_htmlOListElement = (t: T.t, selector: string): option<htmloListElement> => {
    safeQuerySelector(isInstanceOfHTMLOListElement, t, selector)
  }
  let querySelector_htmlOptGroupElement = (t: T.t, selector: string): option<
    htmlOptGroupElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLOptGroupElement, t, selector)
  }
  let querySelector_htmlOptionElement = (t: T.t, selector: string): option<htmlOptionElement> => {
    safeQuerySelector(isInstanceOfHTMLOptionElement, t, selector)
  }
  let querySelector_htmlOutputElement = (t: T.t, selector: string): option<htmlOutputElement> => {
    safeQuerySelector(isInstanceOfHTMLOutputElement, t, selector)
  }
  let querySelector_htmlParagraphElement = (t: T.t, selector: string): option<
    htmlParagraphElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLParagraphElement, t, selector)
  }
  let querySelector_htmlPictureElement = (t: T.t, selector: string): option<htmlPictureElement> => {
    safeQuerySelector(isInstanceOfHTMLPictureElement, t, selector)
  }
  let querySelector_htmlPreElement = (t: T.t, selector: string): option<htmlPreElement> => {
    safeQuerySelector(isInstanceOfHTMLPreElement, t, selector)
  }
  let querySelector_htmlProgressElement = (t: T.t, selector: string): option<
    htmlProgressElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLProgressElement, t, selector)
  }
  let querySelector_htmlQuoteElement = (t: T.t, selector: string): option<htmlQuoteElement> => {
    safeQuerySelector(isInstanceOfHTMLQuoteElement, t, selector)
  }
  let querySelector_htmlScriptElement = (t: T.t, selector: string): option<htmlScriptElement> => {
    safeQuerySelector(isInstanceOfHTMLScriptElement, t, selector)
  }
  let querySelector_htmlSelectElement = (t: T.t, selector: string): option<htmlSelectElement> => {
    safeQuerySelector(isInstanceOfHTMLSelectElement, t, selector)
  }
  let querySelector_htmlSlotElement = (t: T.t, selector: string): option<htmlSlotElement> => {
    safeQuerySelector(isInstanceOfHTMLSlotElement, t, selector)
  }
  let querySelector_htmlSourceElement = (t: T.t, selector: string): option<htmlSourceElement> => {
    safeQuerySelector(isInstanceOfHTMLSourceElement, t, selector)
  }
  let querySelector_htmlSpanElement = (t: T.t, selector: string): option<htmlSpanElement> => {
    safeQuerySelector(isInstanceOfHTMLSpanElement, t, selector)
  }
  let querySelector_htmlStyleElement = (t: T.t, selector: string): option<htmlStyleElement> => {
    safeQuerySelector(isInstanceOfHTMLStyleElement, t, selector)
  }
  let querySelector_htmlTableCaptionElement = (t: T.t, selector: string): option<
    htmlTableCaptionElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTableCaptionElement, t, selector)
  }
  let querySelector_htmlTableCellElement = (t: T.t, selector: string): option<
    htmlTableCellElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTableCellElement, t, selector)
  }
  let querySelector_htmlTableColElement = (t: T.t, selector: string): option<
    htmlTableColElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTableColElement, t, selector)
  }
  let querySelector_htmlTableElement = (t: T.t, selector: string): option<htmlTableElement> => {
    safeQuerySelector(isInstanceOfHTMLTableElement, t, selector)
  }
  let querySelector_htmlTableRowElement = (t: T.t, selector: string): option<
    htmlTableRowElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTableRowElement, t, selector)
  }
  let querySelector_htmlTableSectionElement = (t: T.t, selector: string): option<
    htmlTableSectionElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTableSectionElement, t, selector)
  }
  let querySelector_htmlTemplateElement = (t: T.t, selector: string): option<
    htmlTemplateElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTemplateElement, t, selector)
  }
  let querySelector_htmlTextAreaElement = (t: T.t, selector: string): option<
    htmlTextAreaElement,
  > => {
    safeQuerySelector(isInstanceOfHTMLTextAreaElement, t, selector)
  }
  let querySelector_htmlTimeElement = (t: T.t, selector: string): option<htmlTimeElement> => {
    safeQuerySelector(isInstanceOfHTMLTimeElement, t, selector)
  }
  let querySelector_htmlTitleElement = (t: T.t, selector: string): option<htmlTitleElement> => {
    safeQuerySelector(isInstanceOfHTMLTitleElement, t, selector)
  }
  let querySelector_htmlTrackElement = (t: T.t, selector: string): option<htmlTrackElement> => {
    safeQuerySelector(isInstanceOfHTMLTrackElement, t, selector)
  }
  let querySelector_htmlUListElement = (t: T.t, selector: string): option<htmluListElement> => {
    safeQuerySelector(isInstanceOfHTMLUListElement, t, selector)
  }
  let querySelector_htmlUnknownElement = (t: T.t, selector: string): option<htmlUnknownElement> => {
    safeQuerySelector(isInstanceOfHTMLUnknownElement, t, selector)
  }
  let querySelector_htmlVideoElement = (t: T.t, selector: string): option<htmlVideoElement> => {
    safeQuerySelector(isInstanceOfHTMLVideoElement, t, selector)
  }
}
