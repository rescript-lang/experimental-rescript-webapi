let url = URL.make(~url="/native", ~base="https://example.com")
assert(url->URL.toJSON == "https://example.com/native")
