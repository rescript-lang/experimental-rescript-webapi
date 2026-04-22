let h = WebApi.Fetch.Headers.make()

h->WebApi.Fetch.Headers.set(~name="X-Test", ~value="1")

let h2 = WebApi.Fetch.Headers.fromDict(dict{"X-Vegetable": "Carrot"})

let h3 = WebApi.Fetch.Headers.fromKeyValueArray([("X-Fruit", "Apple"), ("X-Vegetable", "Carrot")])

Console.log(h3->WebApi.Fetch.Headers.get("X-Fruit"))
