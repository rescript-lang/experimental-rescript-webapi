let location: Location.t = Location.current

let href = location.href
let host = location.host
let globalHost = Location.host

Location.reload()

ignore(href)
ignore(host)
ignore(globalHost)
