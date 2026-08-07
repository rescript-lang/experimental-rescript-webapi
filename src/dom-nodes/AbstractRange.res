/**
[See AbstractRange on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange)
*/
type t = {
  /**
    Returns range's start node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startContainer)
    */
  startContainer: DOMTree.node,
  /**
    Returns range's start offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startOffset)
    */
  startOffset: int,
  /**
    Returns range's end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endContainer)
    */
  endContainer: DOMTree.node,
  /**
    Returns range's end offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endOffset)
    */
  endOffset: int,
  /**
    Returns true if range is collapsed, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/collapsed)
    */
  collapsed: bool,
}
