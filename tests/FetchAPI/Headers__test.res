let h = Headers.make()

h->Headers.set(~name="X-Test", ~value="1")
assert(h->Headers.get("x-test")->Null.getOr("") == "1")

let h2 = Headers.fromDict(dict{"X-Vegetable": "Carrot"})
assert(h2->Headers.get("x-vegetable")->Null.getOr("") == "Carrot")

let h3 = Headers.fromKeyValueArray([("X-Fruit", "Apple"), ("X-Vegetable", "Carrot")])
assert(h3->Headers.get("x-fruit")->Null.getOr("") == "Apple")
assert(h3->Headers.has("x-vegetable"))
