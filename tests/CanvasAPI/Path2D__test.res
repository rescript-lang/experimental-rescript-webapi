let path2D: WebApiCanvas.Types.path2D = Obj.magic()

let _make = WebApiCanvas.Path2D.make()
let _fromPath2D = WebApiCanvas.Path2D.fromPath2D(~path=path2D)
let _fromString = WebApiCanvas.Path2D.fromString(~path="M0 0 L10 10")
