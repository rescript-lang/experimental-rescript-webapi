for i in 0 to LocalStorage.length - 1 {
  LocalStorage.key(i)->Null.getOr("nothing")->Console.log
}

let item1 = LocalStorage.getItem("foo")->Null.getOr("nothing")

LocalStorage.setItem(~key="bar", ~value="...")

LocalStorage.removeItem("bar")

LocalStorage.clear()

SessionStorage.setItem(~key="session", ~value="...")

let sessionItem = SessionStorage.getItem("session")->Null.getOr("nothing")

SessionStorage.removeItem("session")
