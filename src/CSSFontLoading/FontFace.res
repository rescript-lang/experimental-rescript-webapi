type t = CssFontLoadingTypes.fontFace = private {...CssFontLoadingTypes.fontFace}
type descriptors = CssFontLoadingTypes.fontFaceDescriptors = private {
  ...CssFontLoadingTypes.fontFaceDescriptors,
}

/**
`fromString(~family: string, ~source: string, ~descriptors: fontFaceDescriptors=?)`

Creates a new `FontFace` from CSS source text.

```res
let fontFace =
  FontFace.fromString(~family="Inter", ~source="url(/fonts/inter.woff2)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromString: (~family: string, ~source: string, ~descriptors: descriptors=?) => t =
  "FontFace"

/**
`fromDataView(~family: string, ~source: DataView.t, ~descriptors: fontFaceDescriptors=?)`

Creates a new `FontFace` from `DataView`-backed font data.

```res
let fontFace =
  FontFace.fromDataView(~family="Inter", ~source=myDataView)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromDataView: (~family: string, ~source: DataView.t, ~descriptors: descriptors=?) => t =
  "FontFace"

/**
`fromArrayBuffer(~family: string, ~source: ArrayBuffer.t, ~descriptors: fontFaceDescriptors=?)`

Creates a new `FontFace` from `ArrayBuffer`-backed font data.

```res
let fontFace =
  FontFace.fromArrayBuffer(~family="Inter", ~source=myArrayBuffer)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromArrayBuffer: (
  ~family: string,
  ~source: ArrayBuffer.t,
  ~descriptors: descriptors=?,
) => t = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: t => promise<t> = "load"
