open Event
open Permissions

module Permissions = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Permissions/query)
    */
  @send
  external query: (permissions, permissionDescriptor) => Promise.t<permissionStatus> = "query"
}
