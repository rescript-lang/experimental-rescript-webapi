# Notes

## Node is a Recursive Type

Looking at the [Node](https://developer.mozilla.org/en-US/docs/Web/API/Node) interface, this type is utilized in properties of Node, such as `firstChild` or `parentNode`. This means that the record type will need to be recursive, at least for `Node`.

```res
type rec node = {
    /**
        https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode
     */
    parentNode: node
}
```

TypeScript has the concepts of `ParentNode` and `ChildNode`. It is unclear if there is value in following this convention.

### Circular dependencies

[window.document](https://developer.mozilla.org/en-US/docs/Web/API/Window/document) means `type document` needs to be known before `type window`.

[Document](https://developer.mozilla.org/en-US/docs/Web/API/Document) inherits from [Node](https://developer.mozilla.org/en-US/docs/Web/API/Node).

[Node.ownerDocument](https://developer.mozilla.org/en-US/docs/Web/API/Node/ownerDocument) returns a `document` from `node` thus creating a loop.

```res
type rec node = {
    ownerDocument: Null.t<document>,
}

and document = {
    ...node
}

and window = {
    document: document;
}

/*
Syntax Errors
[E] Line 10, column 22:
Did you forget a `,` here?
 */
```

Spreading does not work here and duplicating the properties leads to

```res
type rec node = {ownerDocument: Null.t<document>}

and document = {ownerDocument: Null.t<document>}

and window = {document: document}

// Compiled with 1 Warning(s)
// [W] Line 3, column 16:
// the label ownerDocument is defined in both types node and document.
```