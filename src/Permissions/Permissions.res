/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Permissions/query)
*/
@scope("globalThis.navigator.permissions")
external query: PermissionsTypes.permissionDescriptor => promise<
  PermissionsTypes.permissionStatus,
> = "query"

module Types = PermissionsTypes
