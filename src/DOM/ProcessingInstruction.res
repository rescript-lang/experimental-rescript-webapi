/**
A processing instruction embeds application-specific instructions in XML which can be ignored by other applications that don't recognize them.
[See ProcessingInstruction on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction)
*/
type t = {
  ...CharacterData.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction/target)
    */
  target: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/sheet)
    */
  sheet: Null.t<DOM.cssStyleSheet>,
}
