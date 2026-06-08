type t = DomTypes.svgLength = private {...DomTypes.svgLength}

@send
external newValueSpecifiedUnits: (
  t,
  ~unitType: int,
  ~valueInSpecifiedUnits: float,
) => unit = "newValueSpecifiedUnits"

@send
external convertToSpecifiedUnits: (t, int) => unit = "convertToSpecifiedUnits"
