type t = DOMTypes.timeRanges = private {...DOMTypes.timeRanges}

/**
Returns the time for the start of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/start)
*/
@send
external start: (t, int) => float = "start"

/**
Returns the time for the end of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/end)
*/
@send
external end: (t, int) => float = "end"
