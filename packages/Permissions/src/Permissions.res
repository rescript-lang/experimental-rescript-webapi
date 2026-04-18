/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPermissions/query)
*/
@send
external query: (Types.permissions, Types.permissionDescriptor) => promise<Types.permissionStatus> =
  "query"
