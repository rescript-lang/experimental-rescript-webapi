@@warning("-30")

open Event

type fontDisplay =
  | @as("auto") Auto
  | @as("block") Block
  | @as("fallback") Fallback
  | @as("optional") Optional
  | @as("swap") Swap

type fontFaceLoadStatus =
  | @as("error") Error
  | @as("loaded") Loaded
  | @as("loading") Loading
  | @as("unloaded") Unloaded

type fontFaceSetLoadStatus =
  | @as("loaded") Loaded
  | @as("loading") Loading

/**
[See FontFace on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
type rec fontFace = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/family)
    */
  mutable family: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/style)
    */
  mutable style: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/weight)
    */
  mutable weight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/stretch)
    */
  mutable stretch: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/unicodeRange)
    */
  mutable unicodeRange: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/featureSettings)
    */
  mutable featureSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/display)
    */
  mutable display: fontDisplay,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/ascentOverride)
    */
  mutable ascentOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/descentOverride)
    */
  mutable descentOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/lineGapOverride)
    */
  mutable lineGapOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/status)
    */
  status: fontFaceLoadStatus,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/loaded)
    */
  loaded: Promise.t<fontFace>,
}

/**
[See FontFaceSet on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet)
*/
type rec fontFaceSet = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/ready)
    */
  ready: Promise.t<fontFaceSet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/status)
    */
  status: fontFaceSetLoadStatus,
}

type fontFaceDescriptors = {
  mutable style: string,
  mutable weight: string,
  mutable stretch: string,
  mutable unicodeRange: string,
  mutable featureSettings: string,
  mutable display: fontDisplay,
  mutable ascentOverride: string,
  mutable descentOverride: string,
  mutable lineGapOverride: string,
}

module FontFace = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
    */
  @new
  external make: (string, unknown, fontFaceDescriptors) => fontFace = "FontFace"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
    */
  @send
  external load: fontFace => Promise.t<fontFace> = "load"
}

module FontFaceSet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/add)
    */
  @send
  external add: (fontFaceSet, fontFace) => fontFaceSet = "add"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/delete)
    */
  @send
  external delete: (fontFaceSet, fontFace) => bool = "delete"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/clear)
    */
  @send
  external clear: fontFaceSet => unit = "clear"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/load)
    */
  @send
  external load: (fontFaceSet, string, string) => Promise.t<array<fontFace>> = "load"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/check)
    */
  @send
  external check: (fontFaceSet, string, string) => bool = "check"
}
