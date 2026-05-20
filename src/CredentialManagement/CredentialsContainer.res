/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/get)
*/
@scope("globalThis.navigator.credentials")
external get: (
  ~options: CredentialManagementTypes.credentialRequestOptions=?,
) => promise<CredentialManagementTypes.credential> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/store)
*/
@scope("globalThis.navigator.credentials")
external store: CredentialManagementTypes.credential => promise<unit> = "store"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/create)
*/
@scope("globalThis.navigator.credentials")
external create: (
  ~options: CredentialManagementTypes.credentialCreationOptions=?,
) => promise<CredentialManagementTypes.credential> = "create"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/preventSilentAccess)
*/
@scope("globalThis.navigator.credentials")
external preventSilentAccess: unit => promise<unit> = "preventSilentAccess"
