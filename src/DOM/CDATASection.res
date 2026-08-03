/**
A CDATA section that can be used within XML to include extended portions of unescaped text. The symbols < and & don't need escaping as they normally do when inside a CDATA section.
[See CDATASection on MDN](https://developer.mozilla.org/docs/Web/API/CDATASection)
*/
type t = {
  ...Text.t,
}
