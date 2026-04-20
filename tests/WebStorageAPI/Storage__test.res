for i in 0 to WebApiDOM.Global.localStorage.length - 1 {
  WebApiDOM.Global.localStorage->WebApiWebStorage.Storage.key(i)->Null.getOr("nothing")->Console.log
}

let item1 =
  WebApiDOM.Global.localStorage->WebApiWebStorage.Storage.getItem("foo")->Null.getOr("nothing")

WebApiDOM.Global.localStorage->WebApiWebStorage.Storage.setItem(~key="bar", ~value="...")

WebApiDOM.Global.localStorage->WebApiWebStorage.Storage.removeItem("bar")

WebApiDOM.Global.localStorage->WebApiWebStorage.Storage.clear
