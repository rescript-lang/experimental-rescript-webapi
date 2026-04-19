let params1 = WebApiURL.URLSearchParams.fromString("foo=1&bar=2")
params1->WebApiURL.URLSearchParams.keys->Iterator.toArray->Array.forEach(Console.log)

let params2 = WebApiURL.URLSearchParams.fromKeyValueArray([("foo", "1"), ("bar", "b")])
params2->WebApiURL.URLSearchParams.values->Iterator.toArray->Array.forEach(Console.log)

let params3 = WebApiURL.URLSearchParams.fromDict(dict{"foo": "1", "bar": "b"})
params3
->WebApiURL.URLSearchParams.entries
->Iterator.toArray
->Array.forEach(((key, value)) => Console.log2(key, value))

let paramStr = params3->WebApiURL.URLSearchParams.toString
