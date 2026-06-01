@editor.completeFrom(DOMRectList)
type t = GeometryTypes.domRectList = private {
  ...GeometryTypes.domRectList,
}

@send
external item: (t, int) => GeometryTypes.domRect = "item"
