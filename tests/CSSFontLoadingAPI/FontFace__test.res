let dataView: DataView.t = Obj.magic()
let arrayBuffer: ArrayBuffer.t = Obj.magic()

let _fromString = CSSFontLoading.FontFace.fromString(
  ~family="Inter",
  ~source="url(/fonts/inter.woff2)",
)

let _fromDataView = CSSFontLoading.FontFace.fromDataView(~family="Inter", ~source=dataView)

let _fromArrayBuffer = CSSFontLoading.FontFace.fromArrayBuffer(~family="Inter", ~source=arrayBuffer)
