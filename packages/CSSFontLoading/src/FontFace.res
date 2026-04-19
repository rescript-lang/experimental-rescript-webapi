/**
`fromString(~family: string, ~source: string, ~descriptors: fontFaceDescriptors=?)`

The FontFace() constructor creates a new FontFace object from CSS source text.

Source shape:
- `family`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for the font family name.
- `source`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) containing CSS [`@font-face` `src`](https://developer.mozilla.org/docs/Web/CSS/@font-face/src) text.
- `descriptors`: local [`fontFaceDescriptors`](../#fontFaceDescriptors) values for optional constructor descriptors.

```res
let fontFace =
  FontFace.fromString(~family="Inter", ~source="url(/fonts/inter.woff2)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromString: (
  ~family: string,
  ~source: string,
  ~descriptors: Types.fontFaceDescriptors=?,
) => Types.fontFace = "FontFace"

/**
`fromDataView(~family: string, ~source: DataView.t, ~descriptors: fontFaceDescriptors=?)`

The FontFace() constructor creates a new FontFace object from DataView-backed font data.

Source shape:
- `family`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for the font family name.
- `source`: ReScript [`DataView.t`](https://rescript-lang.org/docs/manual/api/stdlib/dataview) mapped to MDN [DataView](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/DataView).
- `descriptors`: local [`fontFaceDescriptors`](../#fontFaceDescriptors) values for optional constructor descriptors.

```res
let fontFace =
  FontFace.fromDataView(~family="Inter", ~source=myDataView)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromDataView: (
  ~family: string,
  ~source: DataView.t,
  ~descriptors: Types.fontFaceDescriptors=?,
) => Types.fontFace = "FontFace"

/**
`fromArrayBuffer(~family: string, ~source: ArrayBuffer.t, ~descriptors: fontFaceDescriptors=?)`

The FontFace() constructor creates a new FontFace object from ArrayBuffer-backed font data.

Source shape:
- `family`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for the font family name.
- `source`: ReScript [`ArrayBuffer.t`](https://rescript-lang.org/docs/manual/api/stdlib/arraybuffer) mapped to MDN [ArrayBuffer](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer).
- `descriptors`: local [`fontFaceDescriptors`](../#fontFaceDescriptors) values for optional constructor descriptors.

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
  ~descriptors: Types.fontFaceDescriptors=?,
) => Types.fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: Types.fontFace => promise<Types.fontFace> = "load"
