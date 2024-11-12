import { readFileSync } from "node:fs";
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

const rescriptTM = JSON.parse(
  readFileSync("./docs/assets/rescript.tmLanguage.json", "utf-8"),
);

export default defineConfig({
  srcDir: "docs",
  publicDir: "docs/public",
  site: "https://rescript-lang.github.io",
  base: "experimental-rescript-webapi",
  integrations: [
    starlight({
      title: "Experimental WebAPI",
      logo: {
        src: "./docs/assets/rescript-logo.svg",
      },
      customCss: ["./docs/styles/fonts.css", "./docs/styles/theme.css"],
      expressiveCode: {
        shiki: {
          langs: [rescriptTM],
        },
      },
    }),
  ],
});
