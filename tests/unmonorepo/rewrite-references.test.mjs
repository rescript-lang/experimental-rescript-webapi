import test from "node:test";
import assert from "node:assert/strict";
import {
  rewriteSourceText,
  rewriteTestText,
} from "../../scripts/unmonorepo/rewrite-references.mjs";

test("rewrites same-feature references to local modules and external namespaces to dotted names", () => {
  const specs = [
    { publicModule: "DOM", legacyNamespace: "WebApiDOM", internalPrefix: "Dom" },
    { publicModule: "Event", legacyNamespace: "WebApiEvent", internalPrefix: "Event" },
  ];

  assert.equal(
    rewriteSourceText(
      "let target: Types.element = Global.document->WebApiEvent.EventTarget.asEventTarget",
      { currentFeature: "DOM", specs, localLeaves: ["Document", "DomGlobal", "DomTypes"] },
    ),
    "let target: DomTypes.element = DomGlobal.document->Event.EventTarget.asEventTarget",
  );

  assert.equal(
    rewriteSourceText(
      "let target: WebAPI.DOM.Types.element = WebAPI.DOM.Global.document->WebAPI.Event.EventTarget.asEventTarget",
      { currentFeature: "DOM", specs, localLeaves: ["Document", "DomGlobal", "DomTypes"] },
    ),
    "let target: DomTypes.element = DomGlobal.document->Event.EventTarget.asEventTarget",
  );

  assert.equal(
    rewriteSourceText(
      "type t = UrlTypes.urlSearchParams = private {...Types.urlSearchParams}",
      {
        currentFeature: "URL",
        specs: [{ publicModule: "URL", legacyNamespace: "WebApiURL", internalPrefix: "Url" }],
        localLeaves: ["URLSearchParams", "UrlTypes"],
      },
    ),
    "type t = UrlTypes.urlSearchParams = private {...UrlTypes.urlSearchParams}",
  );

  assert.equal(
    rewriteTestText("let x = WebApiDOM.Global.document", specs),
    "let x = DOM.Global.document",
  );
});
