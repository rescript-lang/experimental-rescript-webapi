# experimental-rescript-webapi
Experimental successor to rescript-webapi

## New approach to webapi bindings (TODO)

1. Find out if it is possible to adapt https://github.com/microsoft/TypeScript-DOM-lib-generator to output `.res` files
  - One example output is here: https://github.com/microsoft/TypeScript/blob/main/src/lib/dom.generated.d.ts
2. Try to type most things with records with which we can model inheritance, but for readability and performance's sake it will be better to keep type spread and the necessity for coercion at a minimum and rather duplicate field names (which should not be a problem when everything is generated) as well as identity functions (coercion can be expensive with big record fields).
3. 80/20 approach, we want to model the more common APIs in a way so that they are delightful to use while the more obscure ones can be harder to use, but those should still be documented well.
4. In essence, we apply the rescript-core way of doing things here once again, so doc tests can be implemented as well.
