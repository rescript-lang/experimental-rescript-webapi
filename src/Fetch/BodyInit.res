type t = Types.bodyInit

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromString: string => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromArrayBuffer: ArrayBuffer.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromTypedArray: TypedArray.t<'t> => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromDataView: DataView.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromBlob: WebApi.File.Blob.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFile: WebApi.File.File.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromURLSearchParams: WebApi.URL.URLSearchParams.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFormData: FormData.t => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromReadableStream: WebApi.File.ReadableStream.t<'t> => t = "%identity"
