for i in 0 to WebApi.DOM.Global.localStorage.length - 1 {
  WebApi.DOM.Global.localStorage->WebApi.WebStorage.Storage.key(i)->Null.getOr("nothing")->Console.log
}

let item1 =
  WebApi.DOM.Global.localStorage->WebApi.WebStorage.Storage.getItem("foo")->Null.getOr("nothing")

WebApi.DOM.Global.localStorage->WebApi.WebStorage.Storage.setItem(~key="bar", ~value="...")

WebApi.DOM.Global.localStorage->WebApi.WebStorage.Storage.removeItem("bar")

WebApi.DOM.Global.localStorage->WebApi.WebStorage.Storage.clear
