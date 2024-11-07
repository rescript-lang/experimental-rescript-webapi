open CredentialManagementAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/get)
*/
@send
external get: (
  credentialsContainer,
  ~options: credentialRequestOptions=?,
) => Promise.t<credential> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/store)
*/
@send
external store: (credentialsContainer, credential) => Promise.t<unit> = "store"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/create)
*/
@send
external create: (
  credentialsContainer,
  ~options: credentialCreationOptions=?,
) => Promise.t<credential> = "create"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/preventSilentAccess)
*/
@send
external preventSilentAccess: credentialsContainer => Promise.t<unit> = "preventSilentAccess"
