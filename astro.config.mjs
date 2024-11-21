import { readFileSync } from "node:fs";
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";
import { apiModules } from "./docs/pages/apidocs/utils";

const rescriptTM = JSON.parse(
  readFileSync("./docs/assets/rescript.tmLanguage.json", "utf-8"),
);

const apiSidebarItems = apiModules.map(({ moduleName, link }) => ({
  label: moduleName,
  link,
}));

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
      social: {
        github: "https://github.com/rescript-lang/experimental-rescript-webapi",
      },
      editLink: {
        baseUrl:
          "https://github.com/rescript-lang/experimental-rescript-webapi/edit/main/",
      },
      sidebar: [
        {
          slug: "",
        },
        {
          slug: "design-philosophy",
        },
        {
          slug: "project-status",
        },
        {
          label: "Contributing",
          autogenerate: { directory: "contributing" },
        },
        {
          label: "API Documentation",
          collapsed: true,
          items: [
            {
              label: "Overview",
              link: "apidocs",
            },
            ...apiSidebarItems,
          ],
        },
      ],
      customCss: ["./docs/styles/fonts.css", "./docs/styles/theme.css"],
      expressiveCode: {
        shiki: {
          langs: [rescriptTM],
        },
      },
    }),
  ],
});
