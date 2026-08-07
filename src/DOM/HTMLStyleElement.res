/**
A <style> element. It inherits properties and methods from its parent, HTMLElement, and from LinkStyle.
[See HTMLStyleElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Enables or disables the style sheet.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement/disabled)
    */
  mutable disabled: bool,
  /**
    Sets or retrieves the media type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement/media)
    */
  mutable media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/sheet)
    */
  sheet: Null.t<StyleSheet.cssStyleSheet>,
}

include HTMLElement.Impl({type t = t})
