/**
Used to represent a set of time ranges, primarily for the purpose of tracking which portions of media have been buffered when loading it for use by the <audio> and <video> elements.
[See TimeRanges on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges)
*/
type t = private {
  /**
    Returns the number of ranges in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/length)
    */
  length: int,
}

/**
Returns the time for the start of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/start)
*/
@throws(JsExn) @send
external start: (t, int) => float = "start"

/**
Returns the time for the end of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/end)
*/
@throws(JsExn) @send
external end: (t, int) => float = "end"
