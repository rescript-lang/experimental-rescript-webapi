for i in 0 to DOM.Global.localStorage.length - 1 {
  DOM.Global.localStorage->WebStorage.Storage.key(i)->Null.getOr("nothing")->Console.log
}

let item1 = DOM.Global.localStorage->WebStorage.Storage.getItem("foo")->Null.getOr("nothing")

DOM.Global.localStorage->WebStorage.Storage.setItem(~key="bar", ~value="...")

DOM.Global.localStorage->WebStorage.Storage.removeItem("bar")

DOM.Global.localStorage->WebStorage.Storage.clear
