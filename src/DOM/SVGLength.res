@send
external newValueSpecifiedUnits: (
  Types.svgLength,
  ~unitType: int,
  ~valueInSpecifiedUnits: float,
) => unit = "newValueSpecifiedUnits"

@send
external convertToSpecifiedUnits: (Types.svgLength, int) => unit = "convertToSpecifiedUnits"
