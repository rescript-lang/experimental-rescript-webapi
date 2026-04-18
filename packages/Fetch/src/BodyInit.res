/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromString: string => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromArrayBuffer: ArrayBuffer.t => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromTypedArray: TypedArray.t<'t> => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromDataView: DataView.t => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromBlob: File.Types.blob => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFile: File.Types.file => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromURLSearchParams: URL.Types.urlSearchParams => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFormData: Types.formData => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromReadableStream: File.Types.readableStream<'t> => Types.bodyInit = "%identity"
