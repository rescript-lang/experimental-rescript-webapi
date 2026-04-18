open PermissionsTypes

type t = PermissionsTypes.permissions = {...PermissionsTypes.permissions}

external current: t = "permissions"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Permissions/query)
*/
@send
external query: (t, permissionDescriptor) => promise<permissionStatus> = "query"
