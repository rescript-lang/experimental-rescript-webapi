// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Option from "rescript/lib/es6/Option.js";
import * as Primitive_option from "rescript/lib/es6/Primitive_option.js";

Option.forEach(Primitive_option.fromNullable(document.querySelector("form")), form => {
  form.scrollIntoView({
    behavior: "smooth"
  });
});

/*  Not a pure module */
