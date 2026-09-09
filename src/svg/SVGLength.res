@throws(JsExn) @send
external newValueSpecifiedUnits: (
  SVGElement.svgLength,
  ~unitType: int,
  ~valueInSpecifiedUnits: float,
) => unit = "newValueSpecifiedUnits"

@throws(JsExn) @send
external convertToSpecifiedUnits: (SVGElement.svgLength, int) => unit = "convertToSpecifiedUnits"
