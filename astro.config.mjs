import { readFileSync } from "node:fs";
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

const starlightPlugin = {
  name: "RescriptAPIDocs",
  hooks: {
    setup: ({ config, updateConfig, addIntegration }) => {
      console.log(`Setup yow!`)
      addIntegration({
        name: "RescriptAPIDocs",
        hooks: {
          "astro:config:setup": ({ injectRoute }) => {
            injectRoute({
              pattern: "meh",
              entrypoint: "docs/apidocs/meh.astro"
            })
          }
        }
      })

      updateConfig({
        sidebar: [
          ...config.sidebar,
          { label: "meh", link: "meh" }
        ]
      });
    }
  }
}

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
      social: {
        github: 'https://github.com/rescript-lang/experimental-rescript-webapi',
      },
      editLink: {
        baseUrl: 'https://github.com/rescript-lang/experimental-rescript-webapi/edit/main/',
      },
      sidebar: [
        {
          slug: '',
        },
        {
          slug: 'design-philosophy',
        },
        {
          slug: 'project-status',
        },
        {
          label: 'Contributing',
          autogenerate: { directory: 'contributing' },
        },
      ],
      customCss: ["./docs/styles/fonts.css", "./docs/styles/theme.css"],
      expressiveCode: {
        shiki: {
          langs: [rescriptTM],
        },
      },
      plugins: [starlightPlugin],
    }),
  ],
});
