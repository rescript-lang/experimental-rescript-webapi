/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/get)
*/
@send
external get: (
  Types.credentialsContainer,
  ~options: Types.credentialRequestOptions=?,
) => promise<Types.credential> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/store)
*/
@send
external store: (Types.credentialsContainer, Types.credential) => promise<unit> = "store"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/create)
*/
@send
external create: (
  Types.credentialsContainer,
  ~options: Types.credentialCreationOptions=?,
) => promise<Types.credential> = "create"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/preventSilentAccess)
*/
@send
external preventSilentAccess: Types.credentialsContainer => promise<unit> = "preventSilentAccess"
