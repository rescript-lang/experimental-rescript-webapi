/**
 [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_headers)
 */
external fromDict: dict<string> => Types.headersInit = "%identity"

/**
 [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_headers)
 */
external fromHeaders: Types.headers => Types.headersInit = "%identity"

/**
 [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#setting_headers)
 */
external fromKeyValueArray: array<(string, string)> => Types.headersInit = "%identity"
