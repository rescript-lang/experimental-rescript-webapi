let underlyingSource: WebApiFile.Types.underlyingSource<string> = Obj.magic()
let strategy: WebApiFile.Types.queuingStrategy<string> = Obj.magic()

let _make: WebApiFile.ReadableStream.t<string> = WebApiFile.ReadableStream.make()

let _fromUnderlyingSource = WebApiFile.ReadableStream.fromUnderlyingSource(~underlyingSource)

let _fromUnderlyingSourceWithStrategy = WebApiFile.ReadableStream.fromUnderlyingSourceWithStrategy(
  ~underlyingSource,
  ~strategy,
)
