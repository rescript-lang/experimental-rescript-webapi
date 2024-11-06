open DOMAPI

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before: (characterData, unknown) => unit = "before"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after: (characterData, unknown) => unit = "after"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith: (characterData, unknown) => unit = "replaceWith"

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
external substringData: (characterData, int, int) => string = "substringData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
*/
@send
external appendData: (characterData, string) => unit = "appendData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
*/
@send
external insertData: (characterData, int, string) => unit = "insertData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
*/
@send
external deleteData: (characterData, int, int) => unit = "deleteData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
*/
@send
external replaceData: (characterData, int, int, string) => unit = "replaceData"
