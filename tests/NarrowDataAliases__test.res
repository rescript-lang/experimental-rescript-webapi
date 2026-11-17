// These equalities must survive the move in both directions.
let touchToPublic = (value: UiEventsTypes.touch): Touch.t => value
let touchFromPublic = (value: Touch.t): UiEventsTypes.touch => value
let listToPublic = (value: UiEventsTypes.touchList): TouchList.t => value
let listFromPublic = (value: TouchList.t): UiEventsTypes.touchList => value
let transferToPublic = (value: UiEventsTypes.dataTransfer): DataTransfer.t => value
let transferFromPublic = (value: DataTransfer.t): UiEventsTypes.dataTransfer => value
let itemToPublic = (value: UiEventsTypes.dataTransferItem): DataTransferItem.t => value
let itemFromPublic = (value: DataTransferItem.t): UiEventsTypes.dataTransferItem => value
let itemsToPublic = (value: UiEventsTypes.dataTransferItemList): DataTransferItemList.t => value
let itemsFromPublic = (value: DataTransferItemList.t): UiEventsTypes.dataTransferItemList => value
let formToPublic = (value: FetchTypes.formData): FormData.t => value
let formFromPublic = (value: FormData.t): FetchTypes.formData => value
let entryToPublic = (value: FetchTypes.formDataEntryValue): FormDataEntryValue.t => value
let entryFromPublic = (value: FormDataEntryValue.t): FetchTypes.formDataEntryValue => value
let initToPublic = (value: UiEventsTypes.touchInit): Touch.init => value
let initFromPublic = (value: Touch.init): UiEventsTypes.touchInit => value
let oldDirect: Touch.touchType = UiEventsTypes.Direct
let oldStylus: Touch.touchType = UiEventsTypes.Stylus
let oldString: FormDataEntryValue.t = FetchTypes.String("string")
let oldFile = (file: DOM.file): FormDataEntryValue.t => FetchTypes.File(file)
let body = (form: FormData.t) => form->BodyInit.fromFormData
let response = (form: FetchTypes.formData) => Response.fromFormData(form)
let input = (event: UiEventsTypes.inputEvent): Null.t<DataTransfer.t> => event.dataTransfer
let touches = (event: UiEventsTypes.touchEvent): TouchList.t => event.touches

let beacon = (navigator: Navigator.t, form: FormData.t) =>
  navigator->Navigator.sendBeacon5(~url="/beacon", ~data=form)
