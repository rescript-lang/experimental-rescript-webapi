let params1 = WebApi.URL.URLSearchParams.fromString("foo=1&bar=2")
params1->WebApi.URL.URLSearchParams.keys->Iterator.toArray->Array.forEach(Console.log)

let params2 = WebApi.URL.URLSearchParams.fromKeyValueArray([("foo", "1"), ("bar", "b")])
params2->WebApi.URL.URLSearchParams.values->Iterator.toArray->Array.forEach(Console.log)

let params3 = WebApi.URL.URLSearchParams.fromDict(dict{"foo": "1", "bar": "b"})
params3
->WebApi.URL.URLSearchParams.entries
->Iterator.toArray
->Array.forEach(((key, value)) => Console.log2(key, value))

let paramStr = params3->WebApi.URL.URLSearchParams.toString
