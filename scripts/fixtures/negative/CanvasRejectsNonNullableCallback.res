let canvas: WebAPI.HTMLCanvasElement.t = %raw(`document.createElement("canvas")`)
WebAPI.HTMLCanvasElement.toBlob(canvas, ~callback=(_blob: WebAPI.Blob.t) => ())
