/**
A CDATA section that can be used within XML to include extended portions of unescaped text. The symbols < and & don't need escaping as they normally do when inside a CDATA section.
[See CDATASection on MDN](https://developer.mozilla.org/docs/Web/API/CDATASection)
*/
type t = private {
  ...Text.t,
}

external asText: t => Text.t = "%identity"
external asCharacterData: t => CharacterData.t = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asEventTarget: t => DOM.eventTarget = "%identity"

@set external setNodeValue: (t, Null.t<string>) => unit = "nodeValue"
@set external setTextContent: (t, Null.t<string>) => unit = "textContent"
@set external setData: (t, string) => unit = "data"
