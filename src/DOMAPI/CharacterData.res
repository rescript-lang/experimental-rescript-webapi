open DOMAPI
open EventAPI

include Node.Impl({
  type t = characterData
})

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before: (characterData, node) => unit = "before"

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before2: (characterData, string) => unit = "before"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after: (characterData, node) => unit = "after"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after2: (characterData, string) => unit = "after"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith: (characterData, node) => unit = "replaceWith"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith2: (characterData, string) => unit = "replaceWith"

/**
Removes node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
*/
@send
external remove: characterData => unit = "remove"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/substringData)
*/
@send
external substringData: (characterData, ~offset: int, ~count: int) => string = "substringData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
*/
@send
external appendData: (characterData, string) => unit = "appendData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
*/
@send
external insertData: (characterData, ~offset: int, ~data: string) => unit = "insertData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
*/
@send
external deleteData: (characterData, ~offset: int, ~count: int) => unit = "deleteData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
*/
@send
external replaceData: (characterData, ~offset: int, ~count: int, ~data: string) => unit =
  "replaceData"
