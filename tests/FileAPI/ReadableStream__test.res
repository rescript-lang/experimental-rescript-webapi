let underlyingSource: File.Types.underlyingSource<string> = Obj.magic()
let strategy: File.Types.queuingStrategy<string> = Obj.magic()

let _make: File.ReadableStream.t<string> = File.ReadableStream.make()

let _fromUnderlyingSource = File.ReadableStream.fromUnderlyingSource(underlyingSource)

let _fromUnderlyingSourceWithStrategy = File.ReadableStream.fromUnderlyingSource(
  underlyingSource,
  ~strategy,
)
