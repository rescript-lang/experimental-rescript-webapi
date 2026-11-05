let url = URL.make(~url="/foo", ~base="https://bar.com")
assert(url->URL.toJSON == "https://bar.com/foo")
assert(URL.canParse(~url="/foo", ~base="https://bar.com"))
assert(!URL.canParse(~url="not a URL"))
