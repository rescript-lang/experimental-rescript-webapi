let _bytes: array<int> =
  await WebAPI.Request.fromURL("https://example.invalid/")->WebAPI.Request.bytes
