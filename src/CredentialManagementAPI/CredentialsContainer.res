open CredentialManagementTypes

type t =
  CredentialManagementTypes.credentialsContainer = {
    ...CredentialManagementTypes.credentialsContainer,
  }

external current: t = "credentials"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/get)
*/
@send
external get: (t, ~options: credentialRequestOptions=?) => promise<credential> =
  "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/store)
*/
@send
external store: (t, credential) => promise<unit> = "store"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/create)
*/
@send
external create: (
  t,
  ~options: credentialCreationOptions=?,
) => promise<credential> = "create"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/preventSilentAccess)
*/
@send
external preventSilentAccess: t => promise<unit> = "preventSilentAccess"
