/**
A processing instruction embeds application-specific instructions in XML which can be ignored by other applications that don't recognize them.
[See ProcessingInstruction on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction)
*/
type t = private {
  ...CharacterData.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction/target)
    */
  target: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/sheet)
    */
  sheet: Null.t<StyleSheet.cssStyleSheet>,
}

external asCharacterData: t => CharacterData.t = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asEventTarget: t => DOM.eventTarget = "%identity"

@set external setNodeValue: (t, Null.t<string>) => unit = "nodeValue"
@set external setTextContent: (t, Null.t<string>) => unit = "textContent"
@set external setData: (t, string) => unit = "data"
