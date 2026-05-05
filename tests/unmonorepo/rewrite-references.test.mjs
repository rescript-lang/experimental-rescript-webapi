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
    { publicModule: "URL", legacyNamespace: "WebApiURL", internalPrefix: "Url" },
  ];
  const leavesByFeature = new Map([
    ["DOM", ["Document", "DomGlobal", "DomTypes"]],
    ["Event", ["Event", "EventTarget", "EventTypes"]],
    ["URL", ["URL", "URLSearchParams", "UrlTypes"]],
  ]);

  assert.equal(
    rewriteSourceText(
      "let target: Types.element = Global.document->WebApiEvent.EventTarget.asEventTarget",
      { currentFeature: "DOM", specs, localLeaves: ["Document", "DomGlobal", "DomTypes"], leavesByFeature },
    ),
    "let target: DomTypes.element = DomGlobal.document->EventTarget.asEventTarget",
  );

  assert.equal(
    rewriteSourceText(
      "let target: WebAPI.DOM.Types.element = WebAPI.DOM.Global.document->WebAPI.Event.EventTarget.asEventTarget",
      { currentFeature: "DOM", specs, localLeaves: ["Document", "DomGlobal", "DomTypes"], leavesByFeature },
    ),
    "let target: DomTypes.element = DomGlobal.document->EventTarget.asEventTarget",
  );

  assert.equal(
    rewriteSourceText(
      "type t = UrlTypes.urlSearchParams = private {...Types.urlSearchParams}",
      {
        currentFeature: "URL",
        specs,
        localLeaves: ["URLSearchParams", "UrlTypes"],
        leavesByFeature,
      },
    ),
    "type t = UrlTypes.urlSearchParams = private {...UrlTypes.urlSearchParams}",
  );

  assert.equal(
    rewriteTestText("let x = WebApiDOM.Global.document", specs, leavesByFeature),
    "let x = DomGlobal.document",
  );
});
