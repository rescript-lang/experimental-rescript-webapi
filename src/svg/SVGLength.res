@send
external newValueSpecifiedUnits: (
  SVGElement.svgLength,
  ~unitType: int,
  ~valueInSpecifiedUnits: float,
) => unit = "newValueSpecifiedUnits"

@send
external convertToSpecifiedUnits: (SVGElement.svgLength, int) => unit = "convertToSpecifiedUnits"
