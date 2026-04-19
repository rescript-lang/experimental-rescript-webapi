let h = WebApiFetch.Headers.make()

h->WebApiFetch.Headers.set(~name="X-Test", ~value="1")

let h2 = WebApiFetch.Headers.fromDict(dict{"X-Vegetable": "Carrot"})

let h3 = WebApiFetch.Headers.fromKeyValueArray([("X-Fruit", "Apple"), ("X-Vegetable", "Carrot")])

Console.log(h3->WebApiFetch.Headers.get("X-Fruit"))
