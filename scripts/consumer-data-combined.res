let data = (): WebAPI.DataTransfer.t => WebAPI.DataTransfer.make()
let touch = (list: WebAPI.TouchList.t) => list->WebAPI.TouchList.item(0)
let form = (): WebAPI.FormData.t => WebAPI.FormData.make()
let location = (location: WebAPI.Location.t) => location.pathname
let history = (history: WebAPI.History.t) => history.state
let element = (element: WebAPI.DOMTree.element) => element
