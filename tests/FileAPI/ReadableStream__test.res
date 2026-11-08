let underlyingSource: FileTypes.underlyingSource<string> = Obj.magic()
let strategy: FileTypes.queuingStrategy<string> = Obj.magic()

let _make: ReadableStream.t<string> = ReadableStream.make()

let _fromUnderlyingSource: ReadableStream.t<string> = ReadableStream.fromUnderlyingSource(
  underlyingSource,
)

let _fromUnderlyingSourceWithStrategy: ReadableStream.t<
  string,
> = ReadableStream.fromUnderlyingSource(underlyingSource, ~strategy)
