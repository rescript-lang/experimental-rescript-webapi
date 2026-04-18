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
external fromBlob: WebApiFile.Types.blob => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFile: WebApiFile.Types.file => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromURLSearchParams: WebApiURL.Types.urlSearchParams => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromFormData: Types.formData => Types.bodyInit = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_a_body)
 */
external fromReadableStream: WebApiFile.Types.readableStream<'t> => Types.bodyInit = "%identity"
