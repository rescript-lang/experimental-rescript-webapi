let h = Fetch.Headers.make()

h->Fetch.Headers.set(~name="X-Test", ~value="1")

let h2 = Fetch.Headers.fromDict(dict{"X-Vegetable": "Carrot"})

let h3 = Fetch.Headers.fromKeyValueArray([("X-Fruit", "Apple"), ("X-Vegetable", "Carrot")])

Console.log(h3->Fetch.Headers.get("X-Fruit"))
