let params1 = URLSearchParams.fromString("foo=1&bar=2")
params1->URLSearchParams.keys->Array.fromIterable->Array.forEach(Console.log)

let params2 = URLSearchParams.fromKeyValueArray([("foo", "1"), ("bar", "b")])
params2->URLSearchParams.values->Array.fromIterable->Array.forEach(Console.log)

let params3 = URLSearchParams.fromDict(dict{"foo": "1", "bar": "b"})
assert(params3->URLSearchParams.get("foo")->Null.getOr("") == "1")
assert(params3->URLSearchParams.has(~name="bar"))
let paramStr = params3->URLSearchParams.toString
assert(paramStr == "foo=1&bar=b" || paramStr == "bar=b&foo=1")
