type t = DOMTypes.svgLength = private {...DOMTypes.svgLength}

@send
external newValueSpecifiedUnits: (t, ~unitType: int, ~valueInSpecifiedUnits: float) => unit =
  "newValueSpecifiedUnits"

@send
external convertToSpecifiedUnits: (t, int) => unit = "convertToSpecifiedUnits"
