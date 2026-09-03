let describeHidden = (element: HTMLElement.t) =>
  switch element->HTMLElement.hidden {
  | HTMLElement.Visible => "visible"
  | HTMLElement.Hidden => "hidden"
  | HTMLElement.HiddenUntilFound => "hidden until found"
  }

let setHiddenStates = (element: HTMLElement.t) => {
  element->HTMLElement.setHidden(HTMLElement.Hidden)
  element->HTMLElement.setHidden(HTMLElement.HiddenUntilFound)
  element->HTMLElement.setHidden(HTMLElement.Visible)
}

let setRawHiddenValues = (element: HTMLElement.t) => {
  element->HTMLElement.setHiddenRaw(HTMLElement.Boolean(true))
  element->HTMLElement.setHiddenRaw(HTMLElement.Number(0.))
  element->HTMLElement.setHiddenRaw(HTMLElement.String("until-found"))
  element->HTMLElement.setHiddenRaw(HTMLElement.Null)
  element->HTMLElement.setHiddenRaw(HTMLElement.Undefined)
}

let formHidden = (element: HTMLFormElement.t): HTMLElement.hiddenState =>
  element->HTMLFormElement.hidden

let setFormHidden = (element: HTMLFormElement.t) =>
  element->HTMLFormElement.setHidden(HTMLElement.Hidden)

let slotHidden = (element: HTMLSlotElement.t): HTMLElement.hiddenState =>
  element->HTMLSlotElement.hidden

let setSlotHidden = (element: HTMLSlotElement.t) =>
  element->HTMLSlotElement.setHidden(HTMLElement.HiddenUntilFound)

let anchorHidden = (element: HTMLAnchorElement.t): HTMLElement.hiddenState =>
  element->HTMLAnchorElement.hidden

let setAnchorHidden = (element: HTMLAnchorElement.t) =>
  element->HTMLAnchorElement.setHidden(HTMLElement.Visible)
