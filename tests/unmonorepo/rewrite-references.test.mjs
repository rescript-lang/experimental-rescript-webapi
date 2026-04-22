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
      "let target: WebApiDOM.Types.element = WebApiDOM.Global.document->WebApiEvent.EventTarget.asEventTarget",
      { currentFeature: "DOM", specs, localLeaves: ["Document", "DomGlobal", "DomTypes"] },
    ),
    "let target: DomTypes.element = DomGlobal.document->WebApi.Event.EventTarget.asEventTarget",
  );

  assert.equal(
    rewriteTestText("let x = WebApiDOM.Global.document", specs),
    "let x = WebApi.DOM.Global.document",
  );
});
