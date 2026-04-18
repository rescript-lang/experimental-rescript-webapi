/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@send
external requestMediaKeySystemAccess: (
  Prelude.Types.navigator,
  ~keySystem: string,
  ~supportedConfigurations: array<Types.mediaKeySystemConfiguration>,
) => promise<Types.mediaKeySystemAccess> = "requestMediaKeySystemAccess"
