/**
The absolute URL of the script executed by a worker.
[See WorkerLocation on MDN](https://developer.mozilla.org/docs/Web/API/WorkerLocation)
*/
type t = private {
  href: string,
  origin: string,
  protocol: string,
  host: string,
  hostname: string,
  port: string,
  pathname: string,
  search: string,
  hash: string,
}

@send
external toString: t => string = "toString"
