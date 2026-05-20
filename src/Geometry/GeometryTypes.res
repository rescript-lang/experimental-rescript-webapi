type domRectReadOnly = private {
  x: float,
  y: float,
  width: float,
  height: float,
  top: float,
  right: float,
  bottom: float,
  left: float,
}

type domRect = private {
  ...domRectReadOnly,
}

type domRectList = private {}

type domPointReadOnly = private {
  x: float,
  y: float,
  z: float,
  w: float,
}

type domPoint = private {
  ...domPointReadOnly,
}

type domMatrixReadOnly = private {
  a: float,
  b: float,
  c: float,
  d: float,
  e: float,
  f: float,
  m11: float,
  m12: float,
  m13: float,
  m14: float,
  m21: float,
  m22: float,
  m23: float,
  m24: float,
  m31: float,
  m32: float,
  m33: float,
  m34: float,
  m41: float,
  m42: float,
  m43: float,
  m44: float,
}

type domMatrix = private {
  ...domMatrixReadOnly,
}

type domRectInit = {
  mutable x?: float,
  mutable y?: float,
  mutable width?: float,
  mutable height?: float,
}

type domMatrix2DInit = {
  mutable a?: float,
  mutable b?: float,
  mutable c?: float,
  mutable d?: float,
  mutable e?: float,
  mutable f?: float,
  mutable m11?: float,
  mutable m12?: float,
  mutable m21?: float,
  mutable m22?: float,
  mutable m41?: float,
  mutable m42?: float,
}

type domMatrixInit = {
  ...domMatrix2DInit,
  mutable m13?: float,
  mutable m14?: float,
  mutable m23?: float,
  mutable m24?: float,
  mutable m31?: float,
  mutable m32?: float,
  mutable m33?: float,
  mutable m34?: float,
  mutable m43?: float,
  mutable m44?: float,
  mutable is2D?: bool,
}

type domPointInit = {
  mutable x?: float,
  mutable y?: float,
  mutable z?: float,
  mutable w?: float,
}
