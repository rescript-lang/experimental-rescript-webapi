let dataView: DataView.t = Obj.magic()
let arrayBuffer: ArrayBuffer.t = Obj.magic()

let _fromString = WebApiCSSFontLoading.FontFace.fromString(
  ~family="Inter",
  ~source="url(/fonts/inter.woff2)",
)

let _fromDataView = WebApiCSSFontLoading.FontFace.fromDataView(~family="Inter", ~source=dataView)

let _fromArrayBuffer = WebApiCSSFontLoading.FontFace.fromArrayBuffer(
  ~family="Inter",
  ~source=arrayBuffer,
)
